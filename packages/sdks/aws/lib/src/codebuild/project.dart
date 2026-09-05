import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_artifacts.dart';
import 'project_build_batch_config.dart';
import 'project_cache.dart';
import 'project_environment.dart';
import 'project_file_system_location.dart';
import 'project_logs_config.dart';
import 'project_secondary_artifact.dart';
import 'project_secondary_source.dart';
import 'project_secondary_source_version.dart';
import 'project_source.dart';
import 'project_state.dart';
import 'project_vpc_config.dart';

/// Provides a CodeBuild Project resource. See also the
/// `aws.codebuild.Webhook` resource, which manages the webhook to the
/// source (e.g., the "rebuild every time a code change is pushed" option in the CodeBuild web console).
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
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: exampleBucket.id,
///     acl: "private",
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["codebuild.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             effect: "Allow",
///             actions: [
///                 "logs:CreateLogGroup",
///                 "logs:CreateLogStream",
///                 "logs:PutLogEvents",
///             ],
///             resources: ["*"],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "ec2:CreateNetworkInterface",
///                 "ec2:DescribeDhcpOptions",
///                 "ec2:DescribeNetworkInterfaces",
///                 "ec2:DeleteNetworkInterface",
///                 "ec2:DescribeSubnets",
///                 "ec2:DescribeSecurityGroups",
///                 "ec2:DescribeVpcs",
///             ],
///             resources: ["*"],
///         },
///         {
///             conditions: [
///                 {
///                     test: "StringEquals",
///                     variable: "ec2:Subnet",
///                     values: [
///                         example1.arn,
///                         example2.arn,
///                     ],
///                 },
///                 {
///                     test: "StringEquals",
///                     variable: "ec2:AuthorizedService",
///                     values: ["codebuild.amazonaws.com"],
///                 },
///             ],
///             effect: "Allow",
///             actions: ["ec2:CreateNetworkInterfacePermission"],
///             resources: ["arn:aws:ec2:us-east-1:123456789012:network-interface/*"],
///         },
///         {
///             effect: "Allow",
///             actions: ["s3:*"],
///             resources: [
///                 exampleBucket.arn,
///                 pulumi.interpolate`${exampleBucket.arn}/*`,
///             ],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "codeconnections:GetConnectionToken",
///                 "codeconnections:GetConnection",
///             ],
///             resources: ["arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string"],
///         },
///     ],
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     role: exampleRole.name,
///     policy: example.json,
/// });
/// const exampleProject = new aws.codebuild.Project("example", {
///     artifacts: {
///         type: "NO_ARTIFACTS",
///     },
///     cache: {
///         type: "S3",
///         location: exampleBucket.bucket,
///     },
///     environment: {
///         environmentVariables: [
///             {
///                 name: "SOME_KEY1",
///                 value: "SOME_VALUE1",
///             },
///             {
///                 name: "SOME_KEY2",
///                 value: "SOME_VALUE2",
///                 type: "PARAMETER_STORE",
///             },
///         ],
///         computeType: "BUILD_GENERAL1_SMALL",
///         image: "aws/codebuild/amazonlinux-x86_64-standard:6.0",
///         type: "LINUX_CONTAINER",
///         imagePullCredentialsType: "CODEBUILD",
///         hostKernel: "LINUX_KERNEL_6",
///     },
///     logsConfig: {
///         cloudwatchLogs: {
///             groupName: "log-group",
///             streamName: "log-stream",
///         },
///         s3Logs: {
///             status: "ENABLED",
///             location: pulumi.interpolate`${exampleBucket.id}/build-log`,
///         },
///     },
///     source: {
///         gitSubmodulesConfig: {
///             fetchSubmodules: true,
///         },
///         type: "GITHUB",
///         location: "https://github.com/mitchellh/packer.git",
///         gitCloneDepth: 1,
///     },
///     vpcConfig: {
///         vpcId: exampleAwsVpc.id,
///         subnets: [
///             example1.id,
///             example2.id,
///         ],
///         securityGroupIds: [
///             example1AwsSecurityGroup.id,
///             example2AwsSecurityGroup.id,
///         ],
///     },
///     name: "test-project",
///     description: "test_codebuild_project",
///     buildTimeout: 5,
///     serviceRole: exampleRole.arn,
///     sourceVersion: "master",
///     tags: {
///         Environment: "Test",
///     },
/// });
/// const project_with_cache = new aws.codebuild.Project("project-with-cache", {
///     artifacts: {
///         type: "NO_ARTIFACTS",
///     },
///     cache: {
///         type: "LOCAL",
///         modes: [
///             "LOCAL_DOCKER_LAYER_CACHE",
///             "LOCAL_SOURCE_CACHE",
///         ],
///     },
///     environment: {
///         environmentVariables: [{
///             name: "SOME_KEY1",
///             value: "SOME_VALUE1",
///         }],
///         computeType: "BUILD_GENERAL1_SMALL",
///         image: "aws/codebuild/amazonlinux2-x86_64-standard:4.0",
///         type: "LINUX_CONTAINER",
///         imagePullCredentialsType: "CODEBUILD",
///     },
///     source: {
///         type: "GITHUB",
///         location: "https://github.com/mitchellh/packer.git",
///         gitCloneDepth: 1,
///     },
///     name: "test-project-cache",
///     description: "test_codebuild_project_cache",
///     buildTimeout: 5,
///     queuedTimeout: 5,
///     serviceRole: exampleRole.arn,
///     tags: {
///         Environment: "Test",
///     },
/// });
/// const project_using_github_app = new aws.codebuild.Project("project-using-github-app", {
///     artifacts: {
///         type: "NO_ARTIFACTS",
///     },
///     environment: {
///         computeType: "BUILD_GENERAL1_SMALL",
///         image: "aws/codebuild/amazonlinux2-x86_64-standard:4.0",
///         type: "LINUX_CONTAINER",
///         imagePullCredentialsType: "CODEBUILD",
///     },
///     source: {
///         auth: {
///             type: "CODECONNECTIONS",
///             resource: "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string",
///         },
///         type: "GITHUB",
///         location: "https://github.com/example/example.git",
///     },
///     name: "project-using-github-app",
///     description: "gets_source_from_github_via_the_github_app",
///     serviceRole: exampleRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example_bucket.id,
///     acl="private")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["codebuild.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=assume_role.json)
/// example = aws.iam.get_policy_document_output(statements=[
///     {
///         "effect": "Allow",
///         "actions": [
///             "logs:CreateLogGroup",
///             "logs:CreateLogStream",
///             "logs:PutLogEvents",
///         ],
///         "resources": ["*"],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "ec2:CreateNetworkInterface",
///             "ec2:DescribeDhcpOptions",
///             "ec2:DescribeNetworkInterfaces",
///             "ec2:DeleteNetworkInterface",
///             "ec2:DescribeSubnets",
///             "ec2:DescribeSecurityGroups",
///             "ec2:DescribeVpcs",
///         ],
///         "resources": ["*"],
///     },
///     {
///         "conditions": [
///             {
///                 "test": "StringEquals",
///                 "variable": "ec2:Subnet",
///                 "values": [
///                     example1["arn"],
///                     example2["arn"],
///                 ],
///             },
///             {
///                 "test": "StringEquals",
///                 "variable": "ec2:AuthorizedService",
///                 "values": ["codebuild.amazonaws.com"],
///             },
///         ],
///         "effect": "Allow",
///         "actions": ["ec2:CreateNetworkInterfacePermission"],
///         "resources": ["arn:aws:ec2:us-east-1:123456789012:network-interface/*"],
///     },
///     {
///         "effect": "Allow",
///         "actions": ["s3:*"],
///         "resources": [
///             example_bucket.arn,
///             example_bucket.arn.apply(lambda arn: f"{arn}/*"),
///         ],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "codeconnections:GetConnectionToken",
///             "codeconnections:GetConnection",
///         ],
///         "resources": ["arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string"],
///     },
/// ])
/// example_role_policy = aws.iam.RolePolicy("example",
///     role=example_role.name,
///     policy=example.json)
/// example_project = aws.codebuild.Project("example",
///     artifacts={
///         "type": "NO_ARTIFACTS",
///     },
///     cache={
///         "type": "S3",
///         "location": example_bucket.bucket,
///     },
///     environment={
///         "environment_variables": [
///             {
///                 "name": "SOME_KEY1",
///                 "value": "SOME_VALUE1",
///             },
///             {
///                 "name": "SOME_KEY2",
///                 "value": "SOME_VALUE2",
///                 "type": "PARAMETER_STORE",
///             },
///         ],
///         "compute_type": "BUILD_GENERAL1_SMALL",
///         "image": "aws/codebuild/amazonlinux-x86_64-standard:6.0",
///         "type": "LINUX_CONTAINER",
///         "image_pull_credentials_type": "CODEBUILD",
///         "host_kernel": "LINUX_KERNEL_6",
///     },
///     logs_config={
///         "cloudwatch_logs": {
///             "group_name": "log-group",
///             "stream_name": "log-stream",
///         },
///         "s3_logs": {
///             "status": "ENABLED",
///             "location": example_bucket.id.apply(lambda id: f"{id}/build-log"),
///         },
///     },
///     source={
///         "git_submodules_config": {
///             "fetch_submodules": True,
///         },
///         "type": "GITHUB",
///         "location": "https://github.com/mitchellh/packer.git",
///         "git_clone_depth": 1,
///     },
///     vpc_config={
///         "vpc_id": example_aws_vpc["id"],
///         "subnets": [
///             example1["id"],
///             example2["id"],
///         ],
///         "security_group_ids": [
///             example1_aws_security_group["id"],
///             example2_aws_security_group["id"],
///         ],
///     },
///     name="test-project",
///     description="test_codebuild_project",
///     build_timeout=5,
///     service_role=example_role.arn,
///     source_version="master",
///     tags={
///         "Environment": "Test",
///     })
/// project_with_cache = aws.codebuild.Project("project-with-cache",
///     artifacts={
///         "type": "NO_ARTIFACTS",
///     },
///     cache={
///         "type": "LOCAL",
///         "modes": [
///             "LOCAL_DOCKER_LAYER_CACHE",
///             "LOCAL_SOURCE_CACHE",
///         ],
///     },
///     environment={
///         "environment_variables": [{
///             "name": "SOME_KEY1",
///             "value": "SOME_VALUE1",
///         }],
///         "compute_type": "BUILD_GENERAL1_SMALL",
///         "image": "aws/codebuild/amazonlinux2-x86_64-standard:4.0",
///         "type": "LINUX_CONTAINER",
///         "image_pull_credentials_type": "CODEBUILD",
///     },
///     source={
///         "type": "GITHUB",
///         "location": "https://github.com/mitchellh/packer.git",
///         "git_clone_depth": 1,
///     },
///     name="test-project-cache",
///     description="test_codebuild_project_cache",
///     build_timeout=5,
///     queued_timeout=5,
///     service_role=example_role.arn,
///     tags={
///         "Environment": "Test",
///     })
/// project_using_github_app = aws.codebuild.Project("project-using-github-app",
///     artifacts={
///         "type": "NO_ARTIFACTS",
///     },
///     environment={
///         "compute_type": "BUILD_GENERAL1_SMALL",
///         "image": "aws/codebuild/amazonlinux2-x86_64-standard:4.0",
///         "type": "LINUX_CONTAINER",
///         "image_pull_credentials_type": "CODEBUILD",
///     },
///     source={
///         "auth": {
///             "type": "CODECONNECTIONS",
///             "resource": "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string",
///         },
///         "type": "GITHUB",
///         "location": "https://github.com/example/example.git",
///     },
///     name="project-using-github-app",
///     description="gets_source_from_github_via_the_github_app",
///     service_role=example_role.arn)
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
///         BucketName = "example",
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Acl = "private",
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
///                             "codebuild.amazonaws.com",
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
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "logs:CreateLogGroup",
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ec2:CreateNetworkInterface",
///                     "ec2:DescribeDhcpOptions",
///                     "ec2:DescribeNetworkInterfaces",
///                     "ec2:DeleteNetworkInterface",
///                     "ec2:DescribeSubnets",
///                     "ec2:DescribeSecurityGroups",
///                     "ec2:DescribeVpcs",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "ec2:Subnet",
///                         Values = new[]
///                         {
///                             example1.Arn,
///                             example2.Arn,
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "ec2:AuthorizedService",
///                         Values = new[]
///                         {
///                             "codebuild.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ec2:CreateNetworkInterfacePermission",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:ec2:us-east-1:123456789012:network-interface/*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:*",
///                 },
///                 Resources = new[]
///                 {
///                     exampleBucket.Arn,
///                     $"{exampleBucket.Arn}/*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "codeconnections:GetConnectionToken",
///                     "codeconnections:GetConnection",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string",
///                 },
///             },
///         },
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Role = exampleRole.Name,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleProject = new Aws.CodeBuild.Project("example", new()
///     {
///         Artifacts = new Aws.CodeBuild.Inputs.ProjectArtifactsArgs
///         {
///             Type = "NO_ARTIFACTS",
///         },
///         Cache = new Aws.CodeBuild.Inputs.ProjectCacheArgs
///         {
///             Type = "S3",
///             Location = exampleBucket.BucketName,
///         },
///         Environment = new Aws.CodeBuild.Inputs.ProjectEnvironmentArgs
///         {
///             EnvironmentVariables = new[]
///             {
///                 new Aws.CodeBuild.Inputs.ProjectEnvironmentEnvironmentVariableArgs
///                 {
///                     Name = "SOME_KEY1",
///                     Value = "SOME_VALUE1",
///                 },
///                 new Aws.CodeBuild.Inputs.ProjectEnvironmentEnvironmentVariableArgs
///                 {
///                     Name = "SOME_KEY2",
///                     Value = "SOME_VALUE2",
///                     Type = "PARAMETER_STORE",
///                 },
///             },
///             ComputeType = "BUILD_GENERAL1_SMALL",
///             Image = "aws/codebuild/amazonlinux-x86_64-standard:6.0",
///             Type = "LINUX_CONTAINER",
///             ImagePullCredentialsType = "CODEBUILD",
///             HostKernel = "LINUX_KERNEL_6",
///         },
///         LogsConfig = new Aws.CodeBuild.Inputs.ProjectLogsConfigArgs
///         {
///             CloudwatchLogs = new Aws.CodeBuild.Inputs.ProjectLogsConfigCloudwatchLogsArgs
///             {
///                 GroupName = "log-group",
///                 StreamName = "log-stream",
///             },
///             S3Logs = new Aws.CodeBuild.Inputs.ProjectLogsConfigS3LogsArgs
///             {
///                 Status = "ENABLED",
///                 Location = exampleBucket.Id.Apply(id => $"{id}/build-log"),
///             },
///         },
///         Source = new Aws.CodeBuild.Inputs.ProjectSourceArgs
///         {
///             GitSubmodulesConfig = new Aws.CodeBuild.Inputs.ProjectSourceGitSubmodulesConfigArgs
///             {
///                 FetchSubmodules = true,
///             },
///             Type = "GITHUB",
///             Location = "https://github.com/mitchellh/packer.git",
///             GitCloneDepth = 1,
///         },
///         VpcConfig = new Aws.CodeBuild.Inputs.ProjectVpcConfigArgs
///         {
///             VpcId = exampleAwsVpc.Id,
///             Subnets = new[]
///             {
///                 example1.Id,
///                 example2.Id,
///             },
///             SecurityGroupIds = new[]
///             {
///                 example1AwsSecurityGroup.Id,
///                 example2AwsSecurityGroup.Id,
///             },
///         },
///         Name = "test-project",
///         Description = "test_codebuild_project",
///         BuildTimeout = 5,
///         ServiceRole = exampleRole.Arn,
///         SourceVersion = "master",
///         Tags =
///         {
///             { "Environment", "Test" },
///         },
///     });
///
///     var project_with_cache = new Aws.CodeBuild.Project("project-with-cache", new()
///     {
///         Artifacts = new Aws.CodeBuild.Inputs.ProjectArtifactsArgs
///         {
///             Type = "NO_ARTIFACTS",
///         },
///         Cache = new Aws.CodeBuild.Inputs.ProjectCacheArgs
///         {
///             Type = "LOCAL",
///             Modes = new[]
///             {
///                 "LOCAL_DOCKER_LAYER_CACHE",
///                 "LOCAL_SOURCE_CACHE",
///             },
///         },
///         Environment = new Aws.CodeBuild.Inputs.ProjectEnvironmentArgs
///         {
///             EnvironmentVariables = new[]
///             {
///                 new Aws.CodeBuild.Inputs.ProjectEnvironmentEnvironmentVariableArgs
///                 {
///                     Name = "SOME_KEY1",
///                     Value = "SOME_VALUE1",
///                 },
///             },
///             ComputeType = "BUILD_GENERAL1_SMALL",
///             Image = "aws/codebuild/amazonlinux2-x86_64-standard:4.0",
///             Type = "LINUX_CONTAINER",
///             ImagePullCredentialsType = "CODEBUILD",
///         },
///         Source = new Aws.CodeBuild.Inputs.ProjectSourceArgs
///         {
///             Type = "GITHUB",
///             Location = "https://github.com/mitchellh/packer.git",
///             GitCloneDepth = 1,
///         },
///         Name = "test-project-cache",
///         Description = "test_codebuild_project_cache",
///         BuildTimeout = 5,
///         QueuedTimeout = 5,
///         ServiceRole = exampleRole.Arn,
///         Tags =
///         {
///             { "Environment", "Test" },
///         },
///     });
///
///     var project_using_github_app = new Aws.CodeBuild.Project("project-using-github-app", new()
///     {
///         Artifacts = new Aws.CodeBuild.Inputs.ProjectArtifactsArgs
///         {
///             Type = "NO_ARTIFACTS",
///         },
///         Environment = new Aws.CodeBuild.Inputs.ProjectEnvironmentArgs
///         {
///             ComputeType = "BUILD_GENERAL1_SMALL",
///             Image = "aws/codebuild/amazonlinux2-x86_64-standard:4.0",
///             Type = "LINUX_CONTAINER",
///             ImagePullCredentialsType = "CODEBUILD",
///         },
///         Source = new Aws.CodeBuild.Inputs.ProjectSourceArgs
///         {
///             Auth = new Aws.CodeBuild.Inputs.ProjectSourceAuthArgs
///             {
///                 Type = "CODECONNECTIONS",
///                 Resource = "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string",
///             },
///             Type = "GITHUB",
///             Location = "https://github.com/example/example.git",
///         },
///         Name = "project-using-github-app",
///         Description = "gets_source_from_github_via_the_github_app",
///         ServiceRole = exampleRole.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: exampleBucket.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
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
/// 								"codebuild.amazonaws.com",
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
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("logs:CreateLogGroup"),
/// 						pulumi.String("logs:CreateLogStream"),
/// 						pulumi.String("logs:PutLogEvents"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("ec2:CreateNetworkInterface"),
/// 						pulumi.String("ec2:DescribeDhcpOptions"),
/// 						pulumi.String("ec2:DescribeNetworkInterfaces"),
/// 						pulumi.String("ec2:DeleteNetworkInterface"),
/// 						pulumi.String("ec2:DescribeSubnets"),
/// 						pulumi.String("ec2:DescribeSecurityGroups"),
/// 						pulumi.String("ec2:DescribeVpcs"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("ec2:Subnet"),
/// 							Values: pulumi.StringArray{
/// 								example1.Arn,
/// 								example2.Arn,
/// 							},
/// 						},
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("ec2:AuthorizedService"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("codebuild.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("ec2:CreateNetworkInterfacePermission"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:ec2:us-east-1:123456789012:network-interface/*"),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:*"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn,
/// 						exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("codeconnections:GetConnectionToken"),
/// 						pulumi.String("codeconnections:GetConnection"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string"),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Role:   exampleRole.Name,
/// 			Policy: example.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codebuild.NewProject(ctx, "example", &codebuild.ProjectArgs{
/// 			Artifacts: &codebuild.ProjectArtifactsArgs{
/// 				Type: pulumi.String("NO_ARTIFACTS"),
/// 			},
/// 			Cache: &codebuild.ProjectCacheArgs{
/// 				Type:     pulumi.String("S3"),
/// 				Location: exampleBucket.Bucket,
/// 			},
/// 			Environment: &codebuild.ProjectEnvironmentArgs{
/// 				EnvironmentVariables: codebuild.ProjectEnvironmentEnvironmentVariableArray{
/// 					&codebuild.ProjectEnvironmentEnvironmentVariableArgs{
/// 						Name:  pulumi.String("SOME_KEY1"),
/// 						Value: pulumi.String("SOME_VALUE1"),
/// 					},
/// 					&codebuild.ProjectEnvironmentEnvironmentVariableArgs{
/// 						Name:  pulumi.String("SOME_KEY2"),
/// 						Value: pulumi.String("SOME_VALUE2"),
/// 						Type:  pulumi.String("PARAMETER_STORE"),
/// 					},
/// 				},
/// 				ComputeType:              pulumi.String("BUILD_GENERAL1_SMALL"),
/// 				Image:                    pulumi.String("aws/codebuild/amazonlinux-x86_64-standard:6.0"),
/// 				Type:                     pulumi.String("LINUX_CONTAINER"),
/// 				ImagePullCredentialsType: pulumi.String("CODEBUILD"),
/// 				HostKernel:               pulumi.String("LINUX_KERNEL_6"),
/// 			},
/// 			LogsConfig: &codebuild.ProjectLogsConfigArgs{
/// 				CloudwatchLogs: &codebuild.ProjectLogsConfigCloudwatchLogsArgs{
/// 					GroupName:  pulumi.String("log-group"),
/// 					StreamName: pulumi.String("log-stream"),
/// 				},
/// 				S3Logs: &codebuild.ProjectLogsConfigS3LogsArgs{
/// 					Status: pulumi.String("ENABLED"),
/// 					Location: exampleBucket.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 						return fmt.Sprintf("%v/build-log", id), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Source: &codebuild.ProjectSourceArgs{
/// 				GitSubmodulesConfig: &codebuild.ProjectSourceGitSubmodulesConfigArgs{
/// 					FetchSubmodules: pulumi.Bool(true),
/// 				},
/// 				Type:          pulumi.String("GITHUB"),
/// 				Location:      pulumi.String("https://github.com/mitchellh/packer.git"),
/// 				GitCloneDepth: pulumi.Int(1),
/// 			},
/// 			VpcConfig: &codebuild.ProjectVpcConfigArgs{
/// 				VpcId: pulumi.Any(exampleAwsVpc.Id),
/// 				Subnets: pulumi.StringArray{
/// 					example1.Id,
/// 					example2.Id,
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					example1AwsSecurityGroup.Id,
/// 					example2AwsSecurityGroup.Id,
/// 				},
/// 			},
/// 			Name:          pulumi.String("test-project"),
/// 			Description:   pulumi.String("test_codebuild_project"),
/// 			BuildTimeout:  pulumi.Int(5),
/// 			ServiceRole:   exampleRole.Arn,
/// 			SourceVersion: pulumi.String("master"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codebuild.NewProject(ctx, "project-with-cache", &codebuild.ProjectArgs{
/// 			Artifacts: &codebuild.ProjectArtifactsArgs{
/// 				Type: pulumi.String("NO_ARTIFACTS"),
/// 			},
/// 			Cache: &codebuild.ProjectCacheArgs{
/// 				Type: pulumi.String("LOCAL"),
/// 				Modes: pulumi.StringArray{
/// 					pulumi.String("LOCAL_DOCKER_LAYER_CACHE"),
/// 					pulumi.String("LOCAL_SOURCE_CACHE"),
/// 				},
/// 			},
/// 			Environment: &codebuild.ProjectEnvironmentArgs{
/// 				EnvironmentVariables: codebuild.ProjectEnvironmentEnvironmentVariableArray{
/// 					&codebuild.ProjectEnvironmentEnvironmentVariableArgs{
/// 						Name:  pulumi.String("SOME_KEY1"),
/// 						Value: pulumi.String("SOME_VALUE1"),
/// 					},
/// 				},
/// 				ComputeType:              pulumi.String("BUILD_GENERAL1_SMALL"),
/// 				Image:                    pulumi.String("aws/codebuild/amazonlinux2-x86_64-standard:4.0"),
/// 				Type:                     pulumi.String("LINUX_CONTAINER"),
/// 				ImagePullCredentialsType: pulumi.String("CODEBUILD"),
/// 			},
/// 			Source: &codebuild.ProjectSourceArgs{
/// 				Type:          pulumi.String("GITHUB"),
/// 				Location:      pulumi.String("https://github.com/mitchellh/packer.git"),
/// 				GitCloneDepth: pulumi.Int(1),
/// 			},
/// 			Name:          pulumi.String("test-project-cache"),
/// 			Description:   pulumi.String("test_codebuild_project_cache"),
/// 			BuildTimeout:  pulumi.Int(5),
/// 			QueuedTimeout: pulumi.Int(5),
/// 			ServiceRole:   exampleRole.Arn,
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codebuild.NewProject(ctx, "project-using-github-app", &codebuild.ProjectArgs{
/// 			Artifacts: &codebuild.ProjectArtifactsArgs{
/// 				Type: pulumi.String("NO_ARTIFACTS"),
/// 			},
/// 			Environment: &codebuild.ProjectEnvironmentArgs{
/// 				ComputeType:              pulumi.String("BUILD_GENERAL1_SMALL"),
/// 				Image:                    pulumi.String("aws/codebuild/amazonlinux2-x86_64-standard:4.0"),
/// 				Type:                     pulumi.String("LINUX_CONTAINER"),
/// 				ImagePullCredentialsType: pulumi.String("CODEBUILD"),
/// 			},
/// 			Source: &codebuild.ProjectSourceArgs{
/// 				Auth: &codebuild.ProjectSourceAuthArgs{
/// 					Type:     pulumi.String("CODECONNECTIONS"),
/// 					Resource: pulumi.String("arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string"),
/// 				},
/// 				Type:     pulumi.String("GITHUB"),
/// 				Location: pulumi.String("https://github.com/example/example.git"),
/// 			},
/// 			Name:        pulumi.String("project-using-github-app"),
/// 			Description: pulumi.String("gets_source_from_github_via_the_github_app"),
/// 			ServiceRole: exampleRole.Arn,
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
///       identifiers = ["codebuild.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     effect    = "Allow"
///     actions   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents"]
///     resources = ["*"]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["ec2:CreateNetworkInterface", "ec2:DescribeDhcpOptions", "ec2:DescribeNetworkInterfaces", "ec2:DeleteNetworkInterface", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeVpcs"]
///     resources = ["*"]
///   }
///   statements {
///     conditions {
///       test     = "StringEquals"
///       variable = "ec2:Subnet"
///       values   = [example1.arn, example2.arn]
///     }
///     conditions {
///       test     = "StringEquals"
///       variable = "ec2:AuthorizedService"
///       values   = ["codebuild.amazonaws.com"]
///     }
///     effect    = "Allow"
///     actions   = ["ec2:CreateNetworkInterfacePermission"]
///     resources = ["arn:aws:ec2:us-east-1:123456789012:network-interface/*"]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:*"]
///     resources = [aws_s3_bucket.example.arn, "${aws_s3_bucket.example.arn}/*"]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["codeconnections:GetConnectionToken", "codeconnections:GetConnection"]
///     resources = ["arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string"]
///   }
/// }
///
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_bucketacl" "example" {
///   bucket = aws_s3_bucket.example.id
///   acl    = "private"
/// }
/// resource "aws_iam_role" "example" {
///   name               = "example"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "example" {
///   role   = aws_iam_role.example.name
///   policy = data.aws_iam_getpolicydocument.example.json
/// }
/// resource "aws_codebuild_project" "example" {
///   artifacts = {
///     type = "NO_ARTIFACTS"
///   }
///   cache = {
///     type     = "S3"
///     location = aws_s3_bucket.example.bucket
///   }
///   environment = {
///     environment_variables = [{
///       "name"  = "SOME_KEY1"
///       "value" = "SOME_VALUE1"
///       }, {
///       "name"  = "SOME_KEY2"
///       "value" = "SOME_VALUE2"
///       "type"  = "PARAMETER_STORE"
///     }]
///     compute_type                = "BUILD_GENERAL1_SMALL"
///     image                       = "aws/codebuild/amazonlinux-x86_64-standard:6.0"
///     type                        = "LINUX_CONTAINER"
///     image_pull_credentials_type = "CODEBUILD"
///     host_kernel                 = "LINUX_KERNEL_6"
///   }
///   logs_config = {
///     cloudwatch_logs = {
///       group_name  = "log-group"
///       stream_name = "log-stream"
///     }
///     s3_logs = {
///       status   = "ENABLED"
///       location ="${aws_s3_bucket.example.id}/build-log"
///     }
///   }
///   source = {
///     git_submodules_config = {
///       fetch_submodules = true
///     }
///     type            = "GITHUB"
///     location        = "https://github.com/mitchellh/packer.git"
///     git_clone_depth = 1
///   }
///   vpc_config = {
///     vpc_id             = exampleAwsVpc.id
///     subnets            = [example1.id, example2.id]
///     security_group_ids = [example1AwsSecurityGroup.id, example2AwsSecurityGroup.id]
///   }
///   name           = "test-project"
///   description    = "test_codebuild_project"
///   build_timeout  = 5
///   service_role   = aws_iam_role.example.arn
///   source_version = "master"
///   tags = {
///     "Environment" = "Test"
///   }
/// }
/// resource "aws_codebuild_project" "project-with-cache" {
///   artifacts = {
///     type = "NO_ARTIFACTS"
///   }
///   cache = {
///     type  = "LOCAL"
///     modes = ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE"]
///   }
///   environment = {
///     environment_variables = [{
///       "name"  = "SOME_KEY1"
///       "value" = "SOME_VALUE1"
///     }]
///     compute_type                = "BUILD_GENERAL1_SMALL"
///     image                       = "aws/codebuild/amazonlinux2-x86_64-standard:4.0"
///     type                        = "LINUX_CONTAINER"
///     image_pull_credentials_type = "CODEBUILD"
///   }
///   source = {
///     type            = "GITHUB"
///     location        = "https://github.com/mitchellh/packer.git"
///     git_clone_depth = 1
///   }
///   name           = "test-project-cache"
///   description    = "test_codebuild_project_cache"
///   build_timeout  = 5
///   queued_timeout = 5
///   service_role   = aws_iam_role.example.arn
///   tags = {
///     "Environment" = "Test"
///   }
/// }
/// resource "aws_codebuild_project" "project-using-github-app" {
///   artifacts = {
///     type = "NO_ARTIFACTS"
///   }
///   environment = {
///     compute_type                = "BUILD_GENERAL1_SMALL"
///     image                       = "aws/codebuild/amazonlinux2-x86_64-standard:4.0"
///     type                        = "LINUX_CONTAINER"
///     image_pull_credentials_type = "CODEBUILD"
///   }
///   source = {
///     auth = {
///       type     = "CODECONNECTIONS"
///       resource = "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string"
///     }
///     type     = "GITHUB"
///     location = "https://github.com/example/example.git"
///   }
///   name         = "project-using-github-app"
///   description  = "gets_source_from_github_via_the_github_app"
///   service_role = aws_iam_role.example.arn
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
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.codebuild.Project;
/// import com.pulumi.aws.codebuild.ProjectArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectArtifactsArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectCacheArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectEnvironmentArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectEnvironmentEnvironmentVariableArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectLogsConfigArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectLogsConfigCloudwatchLogsArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectLogsConfigS3LogsArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectSourceArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectSourceGitSubmodulesConfigArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectVpcConfigArgs;
/// import com.pulumi.aws.codebuild.inputs.ProjectSourceAuthArgs;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(exampleBucket.id())
///             .acl("private")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("codebuild.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "logs:CreateLogGroup",
///                         "logs:CreateLogStream",
///                         "logs:PutLogEvents")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "ec2:CreateNetworkInterface",
///                         "ec2:DescribeDhcpOptions",
///                         "ec2:DescribeNetworkInterfaces",
///                         "ec2:DeleteNetworkInterface",
///                         "ec2:DescribeSubnets",
///                         "ec2:DescribeSecurityGroups",
///                         "ec2:DescribeVpcs")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .conditions(
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("ec2:Subnet")
///                             .values(
///                                 example1.arn(),
///                                 example2.arn())
///                             .build(),
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("ec2:AuthorizedService")
///                             .values("codebuild.amazonaws.com")
///                             .build())
///                     .effect("Allow")
///                     .actions("ec2:CreateNetworkInterfacePermission")
///                     .resources("arn:aws:ec2:us-east-1:123456789012:network-interface/*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("s3:*")
///                     .resources(
///                         exampleBucket.arn(),
///                         exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "codeconnections:GetConnectionToken",
///                         "codeconnections:GetConnection")
///                     .resources("arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string")
///                     .build())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .role(exampleRole.name())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .artifacts(ProjectArtifactsArgs.builder()
///                 .type("NO_ARTIFACTS")
///                 .build())
///             .cache(ProjectCacheArgs.builder()
///                 .type("S3")
///                 .location(exampleBucket.bucket())
///                 .build())
///             .environment(ProjectEnvironmentArgs.builder()
///                 .environmentVariables(
///                     ProjectEnvironmentEnvironmentVariableArgs.builder()
///                         .name("SOME_KEY1")
///                         .value("SOME_VALUE1")
///                         .build(),
///                     ProjectEnvironmentEnvironmentVariableArgs.builder()
///                         .name("SOME_KEY2")
///                         .value("SOME_VALUE2")
///                         .type("PARAMETER_STORE")
///                         .build())
///                 .computeType("BUILD_GENERAL1_SMALL")
///                 .image("aws/codebuild/amazonlinux-x86_64-standard:6.0")
///                 .type("LINUX_CONTAINER")
///                 .imagePullCredentialsType("CODEBUILD")
///                 .hostKernel("LINUX_KERNEL_6")
///                 .build())
///             .logsConfig(ProjectLogsConfigArgs.builder()
///                 .cloudwatchLogs(ProjectLogsConfigCloudwatchLogsArgs.builder()
///                     .groupName("log-group")
///                     .streamName("log-stream")
///                     .build())
///                 .s3Logs(ProjectLogsConfigS3LogsArgs.builder()
///                     .status("ENABLED")
///                     .location(exampleBucket.id().applyValue(_id -> String.format("%s/build-log", _id)))
///                     .build())
///                 .build())
///             .source(ProjectSourceArgs.builder()
///                 .gitSubmodulesConfig(ProjectSourceGitSubmodulesConfigArgs.builder()
///                     .fetchSubmodules(true)
///                     .build())
///                 .type("GITHUB")
///                 .location("https://github.com/mitchellh/packer.git")
///                 .gitCloneDepth(1)
///                 .build())
///             .vpcConfig(ProjectVpcConfigArgs.builder()
///                 .vpcId(exampleAwsVpc.id())
///                 .subnets(
///                     example1.id(),
///                     example2.id())
///                 .securityGroupIds(
///                     example1AwsSecurityGroup.id(),
///                     example2AwsSecurityGroup.id())
///                 .build())
///             .name("test-project")
///             .description("test_codebuild_project")
///             .buildTimeout(5)
///             .serviceRole(exampleRole.arn())
///             .sourceVersion("master")
///             .tags(Map.of("Environment", "Test"))
///             .build());
///
///         var project_with_cache = new Project("project-with-cache", ProjectArgs.builder()
///             .artifacts(ProjectArtifactsArgs.builder()
///                 .type("NO_ARTIFACTS")
///                 .build())
///             .cache(ProjectCacheArgs.builder()
///                 .type("LOCAL")
///                 .modes(
///                     "LOCAL_DOCKER_LAYER_CACHE",
///                     "LOCAL_SOURCE_CACHE")
///                 .build())
///             .environment(ProjectEnvironmentArgs.builder()
///                 .environmentVariables(ProjectEnvironmentEnvironmentVariableArgs.builder()
///                     .name("SOME_KEY1")
///                     .value("SOME_VALUE1")
///                     .build())
///                 .computeType("BUILD_GENERAL1_SMALL")
///                 .image("aws/codebuild/amazonlinux2-x86_64-standard:4.0")
///                 .type("LINUX_CONTAINER")
///                 .imagePullCredentialsType("CODEBUILD")
///                 .build())
///             .source(ProjectSourceArgs.builder()
///                 .type("GITHUB")
///                 .location("https://github.com/mitchellh/packer.git")
///                 .gitCloneDepth(1)
///                 .build())
///             .name("test-project-cache")
///             .description("test_codebuild_project_cache")
///             .buildTimeout(5)
///             .queuedTimeout(5)
///             .serviceRole(exampleRole.arn())
///             .tags(Map.of("Environment", "Test"))
///             .build());
///
///         var project_using_github_app = new Project("project-using-github-app", ProjectArgs.builder()
///             .artifacts(ProjectArtifactsArgs.builder()
///                 .type("NO_ARTIFACTS")
///                 .build())
///             .environment(ProjectEnvironmentArgs.builder()
///                 .computeType("BUILD_GENERAL1_SMALL")
///                 .image("aws/codebuild/amazonlinux2-x86_64-standard:4.0")
///                 .type("LINUX_CONTAINER")
///                 .imagePullCredentialsType("CODEBUILD")
///                 .build())
///             .source(ProjectSourceArgs.builder()
///                 .auth(ProjectSourceAuthArgs.builder()
///                     .type("CODECONNECTIONS")
///                     .resource("arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string")
///                     .build())
///                 .type("GITHUB")
///                 .location("https://github.com/example/example.git")
///                 .build())
///             .name("project-using-github-app")
///             .description("gets_source_from_github_via_the_github_app")
///             .serviceRole(exampleRole.arn())
///             .build());
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
///       bucket: example
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       acl: private
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       role: ${exampleRole.name}
///       policy: ${example.json}
///   exampleProject:
///     type: aws:codebuild:Project
///     name: example
///     properties:
///       artifacts:
///         type: NO_ARTIFACTS
///       cache:
///         type: S3
///         location: ${exampleBucket.bucket}
///       environment:
///         environmentVariables:
///           - name: SOME_KEY1
///             value: SOME_VALUE1
///           - name: SOME_KEY2
///             value: SOME_VALUE2
///             type: PARAMETER_STORE
///         computeType: BUILD_GENERAL1_SMALL
///         image: aws/codebuild/amazonlinux-x86_64-standard:6.0
///         type: LINUX_CONTAINER
///         imagePullCredentialsType: CODEBUILD
///         hostKernel: LINUX_KERNEL_6
///       logsConfig:
///         cloudwatchLogs:
///           groupName: log-group
///           streamName: log-stream
///         s3Logs:
///           status: ENABLED
///           location: ${exampleBucket.id}/build-log
///       source:
///         gitSubmodulesConfig:
///           fetchSubmodules: true
///         type: GITHUB
///         location: https://github.com/mitchellh/packer.git
///         gitCloneDepth: 1
///       vpcConfig:
///         vpcId: ${exampleAwsVpc.id}
///         subnets:
///           - ${example1.id}
///           - ${example2.id}
///         securityGroupIds:
///           - ${example1AwsSecurityGroup.id}
///           - ${example2AwsSecurityGroup.id}
///       name: test-project
///       description: test_codebuild_project
///       buildTimeout: 5
///       serviceRole: ${exampleRole.arn}
///       sourceVersion: master
///       tags:
///         Environment: Test
///   project-with-cache:
///     type: aws:codebuild:Project
///     properties:
///       artifacts:
///         type: NO_ARTIFACTS
///       cache:
///         type: LOCAL
///         modes:
///           - LOCAL_DOCKER_LAYER_CACHE
///           - LOCAL_SOURCE_CACHE
///       environment:
///         environmentVariables:
///           - name: SOME_KEY1
///             value: SOME_VALUE1
///         computeType: BUILD_GENERAL1_SMALL
///         image: aws/codebuild/amazonlinux2-x86_64-standard:4.0
///         type: LINUX_CONTAINER
///         imagePullCredentialsType: CODEBUILD
///       source:
///         type: GITHUB
///         location: https://github.com/mitchellh/packer.git
///         gitCloneDepth: 1
///       name: test-project-cache
///       description: test_codebuild_project_cache
///       buildTimeout: 5
///       queuedTimeout: 5
///       serviceRole: ${exampleRole.arn}
///       tags:
///         Environment: Test
///   project-using-github-app:
///     type: aws:codebuild:Project
///     properties:
///       artifacts:
///         type: NO_ARTIFACTS
///       environment:
///         computeType: BUILD_GENERAL1_SMALL
///         image: aws/codebuild/amazonlinux2-x86_64-standard:4.0
///         type: LINUX_CONTAINER
///         imagePullCredentialsType: CODEBUILD
///       source:
///         auth:
///           type: CODECONNECTIONS
///           resource: arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string
///         type: GITHUB
///         location: https://github.com/example/example.git
///       name: project-using-github-app
///       description: gets_source_from_github_via_the_github_app
///       serviceRole: ${exampleRole.arn}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - codebuild.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - logs:CreateLogGroup
///               - logs:CreateLogStream
///               - logs:PutLogEvents
///             resources:
///               - '*'
///           - effect: Allow
///             actions:
///               - ec2:CreateNetworkInterface
///               - ec2:DescribeDhcpOptions
///               - ec2:DescribeNetworkInterfaces
///               - ec2:DeleteNetworkInterface
///               - ec2:DescribeSubnets
///               - ec2:DescribeSecurityGroups
///               - ec2:DescribeVpcs
///             resources:
///               - '*'
///           - conditions:
///               - test: StringEquals
///                 variable: ec2:Subnet
///                 values:
///                   - ${example1.arn}
///                   - ${example2.arn}
///               - test: StringEquals
///                 variable: ec2:AuthorizedService
///                 values:
///                   - codebuild.amazonaws.com
///             effect: Allow
///             actions:
///               - ec2:CreateNetworkInterfacePermission
///             resources:
///               - arn:aws:ec2:us-east-1:123456789012:network-interface/*
///           - effect: Allow
///             actions:
///               - s3:*
///             resources:
///               - ${exampleBucket.arn}
///               - ${exampleBucket.arn}/*
///           - effect: Allow
///             actions:
///               - codeconnections:GetConnectionToken
///               - codeconnections:GetConnection
///             resources:
///               - arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string
/// ```
///
///
/// ### Runner Project
///
/// While no special configuration is required for `aws.codebuild.Project` to create a project as a Runner Project, an `aws.codebuild.Webhook` resource with an appropriate `filterGroup` is required.
/// See the `aws.codebuild.Webhook` resource documentation example for more details.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the CodeBuild project.
///
///
/// Using `pulumi import`, import CodeBuild Project using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/project:Project name project-name
/// ```
class Project extends pulumi.CustomResource {
  /// ARN of the CodeBuild project.
  late final pulumi.Output<String> arn;
  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectArtifacts> artifacts;
  /// Specify a maximum number of additional automatic retries after a failed build.
  /// The default is 0.
  late final pulumi.Output<int> autoRetryLimit;
  /// Generates a publicly-accessible URL for the projects build badge. Available as
  /// `badgeUrl` attribute when enabled.
  late final pulumi.Output<bool?> badgeEnabled;
  /// URL of the build badge when `badgeEnabled` is enabled.
  late final pulumi.Output<String> badgeUrl;
  /// Defines the batch build options for the project.
  late final pulumi.Output<ProjectBuildBatchConfig?> buildBatchConfig;
  /// Number of minutes, from 5 to 2160 (36 hours), for AWS CodeBuild to wait until timing out
  /// any related build that does not get marked as completed. The default is 60 minutes. The `buildTimeout` property is
  /// not available on the `Lambda` compute type.
  late final pulumi.Output<int?> buildTimeout;
  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectCache?> cache;
  /// Specify a maximum number of concurrent builds for the project. The value
  /// specified must be greater than 0 and less than the account concurrent running builds limit.
  late final pulumi.Output<int?> concurrentBuildLimit;
  /// Short description of the project.
  late final pulumi.Output<String> description;
  /// KMS customer master key (CMK) to be used for encrypting
  /// the build project's build output artifacts.
  late final pulumi.Output<String> encryptionKey;
  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectEnvironment> environment;
  /// A set of file system locations to mount inside the build. File system locations
  /// are documented below.
  late final pulumi.Output<List<ProjectFileSystemLocation>?> fileSystemLocations;
  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectLogsConfig?> logsConfig;
  /// Project's name.
  late final pulumi.Output<String> name;
  /// Specifies the visibility of the project's builds. Possible values are: `PUBLIC_READ`
  /// and `PRIVATE`. Default value is `PRIVATE`.
  late final pulumi.Output<String?> projectVisibility;
  /// The project identifier used with the public build APIs.
  late final pulumi.Output<String> publicProjectAlias;
  /// Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it
  /// times out. The default is 8 hours. The `queuedTimeout` property is not available on the `Lambda` compute type.
  late final pulumi.Output<int?> queuedTimeout;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and
  /// Amazon S3 artifacts for the project's builds in order to display them publicly. Only applicable if
  /// `projectVisibility` is `PUBLIC_READ`.
  late final pulumi.Output<String?> resourceAccessRole;
  /// Configuration block. Detailed below.
  late final pulumi.Output<List<ProjectSecondaryArtifact>?> secondaryArtifacts;
  /// Configuration block. Detailed below.
  late final pulumi.Output<List<ProjectSecondarySourceVersion>?> secondarySourceVersions;
  /// Configuration block. Detailed below.
  late final pulumi.Output<List<ProjectSecondarySource>?> secondarySources;
  /// ARN of the AWS Identity and Access Management (IAM) role that
  /// enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
  late final pulumi.Output<String> serviceRole;
  /// Configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ProjectSource> source;
  /// Version of the build input to be built for this project. If not specified, the latest
  /// version is used.
  late final pulumi.Output<String?> sourceVersion;
  /// Map of tags to assign to the resource. If configured with a provider
  /// `defaultTags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider
  /// `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectVpcConfig?> vpcConfig;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_codebuild_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    artifacts = registerOutput<ProjectArtifacts>('artifacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectArtifacts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoRetryLimit = registerOutput<int>('autoRetryLimit');
    badgeEnabled = registerOutput<bool?>('badgeEnabled');
    badgeUrl = registerOutput<String>('badgeUrl');
    buildBatchConfig = registerOutput<ProjectBuildBatchConfig?>('buildBatchConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectBuildBatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    buildTimeout = registerOutput<int?>('buildTimeout');
    cache = registerOutput<ProjectCache?>('cache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectCache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    concurrentBuildLimit = registerOutput<int?>('concurrentBuildLimit');
    description = registerOutput<String>('description');
    encryptionKey = registerOutput<String>('encryptionKey');
    environment = registerOutput<ProjectEnvironment>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileSystemLocations = registerOutput<List<ProjectFileSystemLocation>?>('fileSystemLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectFileSystemLocation>(guardedValue, (value) => ProjectFileSystemLocation.fromMap((value as Map).cast<String, dynamic>())); });
    logsConfig = registerOutput<ProjectLogsConfig?>('logsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    projectVisibility = registerOutput<String?>('projectVisibility');
    publicProjectAlias = registerOutput<String>('publicProjectAlias');
    queuedTimeout = registerOutput<int?>('queuedTimeout');
    region = registerOutput<String>('region');
    resourceAccessRole = registerOutput<String?>('resourceAccessRole');
    secondaryArtifacts = registerOutput<List<ProjectSecondaryArtifact>?>('secondaryArtifacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondaryArtifact>(guardedValue, (value) => ProjectSecondaryArtifact.fromMap((value as Map).cast<String, dynamic>())); });
    secondarySourceVersions = registerOutput<List<ProjectSecondarySourceVersion>?>('secondarySourceVersions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondarySourceVersion>(guardedValue, (value) => ProjectSecondarySourceVersion.fromMap((value as Map).cast<String, dynamic>())); });
    secondarySources = registerOutput<List<ProjectSecondarySource>?>('secondarySources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondarySource>(guardedValue, (value) => ProjectSecondarySource.fromMap((value as Map).cast<String, dynamic>())); });
    serviceRole = registerOutput<String>('serviceRole');
    source = registerOutput<ProjectSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceVersion = registerOutput<String?>('sourceVersion');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfig = registerOutput<ProjectVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    artifacts = registerOutput<ProjectArtifacts>('artifacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectArtifacts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoRetryLimit = registerOutput<int>('autoRetryLimit');
    badgeEnabled = registerOutput<bool?>('badgeEnabled');
    badgeUrl = registerOutput<String>('badgeUrl');
    buildBatchConfig = registerOutput<ProjectBuildBatchConfig?>('buildBatchConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectBuildBatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    buildTimeout = registerOutput<int?>('buildTimeout');
    cache = registerOutput<ProjectCache?>('cache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectCache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    concurrentBuildLimit = registerOutput<int?>('concurrentBuildLimit');
    description = registerOutput<String>('description');
    encryptionKey = registerOutput<String>('encryptionKey');
    environment = registerOutput<ProjectEnvironment>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileSystemLocations = registerOutput<List<ProjectFileSystemLocation>?>('fileSystemLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectFileSystemLocation>(guardedValue, (value) => ProjectFileSystemLocation.fromMap((value as Map).cast<String, dynamic>())); });
    logsConfig = registerOutput<ProjectLogsConfig?>('logsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    projectVisibility = registerOutput<String?>('projectVisibility');
    publicProjectAlias = registerOutput<String>('publicProjectAlias');
    queuedTimeout = registerOutput<int?>('queuedTimeout');
    region = registerOutput<String>('region');
    resourceAccessRole = registerOutput<String?>('resourceAccessRole');
    secondaryArtifacts = registerOutput<List<ProjectSecondaryArtifact>?>('secondaryArtifacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondaryArtifact>(guardedValue, (value) => ProjectSecondaryArtifact.fromMap((value as Map).cast<String, dynamic>())); });
    secondarySourceVersions = registerOutput<List<ProjectSecondarySourceVersion>?>('secondarySourceVersions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondarySourceVersion>(guardedValue, (value) => ProjectSecondarySourceVersion.fromMap((value as Map).cast<String, dynamic>())); });
    secondarySources = registerOutput<List<ProjectSecondarySource>?>('secondarySources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondarySource>(guardedValue, (value) => ProjectSecondarySource.fromMap((value as Map).cast<String, dynamic>())); });
    serviceRole = registerOutput<String>('serviceRole');
    source = registerOutput<ProjectSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceVersion = registerOutput<String?>('sourceVersion');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfig = registerOutput<ProjectVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Project] resource.
  Project.reference(String urn)
    : super(
        'aws:codebuild/project:Project',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    artifacts = registerOutput<ProjectArtifacts>('artifacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectArtifacts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoRetryLimit = registerOutput<int>('autoRetryLimit');
    badgeEnabled = registerOutput<bool?>('badgeEnabled');
    badgeUrl = registerOutput<String>('badgeUrl');
    buildBatchConfig = registerOutput<ProjectBuildBatchConfig?>('buildBatchConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectBuildBatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    buildTimeout = registerOutput<int?>('buildTimeout');
    cache = registerOutput<ProjectCache?>('cache', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectCache.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    concurrentBuildLimit = registerOutput<int?>('concurrentBuildLimit');
    description = registerOutput<String>('description');
    encryptionKey = registerOutput<String>('encryptionKey');
    environment = registerOutput<ProjectEnvironment>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileSystemLocations = registerOutput<List<ProjectFileSystemLocation>?>('fileSystemLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectFileSystemLocation>(guardedValue, (value) => ProjectFileSystemLocation.fromMap((value as Map).cast<String, dynamic>())); });
    logsConfig = registerOutput<ProjectLogsConfig?>('logsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    projectVisibility = registerOutput<String?>('projectVisibility');
    publicProjectAlias = registerOutput<String>('publicProjectAlias');
    queuedTimeout = registerOutput<int?>('queuedTimeout');
    region = registerOutput<String>('region');
    resourceAccessRole = registerOutput<String?>('resourceAccessRole');
    secondaryArtifacts = registerOutput<List<ProjectSecondaryArtifact>?>('secondaryArtifacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondaryArtifact>(guardedValue, (value) => ProjectSecondaryArtifact.fromMap((value as Map).cast<String, dynamic>())); });
    secondarySourceVersions = registerOutput<List<ProjectSecondarySourceVersion>?>('secondarySourceVersions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondarySourceVersion>(guardedValue, (value) => ProjectSecondarySourceVersion.fromMap((value as Map).cast<String, dynamic>())); });
    secondarySources = registerOutput<List<ProjectSecondarySource>?>('secondarySources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProjectSecondarySource>(guardedValue, (value) => ProjectSecondarySource.fromMap((value as Map).cast<String, dynamic>())); });
    serviceRole = registerOutput<String>('serviceRole');
    source = registerOutput<ProjectSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceVersion = registerOutput<String?>('sourceVersion');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfig = registerOutput<ProjectVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
