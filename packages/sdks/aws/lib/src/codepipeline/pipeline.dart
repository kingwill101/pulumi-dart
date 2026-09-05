import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_args.dart';
import 'pipeline_artifact_store.dart';
import 'pipeline_stage.dart';
import 'pipeline_state.dart';
import 'pipeline_trigger.dart';
import 'pipeline_trigger_all.dart';
import 'pipeline_variable.dart';

/// Provides a CodePipeline.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codestarconnections.Connection("example", {
///     name: "example-connection",
///     providerType: "GitHub",
/// });
/// const codepipelineBucket = new aws.s3.Bucket("codepipeline_bucket", {bucket: "test-bucket"});
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["codepipeline.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const codepipelineRole = new aws.iam.Role("codepipeline_role", {
///     name: "test-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const s3kmskey = aws.kms.getAlias({
///     name: "alias/myKmsKey",
/// });
/// const codepipeline = new aws.codepipeline.Pipeline("codepipeline", {
///     artifactStores: [{
///         encryptionKey: {
///             id: s3kmskey.then(s3kmskey => s3kmskey.arn),
///             type: "KMS",
///         },
///         location: codepipelineBucket.bucket,
///         type: "S3",
///     }],
///     stages: [
///         {
///             actions: [{
///                 name: "Source",
///                 category: "Source",
///                 owner: "AWS",
///                 provider: "CodeStarSourceConnection",
///                 version: "1",
///                 outputArtifacts: ["source_output"],
///                 configuration: {
///                     ConnectionArn: example.arn,
///                     FullRepositoryId: "my-organization/example",
///                     BranchName: "main",
///                 },
///             }],
///             name: "Source",
///         },
///         {
///             actions: [{
///                 name: "Build",
///                 category: "Build",
///                 owner: "AWS",
///                 provider: "CodeBuild",
///                 inputArtifacts: ["source_output"],
///                 outputArtifacts: ["build_output"],
///                 version: "1",
///                 configuration: {
///                     ProjectName: "test",
///                 },
///             }],
///             name: "Build",
///         },
///         {
///             actions: [{
///                 name: "Deploy",
///                 category: "Deploy",
///                 owner: "AWS",
///                 provider: "CloudFormation",
///                 inputArtifacts: ["build_output"],
///                 version: "1",
///                 configuration: {
///                     ActionMode: "REPLACE_ON_FAILURE",
///                     Capabilities: "CAPABILITY_AUTO_EXPAND,CAPABILITY_IAM",
///                     OutputFileName: "CreateStackOutput.json",
///                     StackName: "MyStack",
///                     TemplatePath: "build_output::sam-templated.yaml",
///                 },
///             }],
///             name: "Deploy",
///         },
///     ],
///     name: "tf-test-pipeline",
///     roleArn: codepipelineRole.arn,
/// });
/// const codepipelineBucketPab = new aws.s3.BucketPublicAccessBlock("codepipeline_bucket_pab", {
///     bucket: codepipelineBucket.id,
///     blockPublicAcls: true,
///     blockPublicPolicy: true,
///     ignorePublicAcls: true,
///     restrictPublicBuckets: true,
/// });
/// const codepipelinePolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             effect: "Allow",
///             actions: [
///                 "s3:GetObject",
///                 "s3:GetObjectVersion",
///                 "s3:GetBucketVersioning",
///                 "s3:PutObjectAcl",
///                 "s3:PutObject",
///             ],
///             resources: [
///                 codepipelineBucket.arn,
///                 pulumi.interpolate`${codepipelineBucket.arn}/*`,
///             ],
///         },
///         {
///             effect: "Allow",
///             actions: ["codestar-connections:UseConnection"],
///             resources: [example.arn],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "codebuild:BatchGetBuilds",
///                 "codebuild:StartBuild",
///             ],
///             resources: ["*"],
///         },
///     ],
/// });
/// const codepipelinePolicyRolePolicy = new aws.iam.RolePolicy("codepipeline_policy", {
///     name: "codepipeline_policy",
///     role: codepipelineRole.id,
///     policy: codepipelinePolicy.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codestarconnections.Connection("example",
///     name="example-connection",
///     provider_type="GitHub")
/// codepipeline_bucket = aws.s3.Bucket("codepipeline_bucket", bucket="test-bucket")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["codepipeline.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// codepipeline_role = aws.iam.Role("codepipeline_role",
///     name="test-role",
///     assume_role_policy=assume_role.json)
/// s3kmskey = aws.kms.get_alias(name="alias/myKmsKey")
/// codepipeline = aws.codepipeline.Pipeline("codepipeline",
///     artifact_stores=[{
///         "encryption_key": {
///             "id": s3kmskey.arn,
///             "type": "KMS",
///         },
///         "location": codepipeline_bucket.bucket,
///         "type": "S3",
///     }],
///     stages=[
///         {
///             "actions": [{
///                 "name": "Source",
///                 "category": "Source",
///                 "owner": "AWS",
///                 "provider": "CodeStarSourceConnection",
///                 "version": "1",
///                 "output_artifacts": ["source_output"],
///                 "configuration": {
///                     "ConnectionArn": example.arn,
///                     "FullRepositoryId": "my-organization/example",
///                     "BranchName": "main",
///                 },
///             }],
///             "name": "Source",
///         },
///         {
///             "actions": [{
///                 "name": "Build",
///                 "category": "Build",
///                 "owner": "AWS",
///                 "provider": "CodeBuild",
///                 "input_artifacts": ["source_output"],
///                 "output_artifacts": ["build_output"],
///                 "version": "1",
///                 "configuration": {
///                     "ProjectName": "test",
///                 },
///             }],
///             "name": "Build",
///         },
///         {
///             "actions": [{
///                 "name": "Deploy",
///                 "category": "Deploy",
///                 "owner": "AWS",
///                 "provider": "CloudFormation",
///                 "input_artifacts": ["build_output"],
///                 "version": "1",
///                 "configuration": {
///                     "ActionMode": "REPLACE_ON_FAILURE",
///                     "Capabilities": "CAPABILITY_AUTO_EXPAND,CAPABILITY_IAM",
///                     "OutputFileName": "CreateStackOutput.json",
///                     "StackName": "MyStack",
///                     "TemplatePath": "build_output::sam-templated.yaml",
///                 },
///             }],
///             "name": "Deploy",
///         },
///     ],
///     name="tf-test-pipeline",
///     role_arn=codepipeline_role.arn)
/// codepipeline_bucket_pab = aws.s3.BucketPublicAccessBlock("codepipeline_bucket_pab",
///     bucket=codepipeline_bucket.id,
///     block_public_acls=True,
///     block_public_policy=True,
///     ignore_public_acls=True,
///     restrict_public_buckets=True)
/// codepipeline_policy = aws.iam.get_policy_document_output(statements=[
///     {
///         "effect": "Allow",
///         "actions": [
///             "s3:GetObject",
///             "s3:GetObjectVersion",
///             "s3:GetBucketVersioning",
///             "s3:PutObjectAcl",
///             "s3:PutObject",
///         ],
///         "resources": [
///             codepipeline_bucket.arn,
///             codepipeline_bucket.arn.apply(lambda arn: f"{arn}/*"),
///         ],
///     },
///     {
///         "effect": "Allow",
///         "actions": ["codestar-connections:UseConnection"],
///         "resources": [example.arn],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "codebuild:BatchGetBuilds",
///             "codebuild:StartBuild",
///         ],
///         "resources": ["*"],
///     },
/// ])
/// codepipeline_policy_role_policy = aws.iam.RolePolicy("codepipeline_policy",
///     name="codepipeline_policy",
///     role=codepipeline_role.id,
///     policy=codepipeline_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeStarConnections.Connection("example", new()
///     {
///         Name = "example-connection",
///         ProviderType = "GitHub",
///     });
///
///     var codepipelineBucket = new Aws.S3.Bucket("codepipeline_bucket", new()
///     {
///         BucketName = "test-bucket",
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "codepipeline.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var codepipelineRole = new Aws.Iam.Role("codepipeline_role", new()
///     {
///         Name = "test-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var s3kmskey = Aws.Kms.GetAlias.Invoke(new()
///     {
///         Name = "alias/myKmsKey",
///     });
///
///     var codepipeline = new Aws.CodePipeline.Pipeline("codepipeline", new()
///     {
///         ArtifactStores = new[]
///         {
///             new Aws.CodePipeline.Inputs.PipelineArtifactStoreArgs
///             {
///                 EncryptionKey = new Aws.CodePipeline.Inputs.PipelineArtifactStoreEncryptionKeyArgs
///                 {
///                     Id = s3kmskey.Apply(getAliasResult => getAliasResult.Arn),
///                     Type = "KMS",
///                 },
///                 Location = codepipelineBucket.BucketName,
///                 Type = "S3",
///             },
///         },
///         Stages = new[]
///         {
///             new Aws.CodePipeline.Inputs.PipelineStageArgs
///             {
///                 Actions = new[]
///                 {
///                     new Aws.CodePipeline.Inputs.PipelineStageActionArgs
///                     {
///                         Name = "Source",
///                         Category = "Source",
///                         Owner = "AWS",
///                         Provider = "CodeStarSourceConnection",
///                         Version = "1",
///                         OutputArtifacts = new[]
///                         {
///                             "source_output",
///                         },
///                         Configuration =
///                         {
///                             { "ConnectionArn", example.Arn },
///                             { "FullRepositoryId", "my-organization/example" },
///                             { "BranchName", "main" },
///                         },
///                     },
///                 },
///                 Name = "Source",
///             },
///             new Aws.CodePipeline.Inputs.PipelineStageArgs
///             {
///                 Actions = new[]
///                 {
///                     new Aws.CodePipeline.Inputs.PipelineStageActionArgs
///                     {
///                         Name = "Build",
///                         Category = "Build",
///                         Owner = "AWS",
///                         Provider = "CodeBuild",
///                         InputArtifacts = new[]
///                         {
///                             "source_output",
///                         },
///                         OutputArtifacts = new[]
///                         {
///                             "build_output",
///                         },
///                         Version = "1",
///                         Configuration =
///                         {
///                             { "ProjectName", "test" },
///                         },
///                     },
///                 },
///                 Name = "Build",
///             },
///             new Aws.CodePipeline.Inputs.PipelineStageArgs
///             {
///                 Actions = new[]
///                 {
///                     new Aws.CodePipeline.Inputs.PipelineStageActionArgs
///                     {
///                         Name = "Deploy",
///                         Category = "Deploy",
///                         Owner = "AWS",
///                         Provider = "CloudFormation",
///                         InputArtifacts = new[]
///                         {
///                             "build_output",
///                         },
///                         Version = "1",
///                         Configuration =
///                         {
///                             { "ActionMode", "REPLACE_ON_FAILURE" },
///                             { "Capabilities", "CAPABILITY_AUTO_EXPAND,CAPABILITY_IAM" },
///                             { "OutputFileName", "CreateStackOutput.json" },
///                             { "StackName", "MyStack" },
///                             { "TemplatePath", "build_output::sam-templated.yaml" },
///                         },
///                     },
///                 },
///                 Name = "Deploy",
///             },
///         },
///         Name = "tf-test-pipeline",
///         RoleArn = codepipelineRole.Arn,
///     });
///
///     var codepipelineBucketPab = new Aws.S3.BucketPublicAccessBlock("codepipeline_bucket_pab", new()
///     {
///         Bucket = codepipelineBucket.Id,
///         BlockPublicAcls = true,
///         BlockPublicPolicy = true,
///         IgnorePublicAcls = true,
///         RestrictPublicBuckets = true,
///     });
///
///     var codepipelinePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetObject",
///                     "s3:GetObjectVersion",
///                     "s3:GetBucketVersioning",
///                     "s3:PutObjectAcl",
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     codepipelineBucket.Arn,
///                     $"{codepipelineBucket.Arn}/*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "codestar-connections:UseConnection",
///                 },
///                 Resources = new[]
///                 {
///                     example.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "codebuild:BatchGetBuilds",
///                     "codebuild:StartBuild",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var codepipelinePolicyRolePolicy = new Aws.Iam.RolePolicy("codepipeline_policy", new()
///     {
///         Name = "codepipeline_policy",
///         Role = codepipelineRole.Id,
///         Policy = codepipelinePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codepipeline"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codestarconnections"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := codestarconnections.NewConnection(ctx, "example", &codestarconnections.ConnectionArgs{
/// 			Name:         pulumi.String("example-connection"),
/// 			ProviderType: pulumi.String("GitHub"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		codepipelineBucket, err := s3.NewBucket(ctx, "codepipeline_bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("test-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"codepipeline.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		codepipelineRole, err := iam.NewRole(ctx, "codepipeline_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("test-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		s3kmskey, err := kms.LookupAlias(ctx, &kms.LookupAliasArgs{
/// 			Name: "alias/myKmsKey",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codepipeline.NewPipeline(ctx, "codepipeline", &codepipeline.PipelineArgs{
/// 			ArtifactStores: codepipeline.PipelineArtifactStoreArray{
/// 				&codepipeline.PipelineArtifactStoreArgs{
/// 					EncryptionKey: &codepipeline.PipelineArtifactStoreEncryptionKeyArgs{
/// 						Id:   pulumi.String(s3kmskey.Arn),
/// 						Type: pulumi.String("KMS"),
/// 					},
/// 					Location: codepipelineBucket.Bucket,
/// 					Type:     pulumi.String("S3"),
/// 				},
/// 			},
/// 			Stages: codepipeline.PipelineStageArray{
/// 				&codepipeline.PipelineStageArgs{
/// 					Actions: codepipeline.PipelineStageActionArray{
/// 						&codepipeline.PipelineStageActionArgs{
/// 							Name:     pulumi.String("Source"),
/// 							Category: pulumi.String("Source"),
/// 							Owner:    pulumi.String("AWS"),
/// 							Provider: pulumi.String("CodeStarSourceConnection"),
/// 							Version:  pulumi.String("1"),
/// 							OutputArtifacts: pulumi.StringArray{
/// 								pulumi.String("source_output"),
/// 							},
/// 							Configuration: pulumi.StringMap{
/// 								"ConnectionArn":    example.Arn,
/// 								"FullRepositoryId": pulumi.String("my-organization/example"),
/// 								"BranchName":       pulumi.String("main"),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("Source"),
/// 				},
/// 				&codepipeline.PipelineStageArgs{
/// 					Actions: codepipeline.PipelineStageActionArray{
/// 						&codepipeline.PipelineStageActionArgs{
/// 							Name:     pulumi.String("Build"),
/// 							Category: pulumi.String("Build"),
/// 							Owner:    pulumi.String("AWS"),
/// 							Provider: pulumi.String("CodeBuild"),
/// 							InputArtifacts: pulumi.StringArray{
/// 								pulumi.String("source_output"),
/// 							},
/// 							OutputArtifacts: pulumi.StringArray{
/// 								pulumi.String("build_output"),
/// 							},
/// 							Version: pulumi.String("1"),
/// 							Configuration: pulumi.StringMap{
/// 								"ProjectName": pulumi.String("test"),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("Build"),
/// 				},
/// 				&codepipeline.PipelineStageArgs{
/// 					Actions: codepipeline.PipelineStageActionArray{
/// 						&codepipeline.PipelineStageActionArgs{
/// 							Name:     pulumi.String("Deploy"),
/// 							Category: pulumi.String("Deploy"),
/// 							Owner:    pulumi.String("AWS"),
/// 							Provider: pulumi.String("CloudFormation"),
/// 							InputArtifacts: pulumi.StringArray{
/// 								pulumi.String("build_output"),
/// 							},
/// 							Version: pulumi.String("1"),
/// 							Configuration: pulumi.StringMap{
/// 								"ActionMode":     pulumi.String("REPLACE_ON_FAILURE"),
/// 								"Capabilities":   pulumi.String("CAPABILITY_AUTO_EXPAND,CAPABILITY_IAM"),
/// 								"OutputFileName": pulumi.String("CreateStackOutput.json"),
/// 								"StackName":      pulumi.String("MyStack"),
/// 								"TemplatePath":   pulumi.String("build_output::sam-templated.yaml"),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("Deploy"),
/// 				},
/// 			},
/// 			Name:    pulumi.String("tf-test-pipeline"),
/// 			RoleArn: codepipelineRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketPublicAccessBlock(ctx, "codepipeline_bucket_pab", &s3.BucketPublicAccessBlockArgs{
/// 			Bucket:                codepipelineBucket.ID().ToIDOutput().ToStringOutput(),
/// 			BlockPublicAcls:       pulumi.Bool(true),
/// 			BlockPublicPolicy:     pulumi.Bool(true),
/// 			IgnorePublicAcls:      pulumi.Bool(true),
/// 			RestrictPublicBuckets: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		codepipelinePolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetObject"),
/// 						pulumi.String("s3:GetObjectVersion"),
/// 						pulumi.String("s3:GetBucketVersioning"),
/// 						pulumi.String("s3:PutObjectAcl"),
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						codepipelineBucket.Arn,
/// 						codepipelineBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("codestar-connections:UseConnection"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						example.Arn,
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("codebuild:BatchGetBuilds"),
/// 						pulumi.String("codebuild:StartBuild"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "codepipeline_policy", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("codepipeline_policy"),
/// 			Role:   codepipelineRole.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: codepipelinePolicy.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["codepipeline.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "codepipelinePolicy" {
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:GetObject", "s3:GetObjectVersion", "s3:GetBucketVersioning", "s3:PutObjectAcl", "s3:PutObject"]
///     resources = [aws_s3_bucket.codepipeline_bucket.arn, "${aws_s3_bucket.codepipeline_bucket.arn}/*"]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["codestar-connections:UseConnection"]
///     resources = [aws_codestarconnections_connection.example.arn]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["codebuild:BatchGetBuilds", "codebuild:StartBuild"]
///     resources = ["*"]
///   }
/// }
/// data "aws_kms_getalias" "s3kmskey" {
///   name = "alias/myKmsKey"
/// }
///
/// resource "aws_codepipeline_pipeline" "codepipeline" {
///   artifact_stores {
///     encryption_key = {
///       id   = data.aws_kms_getalias.s3kmskey.arn
///       type = "KMS"
///     }
///     location = aws_s3_bucket.codepipeline_bucket.bucket
///     type     = "S3"
///   }
///   stages {
///     actions {
///       name             = "Source"
///       category         = "Source"
///       owner            = "AWS"
///       provider         = "CodeStarSourceConnection"
///       version          = "1"
///       output_artifacts = ["source_output"]
///       configuration = {
///         "ConnectionArn"    = aws_codestarconnections_connection.example.arn
///         "FullRepositoryId" = "my-organization/example"
///         "BranchName"       = "main"
///       }
///     }
///     name = "Source"
///   }
///   stages {
///     actions {
///       name             = "Build"
///       category         = "Build"
///       owner            = "AWS"
///       provider         = "CodeBuild"
///       input_artifacts  = ["source_output"]
///       output_artifacts = ["build_output"]
///       version          = "1"
///       configuration = {
///         "ProjectName" = "test"
///       }
///     }
///     name = "Build"
///   }
///   stages {
///     actions {
///       name            = "Deploy"
///       category        = "Deploy"
///       owner           = "AWS"
///       provider        = "CloudFormation"
///       input_artifacts = ["build_output"]
///       version         = "1"
///       configuration = {
///         "ActionMode"     = "REPLACE_ON_FAILURE"
///         "Capabilities"   = "CAPABILITY_AUTO_EXPAND,CAPABILITY_IAM"
///         "OutputFileName" = "CreateStackOutput.json"
///         "StackName"      = "MyStack"
///         "TemplatePath"   = "build_output::sam-templated.yaml"
///       }
///     }
///     name = "Deploy"
///   }
///   name     = "tf-test-pipeline"
///   role_arn = aws_iam_role.codepipeline_role.arn
/// }
/// resource "aws_codestarconnections_connection" "example" {
///   name          = "example-connection"
///   provider_type = "GitHub"
/// }
/// resource "aws_s3_bucket" "codepipeline_bucket" {
///   bucket = "test-bucket"
/// }
/// resource "aws_s3_bucketpublicaccessblock" "codepipeline_bucket_pab" {
///   bucket                  = aws_s3_bucket.codepipeline_bucket.id
///   block_public_acls       = true
///   block_public_policy     = true
///   ignore_public_acls      = true
///   restrict_public_buckets = true
/// }
/// resource "aws_iam_role" "codepipeline_role" {
///   name               = "test-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "codepipeline_policy" {
///   name   = "codepipeline_policy"
///   role   = aws_iam_role.codepipeline_role.id
///   policy = data.aws_iam_getpolicydocument.codepipelinePolicy.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codestarconnections.Connection;
/// import com.pulumi.aws.codestarconnections.ConnectionArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetAliasArgs;
/// import com.pulumi.aws.codepipeline.Pipeline;
/// import com.pulumi.aws.codepipeline.PipelineArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineArtifactStoreArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineArtifactStoreEncryptionKeyArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineStageArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineStageActionArgs;
/// import com.pulumi.aws.s3.BucketPublicAccessBlock;
/// import com.pulumi.aws.s3.BucketPublicAccessBlockArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Connection("example", ConnectionArgs.builder()
///             .name("example-connection")
///             .providerType("GitHub")
///             .build());
///
///         var codepipelineBucket = new Bucket("codepipelineBucket", BucketArgs.builder()
///             .bucket("test-bucket")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("codepipeline.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var codepipelineRole = new Role("codepipelineRole", RoleArgs.builder()
///             .name("test-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var s3kmskey = KmsFunctions.getAlias(GetAliasArgs.builder()
///             .name("alias/myKmsKey")
///             .build());
///
///         var codepipeline = new Pipeline("codepipeline", PipelineArgs.builder()
///             .artifactStores(PipelineArtifactStoreArgs.builder()
///                 .encryptionKey(PipelineArtifactStoreEncryptionKeyArgs.builder()
///                     .id(s3kmskey.arn())
///                     .type("KMS")
///                     .build())
///                 .location(codepipelineBucket.bucket())
///                 .type("S3")
///                 .build())
///             .stages(
///                 PipelineStageArgs.builder()
///                     .actions(PipelineStageActionArgs.builder()
///                         .name("Source")
///                         .category("Source")
///                         .owner("AWS")
///                         .provider("CodeStarSourceConnection")
///                         .version("1")
///                         .outputArtifacts("source_output")
///                         .configuration(Map.ofEntries(
///                             Map.entry("ConnectionArn", example.arn()),
///                             Map.entry("FullRepositoryId", "my-organization/example"),
///                             Map.entry("BranchName", "main")
///                         ))
///                         .build())
///                     .name("Source")
///                     .build(),
///                 PipelineStageArgs.builder()
///                     .actions(PipelineStageActionArgs.builder()
///                         .name("Build")
///                         .category("Build")
///                         .owner("AWS")
///                         .provider("CodeBuild")
///                         .inputArtifacts("source_output")
///                         .outputArtifacts("build_output")
///                         .version("1")
///                         .configuration(Map.of("ProjectName", "test"))
///                         .build())
///                     .name("Build")
///                     .build(),
///                 PipelineStageArgs.builder()
///                     .actions(PipelineStageActionArgs.builder()
///                         .name("Deploy")
///                         .category("Deploy")
///                         .owner("AWS")
///                         .provider("CloudFormation")
///                         .inputArtifacts("build_output")
///                         .version("1")
///                         .configuration(Map.ofEntries(
///                             Map.entry("ActionMode", "REPLACE_ON_FAILURE"),
///                             Map.entry("Capabilities", "CAPABILITY_AUTO_EXPAND,CAPABILITY_IAM"),
///                             Map.entry("OutputFileName", "CreateStackOutput.json"),
///                             Map.entry("StackName", "MyStack"),
///                             Map.entry("TemplatePath", "build_output::sam-templated.yaml")
///                         ))
///                         .build())
///                     .name("Deploy")
///                     .build())
///             .name("tf-test-pipeline")
///             .roleArn(codepipelineRole.arn())
///             .build());
///
///         var codepipelineBucketPab = new BucketPublicAccessBlock("codepipelineBucketPab", BucketPublicAccessBlockArgs.builder()
///             .bucket(codepipelineBucket.id())
///             .blockPublicAcls(true)
///             .blockPublicPolicy(true)
///             .ignorePublicAcls(true)
///             .restrictPublicBuckets(true)
///             .build());
///
///         final var codepipelinePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "s3:GetObject",
///                         "s3:GetObjectVersion",
///                         "s3:GetBucketVersioning",
///                         "s3:PutObjectAcl",
///                         "s3:PutObject")
///                     .resources(
///                         codepipelineBucket.arn(),
///                         codepipelineBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("codestar-connections:UseConnection")
///                     .resources(example.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "codebuild:BatchGetBuilds",
///                         "codebuild:StartBuild")
///                     .resources("*")
///                     .build())
///             .build());
///
///         var codepipelinePolicyRolePolicy = new RolePolicy("codepipelinePolicyRolePolicy", RolePolicyArgs.builder()
///             .name("codepipeline_policy")
///             .role(codepipelineRole.id())
///             .policy(codepipelinePolicy.applyValue(_codepipelinePolicy -> _codepipelinePolicy.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   codepipeline:
///     type: aws:codepipeline:Pipeline
///     properties:
///       artifactStores:
///         - encryptionKey:
///             id: ${s3kmskey.arn}
///             type: KMS
///           location: ${codepipelineBucket.bucket}
///           type: S3
///       stages:
///         - actions:
///             - name: Source
///               category: Source
///               owner: AWS
///               provider: CodeStarSourceConnection
///               version: '1'
///               outputArtifacts:
///                 - source_output
///               configuration:
///                 ConnectionArn: ${example.arn}
///                 FullRepositoryId: my-organization/example
///                 BranchName: main
///           name: Source
///         - actions:
///             - name: Build
///               category: Build
///               owner: AWS
///               provider: CodeBuild
///               inputArtifacts:
///                 - source_output
///               outputArtifacts:
///                 - build_output
///               version: '1'
///               configuration:
///                 ProjectName: test
///           name: Build
///         - actions:
///             - name: Deploy
///               category: Deploy
///               owner: AWS
///               provider: CloudFormation
///               inputArtifacts:
///                 - build_output
///               version: '1'
///               configuration:
///                 ActionMode: REPLACE_ON_FAILURE
///                 Capabilities: CAPABILITY_AUTO_EXPAND,CAPABILITY_IAM
///                 OutputFileName: CreateStackOutput.json
///                 StackName: MyStack
///                 TemplatePath: build_output::sam-templated.yaml
///           name: Deploy
///       name: tf-test-pipeline
///       roleArn: ${codepipelineRole.arn}
///   example:
///     type: aws:codestarconnections:Connection
///     properties:
///       name: example-connection
///       providerType: GitHub
///   codepipelineBucket:
///     type: aws:s3:Bucket
///     name: codepipeline_bucket
///     properties:
///       bucket: test-bucket
///   codepipelineBucketPab:
///     type: aws:s3:BucketPublicAccessBlock
///     name: codepipeline_bucket_pab
///     properties:
///       bucket: ${codepipelineBucket.id}
///       blockPublicAcls: true
///       blockPublicPolicy: true
///       ignorePublicAcls: true
///       restrictPublicBuckets: true
///   codepipelineRole:
///     type: aws:iam:Role
///     name: codepipeline_role
///     properties:
///       name: test-role
///       assumeRolePolicy: ${assumeRole.json}
///   codepipelinePolicyRolePolicy:
///     type: aws:iam:RolePolicy
///     name: codepipeline_policy
///     properties:
///       name: codepipeline_policy
///       role: ${codepipelineRole.id}
///       policy: ${codepipelinePolicy.json}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - codepipeline.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///   codepipelinePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - s3:GetObject
///               - s3:GetObjectVersion
///               - s3:GetBucketVersioning
///               - s3:PutObjectAcl
///               - s3:PutObject
///             resources:
///               - ${codepipelineBucket.arn}
///               - ${codepipelineBucket.arn}/*
///           - effect: Allow
///             actions:
///               - codestar-connections:UseConnection
///             resources:
///               - ${example.arn}
///           - effect: Allow
///             actions:
///               - codebuild:BatchGetBuilds
///               - codebuild:StartBuild
///             resources:
///               - '*'
///   s3kmskey:
///     fn::invoke:
///       function: aws:kms:getAlias
///       arguments:
///         name: alias/myKmsKey
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the pipeline.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CodePipelines using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codepipeline/pipeline:Pipeline example example-pipeline
/// ```
class Pipeline extends pulumi.CustomResource {
  /// Codepipeline ARN.
  late final pulumi.Output<String> arn;
  /// One or more artifactStore blocks. Artifact stores are documented below.
  late final pulumi.Output<List<PipelineArtifactStore>> artifactStores;
  /// The method that the pipeline will use to handle multiple executions. The default mode is `SUPERSEDED`. For value values, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PipelineDeclaration.html#CodePipeline-Type-PipelineDeclaration-executionMode).
  late final pulumi.Output<String?> executionMode;
  /// The name of the pipeline.
  late final pulumi.Output<String> name;
  /// Type of the pipeline. Possible values are: `V1` and `V2`. Default value is `V1`.
  late final pulumi.Output<String?> pipelineType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Service role ARN that grants AWS CodePipeline permission to make calls to AWS services on your behalf.
  late final pulumi.Output<String> roleArn;
  /// A stage block. Stages are documented below.
  late final pulumi.Output<List<PipelineStage>> stages;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A list of all triggers present on the pipeline, including default triggers added by AWS for `V2` pipelines which omit an explicit `trigger` definition.
  late final pulumi.Output<List<PipelineTriggerAll>> triggerAlls;
  /// A trigger block. Valid only when `pipelineType` is `V2`. Triggers are documented below.
  late final pulumi.Output<List<PipelineTrigger>?> triggers;
  /// A pipeline-level variable block. Valid only when `pipelineType` is `V2`. Variable are documented below.
  ///
  /// **Note:** `QUEUED` or `PARALLEL` mode can only be used with V2 pipelines.
  late final pulumi.Output<List<PipelineVariable>?> variables;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_codepipeline_pipeline_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    artifactStores = registerOutput<List<PipelineArtifactStore>>('artifactStores', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineArtifactStore>(guardedValue, (value) => PipelineArtifactStore.fromMap((value as Map).cast<String, dynamic>())); });
    executionMode = registerOutput<String?>('executionMode');
    this.name = registerOutput<String>('name');
    pipelineType = registerOutput<String?>('pipelineType');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stages = registerOutput<List<PipelineStage>>('stages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineStage>(guardedValue, (value) => PipelineStage.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    triggerAlls = registerOutput<List<PipelineTriggerAll>>('triggerAlls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTriggerAll>(guardedValue, (value) => PipelineTriggerAll.fromMap((value as Map).cast<String, dynamic>())); });
    triggers = registerOutput<List<PipelineTrigger>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTrigger>(guardedValue, (value) => PipelineTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    variables = registerOutput<List<PipelineVariable>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineVariable>(guardedValue, (value) => PipelineVariable.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Pipeline] resource's state with the given [name] and [id].
  static Pipeline get(
    String name,
    pulumi.Input<String> id, {
    PipelineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Pipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Pipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    artifactStores = registerOutput<List<PipelineArtifactStore>>('artifactStores', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineArtifactStore>(guardedValue, (value) => PipelineArtifactStore.fromMap((value as Map).cast<String, dynamic>())); });
    executionMode = registerOutput<String?>('executionMode');
    this.name = registerOutput<String>('name');
    pipelineType = registerOutput<String?>('pipelineType');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stages = registerOutput<List<PipelineStage>>('stages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineStage>(guardedValue, (value) => PipelineStage.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    triggerAlls = registerOutput<List<PipelineTriggerAll>>('triggerAlls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTriggerAll>(guardedValue, (value) => PipelineTriggerAll.fromMap((value as Map).cast<String, dynamic>())); });
    triggers = registerOutput<List<PipelineTrigger>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTrigger>(guardedValue, (value) => PipelineTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    variables = registerOutput<List<PipelineVariable>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineVariable>(guardedValue, (value) => PipelineVariable.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Pipeline] resource.
  Pipeline.reference(String urn)
    : super(
        'aws:codepipeline/pipeline:Pipeline',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    artifactStores = registerOutput<List<PipelineArtifactStore>>('artifactStores', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineArtifactStore>(guardedValue, (value) => PipelineArtifactStore.fromMap((value as Map).cast<String, dynamic>())); });
    executionMode = registerOutput<String?>('executionMode');
    this.name = registerOutput<String>('name');
    pipelineType = registerOutput<String?>('pipelineType');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stages = registerOutput<List<PipelineStage>>('stages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineStage>(guardedValue, (value) => PipelineStage.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    triggerAlls = registerOutput<List<PipelineTriggerAll>>('triggerAlls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTriggerAll>(guardedValue, (value) => PipelineTriggerAll.fromMap((value as Map).cast<String, dynamic>())); });
    triggers = registerOutput<List<PipelineTrigger>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTrigger>(guardedValue, (value) => PipelineTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    variables = registerOutput<List<PipelineVariable>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineVariable>(guardedValue, (value) => PipelineVariable.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
