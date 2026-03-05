import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_logger_args.dart';
import 'session_logger_event_filter.dart';
import 'session_logger_log_configuration.dart';
import 'session_logger_state.dart';

/// Resource for managing an AWS WorkSpaces Web Session Logger.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example-session-logs"});
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["workspaces-web.amazonaws.com"],
///         }],
///         actions: ["s3:PutObject"],
///         resources: [pulumi.interpolate`${exampleBucket.arn}/*`],
///     }],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
///     bucket: exampleBucket.id,
///     policy: example.apply(example => example.json),
/// });
/// const exampleSessionLogger = new aws.workspacesweb.SessionLogger("example", {
///     displayName: "example-session-logger",
///     eventFilter: {
///         all: {},
///     },
///     logConfiguration: {
///         s3: {
///             bucket: exampleBucket.id,
///             folderStructure: "Flat",
///             logFileFormat: "Json",
///         },
///     },
/// }, {
///     dependsOn: [exampleBucketPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example", bucket="example-session-logs")
/// example = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["workspaces-web.amazonaws.com"],
///     }],
///     "actions": ["s3:PutObject"],
///     "resources": [example_bucket.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
///     bucket=example_bucket.id,
///     policy=example.json)
/// example_session_logger = aws.workspacesweb.SessionLogger("example",
///     display_name="example-session-logger",
///     event_filter={
///         "all": {},
///     },
///     log_configuration={
///         "s3": {
///             "bucket": example_bucket.id,
///             "folder_structure": "Flat",
///             "log_file_format": "Json",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_bucket_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-session-logs",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "workspaces-web.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{exampleBucket.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleSessionLogger = new Aws.WorkSpacesWeb.SessionLogger("example", new()
///     {
///         DisplayName = "example-session-logger",
///         EventFilter = new Aws.WorkSpacesWeb.Inputs.SessionLoggerEventFilterArgs
///         {
///             All = null,
///         },
///         LogConfiguration = new Aws.WorkSpacesWeb.Inputs.SessionLoggerLogConfigurationArgs
///         {
///             S3 = new Aws.WorkSpacesWeb.Inputs.SessionLoggerLogConfigurationS3Args
///             {
///                 Bucket = exampleBucket.Id,
///                 FolderStructure = "Flat",
///                 LogFileFormat = "Json",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleBucketPolicy,
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-session-logs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("workspaces-web.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		exampleBucketPolicy, err := s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// 			Bucket: exampleBucket.ID(),
/// 			Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &example.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewSessionLogger(ctx, "example", &workspacesweb.SessionLoggerArgs{
/// 			DisplayName: pulumi.String("example-session-logger"),
/// 			EventFilter: &workspacesweb.SessionLoggerEventFilterArgs{
/// 				All: &workspacesweb.SessionLoggerEventFilterAllArgs{},
/// 			},
/// 			LogConfiguration: &workspacesweb.SessionLoggerLogConfigurationArgs{
/// 				S3: &workspacesweb.SessionLoggerLogConfigurationS3Args{
/// 					Bucket:          exampleBucket.ID(),
/// 					FolderStructure: pulumi.String("Flat"),
/// 					LogFileFormat:   pulumi.String("Json"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleBucketPolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.workspacesweb.SessionLogger;
/// import com.pulumi.aws.workspacesweb.SessionLoggerArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerEventFilterArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerEventFilterAllArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerLogConfigurationArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerLogConfigurationS3Args;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example-session-logs")
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("workspaces-web.amazonaws.com")
///                     .build())
///                 .actions("s3:PutObject")
///                 .resources(exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.id())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///         var exampleSessionLogger = new SessionLogger("exampleSessionLogger", SessionLoggerArgs.builder()
///             .displayName("example-session-logger")
///             .eventFilter(SessionLoggerEventFilterArgs.builder()
///                 .all(SessionLoggerEventFilterAllArgs.builder()
///                     .build())
///                 .build())
///             .logConfiguration(SessionLoggerLogConfigurationArgs.builder()
///                 .s3(SessionLoggerLogConfigurationS3Args.builder()
///                     .bucket(exampleBucket.id())
///                     .folderStructure("Flat")
///                     .logFileFormat("Json")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleBucketPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example-session-logs
///   exampleBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       policy: ${example.json}
///   exampleSessionLogger:
///     type: aws:workspacesweb:SessionLogger
///     name: example
///     properties:
///       displayName: example-session-logger
///       eventFilter:
///         all: {}
///       logConfiguration:
///         s3:
///           bucket: ${exampleBucket.id}
///           folderStructure: Flat
///           logFileFormat: Json
///     options:
///       dependsOn:
///         - ${exampleBucketPolicy}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - workspaces-web.amazonaws.com
///             actions:
///               - s3:PutObject
///             resources:
///               - ${exampleBucket.arn}/*
/// ```
///
///
/// ### Complete Configuration with KMS Encryption
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "example-session-logs",
///     forceDestroy: true,
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["workspaces-web.amazonaws.com"],
///         }],
///         actions: ["s3:PutObject"],
///         resources: [
///             exampleBucket.arn,
///             pulumi.interpolate`${exampleBucket.arn}/*`,
///         ],
///     }],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
///     bucket: exampleBucket.id,
///     policy: example.apply(example => example.json),
/// });
/// const current = aws.getPartition({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const kmsKeyPolicy = Promise.all([current, currentGetCallerIdentity]).then(([current, currentGetCallerIdentity]) => aws.iam.getPolicyDocument({
///     statements: [
///         {
///             principals: [{
///                 type: "AWS",
///                 identifiers: [`arn:${current.partition}:iam::${currentGetCallerIdentity.accountId}:root`],
///             }],
///             actions: ["kms:*"],
///             resources: ["*"],
///         },
///         {
///             principals: [{
///                 type: "Service",
///                 identifiers: ["workspaces-web.amazonaws.com"],
///             }],
///             actions: [
///                 "kms:Encrypt",
///                 "kms:GenerateDataKey*",
///                 "kms:ReEncrypt*",
///                 "kms:Decrypt",
///             ],
///             resources: ["*"],
///         },
///     ],
/// }));
/// const exampleKey = new aws.kms.Key("example", {
///     description: "KMS key for WorkSpaces Web Session Logger",
///     policy: kmsKeyPolicy.then(kmsKeyPolicy => kmsKeyPolicy.json),
/// });
/// const exampleSessionLogger = new aws.workspacesweb.SessionLogger("example", {
///     displayName: "example-session-logger",
///     customerManagedKey: exampleKey.arn,
///     additionalEncryptionContext: {
///         Environment: "Production",
///         Application: "WorkSpacesWeb",
///     },
///     eventFilter: {
///         includes: [
///             "SessionStart",
///             "SessionEnd",
///         ],
///     },
///     logConfiguration: {
///         s3: {
///             bucket: exampleBucket.id,
///             bucketOwner: currentGetCallerIdentity.then(currentGetCallerIdentity => currentGetCallerIdentity.accountId),
///             folderStructure: "NestedByDate",
///             keyPrefix: "workspaces-web-logs/",
///             logFileFormat: "JsonLines",
///         },
///     },
///     tags: {
///         Name: "example-session-logger",
///         Environment: "Production",
///     },
/// }, {
///     dependsOn: [
///         exampleBucketPolicy,
///         exampleKey,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example",
///     bucket="example-session-logs",
///     force_destroy=True)
/// example = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["workspaces-web.amazonaws.com"],
///     }],
///     "actions": ["s3:PutObject"],
///     "resources": [
///         example_bucket.arn,
///         example_bucket.arn.apply(lambda arn: f"{arn}/*"),
///     ],
/// }])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
///     bucket=example_bucket.id,
///     policy=example.json)
/// current = aws.get_partition()
/// current_get_caller_identity = aws.get_caller_identity()
/// kms_key_policy = aws.iam.get_policy_document(statements=[
///     {
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [f"arn:{current.partition}:iam::{current_get_caller_identity.account_id}:root"],
///         }],
///         "actions": ["kms:*"],
///         "resources": ["*"],
///     },
///     {
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["workspaces-web.amazonaws.com"],
///         }],
///         "actions": [
///             "kms:Encrypt",
///             "kms:GenerateDataKey*",
///             "kms:ReEncrypt*",
///             "kms:Decrypt",
///         ],
///         "resources": ["*"],
///     },
/// ])
/// example_key = aws.kms.Key("example",
///     description="KMS key for WorkSpaces Web Session Logger",
///     policy=kms_key_policy.json)
/// example_session_logger = aws.workspacesweb.SessionLogger("example",
///     display_name="example-session-logger",
///     customer_managed_key=example_key.arn,
///     additional_encryption_context={
///         "Environment": "Production",
///         "Application": "WorkSpacesWeb",
///     },
///     event_filter={
///         "includes": [
///             "SessionStart",
///             "SessionEnd",
///         ],
///     },
///     log_configuration={
///         "s3": {
///             "bucket": example_bucket.id,
///             "bucket_owner": current_get_caller_identity.account_id,
///             "folder_structure": "NestedByDate",
///             "key_prefix": "workspaces-web-logs/",
///             "log_file_format": "JsonLines",
///         },
///     },
///     tags={
///         "Name": "example-session-logger",
///         "Environment": "Production",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_bucket_policy,
///             example_key,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-session-logs",
///         ForceDestroy = true,
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "workspaces-web.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     exampleBucket.Arn,
///                     $"{exampleBucket.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var current = Aws.GetPartition.Invoke();
///
///     var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
///     var kmsKeyPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "kms:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "workspaces-web.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "kms:Encrypt",
///                     "kms:GenerateDataKey*",
///                     "kms:ReEncrypt*",
///                     "kms:Decrypt",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Aws.Kms.Key("example", new()
///     {
///         Description = "KMS key for WorkSpaces Web Session Logger",
///         Policy = kmsKeyPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleSessionLogger = new Aws.WorkSpacesWeb.SessionLogger("example", new()
///     {
///         DisplayName = "example-session-logger",
///         CustomerManagedKey = exampleKey.Arn,
///         AdditionalEncryptionContext =
///         {
///             { "Environment", "Production" },
///             { "Application", "WorkSpacesWeb" },
///         },
///         EventFilter = new Aws.WorkSpacesWeb.Inputs.SessionLoggerEventFilterArgs
///         {
///             Includes = new[]
///             {
///                 "SessionStart",
///                 "SessionEnd",
///             },
///         },
///         LogConfiguration = new Aws.WorkSpacesWeb.Inputs.SessionLoggerLogConfigurationArgs
///         {
///             S3 = new Aws.WorkSpacesWeb.Inputs.SessionLoggerLogConfigurationS3Args
///             {
///                 Bucket = exampleBucket.Id,
///                 BucketOwner = currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                 FolderStructure = "NestedByDate",
///                 KeyPrefix = "workspaces-web-logs/",
///                 LogFileFormat = "JsonLines",
///             },
///         },
///         Tags =
///         {
///             { "Name", "example-session-logger" },
///             { "Environment", "Production" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleBucketPolicy,
///             exampleKey,
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example-session-logs"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("workspaces-web.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn,
/// 						exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		exampleBucketPolicy, err := s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// 			Bucket: exampleBucket.ID(),
/// 			Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &example.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kmsKeyPolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								fmt.Sprintf("arn:%v:iam::%v:root", current.Partition, currentGetCallerIdentity.AccountId),
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"kms:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"workspaces-web.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"kms:Encrypt",
/// 						"kms:GenerateDataKey*",
/// 						"kms:ReEncrypt*",
/// 						"kms:Decrypt",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description: pulumi.String("KMS key for WorkSpaces Web Session Logger"),
/// 			Policy:      pulumi.String(kmsKeyPolicy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewSessionLogger(ctx, "example", &workspacesweb.SessionLoggerArgs{
/// 			DisplayName:        pulumi.String("example-session-logger"),
/// 			CustomerManagedKey: exampleKey.Arn,
/// 			AdditionalEncryptionContext: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 				"Application": pulumi.String("WorkSpacesWeb"),
/// 			},
/// 			EventFilter: &workspacesweb.SessionLoggerEventFilterArgs{
/// 				Includes: pulumi.StringArray{
/// 					pulumi.String("SessionStart"),
/// 					pulumi.String("SessionEnd"),
/// 				},
/// 			},
/// 			LogConfiguration: &workspacesweb.SessionLoggerLogConfigurationArgs{
/// 				S3: &workspacesweb.SessionLoggerLogConfigurationS3Args{
/// 					Bucket:          exampleBucket.ID(),
/// 					BucketOwner:     pulumi.String(currentGetCallerIdentity.AccountId),
/// 					FolderStructure: pulumi.String("NestedByDate"),
/// 					KeyPrefix:       pulumi.String("workspaces-web-logs/"),
/// 					LogFileFormat:   pulumi.String("JsonLines"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("example-session-logger"),
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleBucketPolicy,
/// 			exampleKey,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.workspacesweb.SessionLogger;
/// import com.pulumi.aws.workspacesweb.SessionLoggerArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerEventFilterArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerLogConfigurationArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerLogConfigurationS3Args;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example-session-logs")
///             .forceDestroy(true)
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("workspaces-web.amazonaws.com")
///                     .build())
///                 .actions("s3:PutObject")
///                 .resources(
///                     exampleBucket.arn(),
///                     exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.id())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var kmsKeyPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(String.format("arn:%s:iam::%s:root", current.partition(),currentGetCallerIdentity.accountId()))
///                         .build())
///                     .actions("kms:*")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("workspaces-web.amazonaws.com")
///                         .build())
///                     .actions(
///                         "kms:Encrypt",
///                         "kms:GenerateDataKey*",
///                         "kms:ReEncrypt*",
///                         "kms:Decrypt")
///                     .resources("*")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .description("KMS key for WorkSpaces Web Session Logger")
///             .policy(kmsKeyPolicy.json())
///             .build());
///
///         var exampleSessionLogger = new SessionLogger("exampleSessionLogger", SessionLoggerArgs.builder()
///             .displayName("example-session-logger")
///             .customerManagedKey(exampleKey.arn())
///             .additionalEncryptionContext(Map.ofEntries(
///                 Map.entry("Environment", "Production"),
///                 Map.entry("Application", "WorkSpacesWeb")
///             ))
///             .eventFilter(SessionLoggerEventFilterArgs.builder()
///                 .includes(
///                     "SessionStart",
///                     "SessionEnd")
///                 .build())
///             .logConfiguration(SessionLoggerLogConfigurationArgs.builder()
///                 .s3(SessionLoggerLogConfigurationS3Args.builder()
///                     .bucket(exampleBucket.id())
///                     .bucketOwner(currentGetCallerIdentity.accountId())
///                     .folderStructure("NestedByDate")
///                     .keyPrefix("workspaces-web-logs/")
///                     .logFileFormat("JsonLines")
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "example-session-logger"),
///                 Map.entry("Environment", "Production")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleBucketPolicy,
///                     exampleKey)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example-session-logs
///       forceDestroy: true
///   exampleBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       policy: ${example.json}
///   exampleKey:
///     type: aws:kms:Key
///     name: example
///     properties:
///       description: KMS key for WorkSpaces Web Session Logger
///       policy: ${kmsKeyPolicy.json}
///   exampleSessionLogger:
///     type: aws:workspacesweb:SessionLogger
///     name: example
///     properties:
///       displayName: example-session-logger
///       customerManagedKey: ${exampleKey.arn}
///       additionalEncryptionContext:
///         Environment: Production
///         Application: WorkSpacesWeb
///       eventFilter:
///         includes:
///           - SessionStart
///           - SessionEnd
///       logConfiguration:
///         s3:
///           bucket: ${exampleBucket.id}
///           bucketOwner: ${currentGetCallerIdentity.accountId}
///           folderStructure: NestedByDate
///           keyPrefix: workspaces-web-logs/
///           logFileFormat: JsonLines
///       tags:
///         Name: example-session-logger
///         Environment: Production
///     options:
///       dependsOn:
///         - ${exampleBucketPolicy}
///         - ${exampleKey}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - workspaces-web.amazonaws.com
///             actions:
///               - s3:PutObject
///             resources:
///               - ${exampleBucket.arn}
///               - ${exampleBucket.arn}/*
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   kmsKeyPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - arn:${current.partition}:iam::${currentGetCallerIdentity.accountId}:root
///             actions:
///               - kms:*
///             resources:
///               - '*'
///           - principals:
///               - type: Service
///                 identifiers:
///                   - workspaces-web.amazonaws.com
///             actions:
///               - kms:Encrypt
///               - kms:GenerateDataKey*
///               - kms:ReEncrypt*
///               - kms:Decrypt
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Session Logger using the `session_logger_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/sessionLogger:SessionLogger example arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/session_logger-id-12345678
/// ```
class SessionLogger extends pulumi.CustomResource {
  /// Map of additional encryption context key-value pairs.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;

  /// List of ARNs of the web portals associated with the session logger.
  late final pulumi.Output<List<String>> associatedPortalArns;

  /// ARN of the customer managed KMS key used to encrypt sensitive information.
  late final pulumi.Output<String?> customerManagedKey;

  /// Human-readable display name for the session logger resource. Forces replacement if changed.
  late final pulumi.Output<String?> displayName;

  /// Event filter that determines which events are logged. See Event Filter below.
  late final pulumi.Output<SessionLoggerEventFilter> eventFilter;

  /// Configuration block for specifying where logs are delivered. See Log Configuration below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<SessionLoggerLogConfiguration> logConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the session logger.
  late final pulumi.Output<String> sessionLoggerArn;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [SessionLogger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SessionLogger]. {@macro pulumi_workspacesweb_session_logger_session_logger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SessionLogger(
    String name, {
    SessionLoggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspacesweb/sessionLogger:SessionLogger',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>(
      'additionalEncryptionContext',
    );
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns');
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    displayName = registerOutput<String?>('displayName');
    eventFilter = registerOutput<SessionLoggerEventFilter>(
      'eventFilter',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SessionLoggerEventFilter.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    logConfiguration = registerOutput<SessionLoggerLogConfiguration>(
      'logConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SessionLoggerLogConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    sessionLoggerArn = registerOutput<String>('sessionLoggerArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [SessionLogger] resource's state with the given [name] and [id].
  static SessionLogger get(
    String name,
    pulumi.Input<String> id, {
    SessionLoggerState? state,
  }) {
    return SessionLogger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SessionLogger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspacesweb/sessionLogger:SessionLogger',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>(
      'additionalEncryptionContext',
    );
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns');
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    displayName = registerOutput<String?>('displayName');
    eventFilter = registerOutput<SessionLoggerEventFilter>(
      'eventFilter',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SessionLoggerEventFilter.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    logConfiguration = registerOutput<SessionLoggerLogConfiguration>(
      'logConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SessionLoggerLogConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    sessionLoggerArn = registerOutput<String>('sessionLoggerArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
