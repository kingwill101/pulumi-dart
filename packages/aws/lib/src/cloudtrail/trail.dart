import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_advanced_event_selector.dart';
import 'trail_args.dart';
import 'trail_event_selector.dart';
import 'trail_insight_selector.dart';

/// Provides a CloudTrail resource.
///
/// > **Tip:** For a multi-region trail, this resource must be in the home region of the trail.
///
/// > **Tip:** For an organization trail, this resource must be in the master account of the organization.
///
/// ## Example Usage
///
/// ### Basic
///
/// Enable CloudTrail to capture all compatible management events in region.
/// For capturing events from services like IAM, `include_global_service_events` must be enabled.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "my-test-trail",
///     forceDestroy: true,
/// });
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             sid: "AWSCloudTrailAclCheck",
///             effect: "Allow",
///             principals: [{
///                 type: "Service",
///                 identifiers: ["cloudtrail.amazonaws.com"],
///             }],
///             actions: ["s3:GetBucketAcl"],
///             resources: [exampleBucket.arn],
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "aws:SourceArn",
///                 values: [Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => `arn:${currentGetPartition.partition}:cloudtrail:${currentGetRegion.region}:${current.accountId}:trail/example`)],
///             }],
///         },
///         {
///             sid: "AWSCloudTrailWrite",
///             effect: "Allow",
///             principals: [{
///                 type: "Service",
///                 identifiers: ["cloudtrail.amazonaws.com"],
///             }],
///             actions: ["s3:PutObject"],
///             resources: [Promise.all([exampleBucket.arn, current]).then(([arn, current]) => `${arn}/prefix/AWSLogs/${current.accountId}/*`)],
///             conditions: [
///                 {
///                     test: "StringEquals",
///                     variable: "s3:x-amz-acl",
///                     values: ["bucket-owner-full-control"],
///                 },
///                 {
///                     test: "StringEquals",
///                     variable: "aws:SourceArn",
///                     values: [Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => `arn:${currentGetPartition.partition}:cloudtrail:${currentGetRegion.region}:${current.accountId}:trail/example`)],
///                 },
///             ],
///         },
///     ],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
///     bucket: exampleBucket.id,
///     policy: example.apply(example => example.json),
/// });
/// const exampleTrail = new aws.cloudtrail.Trail("example", {
///     name: "example",
///     s3BucketName: exampleBucket.id,
///     s3KeyPrefix: "prefix",
///     includeGlobalServiceEvents: false,
/// }, {
///     dependsOn: [exampleBucketPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example",
///     bucket="my-test-trail",
///     force_destroy=True)
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// current_get_region = aws.get_region()
/// example = aws.iam.get_policy_document_output(statements=[
///     {
///         "sid": "AWSCloudTrailAclCheck",
///         "effect": "Allow",
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["cloudtrail.amazonaws.com"],
///         }],
///         "actions": ["s3:GetBucketAcl"],
///         "resources": [example_bucket.arn],
///         "conditions": [{
///             "test": "StringEquals",
///             "variable": "aws:SourceArn",
///             "values": [f"arn:{current_get_partition.partition}:cloudtrail:{current_get_region.region}:{current.account_id}:trail/example"],
///         }],
///     },
///     {
///         "sid": "AWSCloudTrailWrite",
///         "effect": "Allow",
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["cloudtrail.amazonaws.com"],
///         }],
///         "actions": ["s3:PutObject"],
///         "resources": [example_bucket.arn.apply(lambda arn: f"{arn}/prefix/AWSLogs/{current.account_id}/*")],
///         "conditions": [
///             {
///                 "test": "StringEquals",
///                 "variable": "s3:x-amz-acl",
///                 "values": ["bucket-owner-full-control"],
///             },
///             {
///                 "test": "StringEquals",
///                 "variable": "aws:SourceArn",
///                 "values": [f"arn:{current_get_partition.partition}:cloudtrail:{current_get_region.region}:{current.account_id}:trail/example"],
///             },
///         ],
///     },
/// ])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
///     bucket=example_bucket.id,
///     policy=example.json)
/// example_trail = aws.cloudtrail.Trail("example",
///     name="example",
///     s3_bucket_name=example_bucket.id,
///     s3_key_prefix="prefix",
///     include_global_service_events=False,
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
///         BucketName = "my-test-trail",
///         ForceDestroy = true,
///     });
///
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "AWSCloudTrailAclCheck",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "cloudtrail.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:GetBucketAcl",
///                 },
///                 Resources = new[]
///                 {
///                     exampleBucket.Arn,
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:cloudtrail:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:trail/example",
///                         },
///                     },
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "AWSCloudTrailWrite",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "cloudtrail.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{exampleBucket.Arn}/prefix/AWSLogs/{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}/*",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "s3:x-amz-acl",
///                         Values = new[]
///                         {
///                             "bucket-owner-full-control",
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:cloudtrail:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:trail/example",
///                         },
///                     },
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
///     var exampleTrail = new Aws.CloudTrail.Trail("example", new()
///     {
///         Name = "example",
///         S3BucketName = exampleBucket.Id,
///         S3KeyPrefix = "prefix",
///         IncludeGlobalServiceEvents = false,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("my-test-trail"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Sid:    pulumi.String("AWSCloudTrailAclCheck"),
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("cloudtrail.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetBucketAcl"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn,
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.Sprintf("arn:%v:cloudtrail:%v:%v:trail/example", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Sid:    pulumi.String("AWSCloudTrailWrite"),
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("cloudtrail.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/prefix/AWSLogs/%v/*", arn, current.AccountId), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("s3:x-amz-acl"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("bucket-owner-full-control"),
/// 							},
/// 						},
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.Sprintf("arn:%v:cloudtrail:%v:%v:trail/example", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// 							},
/// 						},
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
/// 		_, err = cloudtrail.NewTrail(ctx, "example", &cloudtrail.TrailArgs{
/// 			Name:                       pulumi.String("example"),
/// 			S3BucketName:               exampleBucket.ID(),
/// 			S3KeyPrefix:                pulumi.String("prefix"),
/// 			IncludeGlobalServiceEvents: pulumi.Bool(false),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.cloudtrail.Trail;
/// import com.pulumi.aws.cloudtrail.TrailArgs;
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
///             .bucket("my-test-trail")
///             .forceDestroy(true)
///             .build());
///
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("AWSCloudTrailAclCheck")
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("cloudtrail.amazonaws.com")
///                         .build())
///                     .actions("s3:GetBucketAcl")
///                     .resources(exampleBucket.arn())
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("aws:SourceArn")
///                         .values(String.format("arn:%s:cloudtrail:%s:%s:trail/example", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
///                         .build())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("AWSCloudTrailWrite")
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("cloudtrail.amazonaws.com")
///                         .build())
///                     .actions("s3:PutObject")
///                     .resources(exampleBucket.arn().applyValue(_arn -> String.format("%s/prefix/AWSLogs/%s/*", _arn,current.accountId())))
///                     .conditions(
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("s3:x-amz-acl")
///                             .values("bucket-owner-full-control")
///                             .build(),
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("aws:SourceArn")
///                             .values(String.format("arn:%s:cloudtrail:%s:%s:trail/example", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
///                             .build())
///                     .build())
///             .build());
///
///         var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.id())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///         var exampleTrail = new Trail("exampleTrail", TrailArgs.builder()
///             .name("example")
///             .s3BucketName(exampleBucket.id())
///             .s3KeyPrefix("prefix")
///             .includeGlobalServiceEvents(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleBucketPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTrail:
///     type: aws:cloudtrail:Trail
///     name: example
///     properties:
///       name: example
///       s3BucketName: ${exampleBucket.id}
///       s3KeyPrefix: prefix
///       includeGlobalServiceEvents: false
///     options:
///       dependsOn:
///         - ${exampleBucketPolicy}
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: my-test-trail
///       forceDestroy: true
///   exampleBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: AWSCloudTrailAclCheck
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - cloudtrail.amazonaws.com
///             actions:
///               - s3:GetBucketAcl
///             resources:
///               - ${exampleBucket.arn}
///             conditions:
///               - test: StringEquals
///                 variable: aws:SourceArn
///                 values:
///                   - arn:${currentGetPartition.partition}:cloudtrail:${currentGetRegion.region}:${current.accountId}:trail/example
///           - sid: AWSCloudTrailWrite
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - cloudtrail.amazonaws.com
///             actions:
///               - s3:PutObject
///             resources:
///               - ${exampleBucket.arn}/prefix/AWSLogs/${current.accountId}/*
///             conditions:
///               - test: StringEquals
///                 variable: s3:x-amz-acl
///                 values:
///                   - bucket-owner-full-control
///               - test: StringEquals
///                 variable: aws:SourceArn
///                 values:
///                   - arn:${currentGetPartition.partition}:cloudtrail:${currentGetRegion.region}:${current.accountId}:trail/example
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ### Data Event Logging
///
/// CloudTrail can log [Data Events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html) for certain services such as S3 objects and Lambda function invocations. Additional information about data event configuration can be found in the following links:
///
/// * [CloudTrail API DataResource documentation](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_DataResource.html) (for basic event selector).
/// * [CloudTrail API AdvancedFieldSelector documentation](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html) (for advanced event selector).
///
/// ### Logging All Lambda Function Invocations By Using Basic Event Selectors
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudtrail.Trail("example", {eventSelectors: [{
///     readWriteType: "All",
///     includeManagementEvents: true,
///     dataResources: [{
///         type: "AWS::Lambda::Function",
///         values: ["arn:aws:lambda"],
///     }],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudtrail.Trail("example", event_selectors=[{
///     "read_write_type": "All",
///     "include_management_events": True,
///     "data_resources": [{
///         "type": "AWS::Lambda::Function",
///         "values": ["arn:aws:lambda"],
///     }],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudTrail.Trail("example", new()
///     {
///         EventSelectors = new[]
///         {
///             new Aws.CloudTrail.Inputs.TrailEventSelectorArgs
///             {
///                 ReadWriteType = "All",
///                 IncludeManagementEvents = true,
///                 DataResources = new[]
///                 {
///                     new Aws.CloudTrail.Inputs.TrailEventSelectorDataResourceArgs
///                     {
///                         Type = "AWS::Lambda::Function",
///                         Values = new[]
///                         {
///                             "arn:aws:lambda",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudtrail.NewTrail(ctx, "example", &cloudtrail.TrailArgs{
/// 			EventSelectors: cloudtrail.TrailEventSelectorArray{
/// 				&cloudtrail.TrailEventSelectorArgs{
/// 					ReadWriteType:           pulumi.String("All"),
/// 					IncludeManagementEvents: pulumi.Bool(true),
/// 					DataResources: cloudtrail.TrailEventSelectorDataResourceArray{
/// 						&cloudtrail.TrailEventSelectorDataResourceArgs{
/// 							Type: pulumi.String("AWS::Lambda::Function"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("arn:aws:lambda"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.aws.cloudtrail.Trail;
/// import com.pulumi.aws.cloudtrail.TrailArgs;
/// import com.pulumi.aws.cloudtrail.inputs.TrailEventSelectorArgs;
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
///         var example = new Trail("example", TrailArgs.builder()
///             .eventSelectors(TrailEventSelectorArgs.builder()
///                 .readWriteType("All")
///                 .includeManagementEvents(true)
///                 .dataResources(TrailEventSelectorDataResourceArgs.builder()
///                     .type("AWS::Lambda::Function")
///                     .values("arn:aws:lambda")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudtrail:Trail
///     properties:
///       eventSelectors:
///         - readWriteType: All
///           includeManagementEvents: true
///           dataResources:
///             - type: AWS::Lambda::Function
///               values:
///                 - arn:aws:lambda
/// ```
///
///
/// ### Logging All S3 Object Events By Using Basic Event Selectors
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudtrail.Trail("example", {eventSelectors: [{
///     readWriteType: "All",
///     includeManagementEvents: true,
///     dataResources: [{
///         type: "AWS::S3::Object",
///         values: ["arn:aws:s3"],
///     }],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudtrail.Trail("example", event_selectors=[{
///     "read_write_type": "All",
///     "include_management_events": True,
///     "data_resources": [{
///         "type": "AWS::S3::Object",
///         "values": ["arn:aws:s3"],
///     }],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudTrail.Trail("example", new()
///     {
///         EventSelectors = new[]
///         {
///             new Aws.CloudTrail.Inputs.TrailEventSelectorArgs
///             {
///                 ReadWriteType = "All",
///                 IncludeManagementEvents = true,
///                 DataResources = new[]
///                 {
///                     new Aws.CloudTrail.Inputs.TrailEventSelectorDataResourceArgs
///                     {
///                         Type = "AWS::S3::Object",
///                         Values = new[]
///                         {
///                             "arn:aws:s3",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudtrail.NewTrail(ctx, "example", &cloudtrail.TrailArgs{
/// 			EventSelectors: cloudtrail.TrailEventSelectorArray{
/// 				&cloudtrail.TrailEventSelectorArgs{
/// 					ReadWriteType:           pulumi.String("All"),
/// 					IncludeManagementEvents: pulumi.Bool(true),
/// 					DataResources: cloudtrail.TrailEventSelectorDataResourceArray{
/// 						&cloudtrail.TrailEventSelectorDataResourceArgs{
/// 							Type: pulumi.String("AWS::S3::Object"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("arn:aws:s3"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.aws.cloudtrail.Trail;
/// import com.pulumi.aws.cloudtrail.TrailArgs;
/// import com.pulumi.aws.cloudtrail.inputs.TrailEventSelectorArgs;
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
///         var example = new Trail("example", TrailArgs.builder()
///             .eventSelectors(TrailEventSelectorArgs.builder()
///                 .readWriteType("All")
///                 .includeManagementEvents(true)
///                 .dataResources(TrailEventSelectorDataResourceArgs.builder()
///                     .type("AWS::S3::Object")
///                     .values("arn:aws:s3")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudtrail:Trail
///     properties:
///       eventSelectors:
///         - readWriteType: All
///           includeManagementEvents: true
///           dataResources:
///             - type: AWS::S3::Object
///               values:
///                 - arn:aws:s3
/// ```
///
///
/// ### Logging Individual S3 Bucket Events By Using Basic Event Selectors
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const important_bucket = aws.s3.getBucket({
///     bucket: "important-bucket",
/// });
/// const example = new aws.cloudtrail.Trail("example", {eventSelectors: [{
///     readWriteType: "All",
///     includeManagementEvents: true,
///     dataResources: [{
///         type: "AWS::S3::Object",
///         values: [important_bucket.then(important_bucket => `${important_bucket.arn}/`)],
///     }],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// important_bucket = aws.s3.get_bucket(bucket="important-bucket")
/// example = aws.cloudtrail.Trail("example", event_selectors=[{
///     "read_write_type": "All",
///     "include_management_events": True,
///     "data_resources": [{
///         "type": "AWS::S3::Object",
///         "values": [f"{important_bucket.arn}/"],
///     }],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var important_bucket = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "important-bucket",
///     });
///
///     var example = new Aws.CloudTrail.Trail("example", new()
///     {
///         EventSelectors = new[]
///         {
///             new Aws.CloudTrail.Inputs.TrailEventSelectorArgs
///             {
///                 ReadWriteType = "All",
///                 IncludeManagementEvents = true,
///                 DataResources = new[]
///                 {
///                     new Aws.CloudTrail.Inputs.TrailEventSelectorDataResourceArgs
///                     {
///                         Type = "AWS::S3::Object",
///                         Values = new[]
///                         {
///                             important_bucket.Apply(important_bucket => $"{important_bucket.Apply(getBucketResult => getBucketResult.Arn)}/"),
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		important_bucket, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "important-bucket",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudtrail.NewTrail(ctx, "example", &cloudtrail.TrailArgs{
/// 			EventSelectors: cloudtrail.TrailEventSelectorArray{
/// 				&cloudtrail.TrailEventSelectorArgs{
/// 					ReadWriteType:           pulumi.String("All"),
/// 					IncludeManagementEvents: pulumi.Bool(true),
/// 					DataResources: cloudtrail.TrailEventSelectorDataResourceArray{
/// 						&cloudtrail.TrailEventSelectorDataResourceArgs{
/// 							Type: pulumi.String("AWS::S3::Object"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.Sprintf("%v/", important_bucket.Arn),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketArgs;
/// import com.pulumi.aws.cloudtrail.Trail;
/// import com.pulumi.aws.cloudtrail.TrailArgs;
/// import com.pulumi.aws.cloudtrail.inputs.TrailEventSelectorArgs;
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
///         final var important-bucket = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("important-bucket")
///             .build());
///
///         var example = new Trail("example", TrailArgs.builder()
///             .eventSelectors(TrailEventSelectorArgs.builder()
///                 .readWriteType("All")
///                 .includeManagementEvents(true)
///                 .dataResources(TrailEventSelectorDataResourceArgs.builder()
///                     .type("AWS::S3::Object")
///                     .values(String.format("%s/", important_bucket.arn()))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudtrail:Trail
///     properties:
///       eventSelectors:
///         - readWriteType: All
///           includeManagementEvents: true
///           dataResources:
///             - type: AWS::S3::Object
///               values:
///                 - ${["important-bucket"].arn}/
/// variables:
///   important-bucket:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: important-bucket
/// ```
///
///
/// ### Logging All S3 Object Events Except For Two S3 Buckets By Using Advanced Event Selectors
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const not_important_bucket_1 = aws.s3.getBucket({
///     bucket: "not-important-bucket-1",
/// });
/// const not_important_bucket_2 = aws.s3.getBucket({
///     bucket: "not-important-bucket-2",
/// });
/// const example = new aws.cloudtrail.Trail("example", {advancedEventSelectors: [
///     {
///         name: "Log all S3 objects events except for two S3 buckets",
///         fieldSelectors: [
///             {
///                 field: "eventCategory",
///                 equals: ["Data"],
///             },
///             {
///                 field: "resources.ARN",
///                 notStartsWiths: [
///                     not_important_bucket_1.then(not_important_bucket_1 => `${not_important_bucket_1.arn}/`),
///                     not_important_bucket_2.then(not_important_bucket_2 => `${not_important_bucket_2.arn}/`),
///                 ],
///             },
///             {
///                 field: "resources.type",
///                 equals: ["AWS::S3::Object"],
///             },
///         ],
///     },
///     {
///         name: "Log readOnly and writeOnly management events",
///         fieldSelectors: [{
///             field: "eventCategory",
///             equals: ["Management"],
///         }],
///     },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// not_important_bucket_1 = aws.s3.get_bucket(bucket="not-important-bucket-1")
/// not_important_bucket_2 = aws.s3.get_bucket(bucket="not-important-bucket-2")
/// example = aws.cloudtrail.Trail("example", advanced_event_selectors=[
///     {
///         "name": "Log all S3 objects events except for two S3 buckets",
///         "field_selectors": [
///             {
///                 "field": "eventCategory",
///                 "equals": ["Data"],
///             },
///             {
///                 "field": "resources.ARN",
///                 "not_starts_withs": [
///                     f"{not_important_bucket_1.arn}/",
///                     f"{not_important_bucket_2.arn}/",
///                 ],
///             },
///             {
///                 "field": "resources.type",
///                 "equals": ["AWS::S3::Object"],
///             },
///         ],
///     },
///     {
///         "name": "Log readOnly and writeOnly management events",
///         "field_selectors": [{
///             "field": "eventCategory",
///             "equals": ["Management"],
///         }],
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var not_important_bucket_1 = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "not-important-bucket-1",
///     });
///
///     var not_important_bucket_2 = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "not-important-bucket-2",
///     });
///
///     var example = new Aws.CloudTrail.Trail("example", new()
///     {
///         AdvancedEventSelectors = new[]
///         {
///             new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorArgs
///             {
///                 Name = "Log all S3 objects events except for two S3 buckets",
///                 FieldSelectors = new[]
///                 {
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "eventCategory",
///                         Equals = new[]
///                         {
///                             "Data",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "resources.ARN",
///                         NotStartsWiths = new[]
///                         {
///                             not_important_bucket_1.Apply(not_important_bucket_1 => $"{not_important_bucket_1.Apply(getBucketResult => getBucketResult.Arn)}/"),
///                             not_important_bucket_2.Apply(not_important_bucket_2 => $"{not_important_bucket_2.Apply(getBucketResult => getBucketResult.Arn)}/"),
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "resources.type",
///                         Equals = new[]
///                         {
///                             "AWS::S3::Object",
///                         },
///                     },
///                 },
///             },
///             new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorArgs
///             {
///                 Name = "Log readOnly and writeOnly management events",
///                 FieldSelectors = new[]
///                 {
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "eventCategory",
///                         Equals = new[]
///                         {
///                             "Management",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		not_important_bucket_1, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "not-important-bucket-1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		not_important_bucket_2, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "not-important-bucket-2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudtrail.NewTrail(ctx, "example", &cloudtrail.TrailArgs{
/// 			AdvancedEventSelectors: cloudtrail.TrailAdvancedEventSelectorArray{
/// 				&cloudtrail.TrailAdvancedEventSelectorArgs{
/// 					Name: pulumi.String("Log all S3 objects events except for two S3 buckets"),
/// 					FieldSelectors: cloudtrail.TrailAdvancedEventSelectorFieldSelectorArray{
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("eventCategory"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("Data"),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("resources.ARN"),
/// 							NotStartsWiths: pulumi.StringArray{
/// 								pulumi.Sprintf("%v/", not_important_bucket_1.Arn),
/// 								pulumi.Sprintf("%v/", not_important_bucket_2.Arn),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("resources.type"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("AWS::S3::Object"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudtrail.TrailAdvancedEventSelectorArgs{
/// 					Name: pulumi.String("Log readOnly and writeOnly management events"),
/// 					FieldSelectors: cloudtrail.TrailAdvancedEventSelectorFieldSelectorArray{
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("eventCategory"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("Management"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketArgs;
/// import com.pulumi.aws.cloudtrail.Trail;
/// import com.pulumi.aws.cloudtrail.TrailArgs;
/// import com.pulumi.aws.cloudtrail.inputs.TrailAdvancedEventSelectorArgs;
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
///         final var not-important-bucket-1 = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("not-important-bucket-1")
///             .build());
///
///         final var not-important-bucket-2 = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("not-important-bucket-2")
///             .build());
///
///         var example = new Trail("example", TrailArgs.builder()
///             .advancedEventSelectors(
///                 TrailAdvancedEventSelectorArgs.builder()
///                     .name("Log all S3 objects events except for two S3 buckets")
///                     .fieldSelectors(
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("eventCategory")
///                             .equals("Data")
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("resources.ARN")
///                             .notStartsWiths(
///                                 String.format("%s/", not_important_bucket_1.arn()),
///                                 String.format("%s/", not_important_bucket_2.arn()))
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("resources.type")
///                             .equals("AWS::S3::Object")
///                             .build())
///                     .build(),
///                 TrailAdvancedEventSelectorArgs.builder()
///                     .name("Log readOnly and writeOnly management events")
///                     .fieldSelectors(TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                         .field("eventCategory")
///                         .equals("Management")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudtrail:Trail
///     properties:
///       advancedEventSelectors:
///         - name: Log all S3 objects events except for two S3 buckets
///           fieldSelectors:
///             - field: eventCategory
///               equals:
///                 - Data
///             - field: resources.ARN
///               notStartsWiths:
///                 - ${["not-important-bucket-1"].arn}/
///                 - ${["not-important-bucket-2"].arn}/
///             - field: resources.type
///               equals:
///                 - AWS::S3::Object
///         - name: Log readOnly and writeOnly management events
///           fieldSelectors:
///             - field: eventCategory
///               equals:
///                 - Management
/// variables:
///   not-important-bucket-1:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: not-important-bucket-1
///   not-important-bucket-2:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: not-important-bucket-2
/// ```
///
///
/// ### Logging Individual S3 Buckets And Specific Event Names By Using Advanced Event Selectors
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const important_bucket_1 = aws.s3.getBucket({
///     bucket: "important-bucket-1",
/// });
/// const important_bucket_2 = aws.s3.getBucket({
///     bucket: "important-bucket-2",
/// });
/// const important_bucket_3 = aws.s3.getBucket({
///     bucket: "important-bucket-3",
/// });
/// const example = new aws.cloudtrail.Trail("example", {advancedEventSelectors: [
///     {
///         name: "Log PutObject and DeleteObject events for two S3 buckets",
///         fieldSelectors: [
///             {
///                 field: "eventCategory",
///                 equals: ["Data"],
///             },
///             {
///                 field: "eventName",
///                 equals: [
///                     "PutObject",
///                     "DeleteObject",
///                 ],
///             },
///             {
///                 field: "resources.ARN",
///                 startsWiths: [
///                     important_bucket_1.then(important_bucket_1 => `${important_bucket_1.arn}/`),
///                     important_bucket_2.then(important_bucket_2 => `${important_bucket_2.arn}/`),
///                 ],
///             },
///             {
///                 field: "readOnly",
///                 equals: ["false"],
///             },
///             {
///                 field: "resources.type",
///                 equals: ["AWS::S3::Object"],
///             },
///         ],
///     },
///     {
///         name: "Log Delete* events for one S3 bucket",
///         fieldSelectors: [
///             {
///                 field: "eventCategory",
///                 equals: ["Data"],
///             },
///             {
///                 field: "eventName",
///                 startsWiths: ["Delete"],
///             },
///             {
///                 field: "resources.ARN",
///                 equals: [important_bucket_3.then(important_bucket_3 => `${important_bucket_3.arn}/important-prefix`)],
///             },
///             {
///                 field: "readOnly",
///                 equals: ["false"],
///             },
///             {
///                 field: "resources.type",
///                 equals: ["AWS::S3::Object"],
///             },
///         ],
///     },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// important_bucket_1 = aws.s3.get_bucket(bucket="important-bucket-1")
/// important_bucket_2 = aws.s3.get_bucket(bucket="important-bucket-2")
/// important_bucket_3 = aws.s3.get_bucket(bucket="important-bucket-3")
/// example = aws.cloudtrail.Trail("example", advanced_event_selectors=[
///     {
///         "name": "Log PutObject and DeleteObject events for two S3 buckets",
///         "field_selectors": [
///             {
///                 "field": "eventCategory",
///                 "equals": ["Data"],
///             },
///             {
///                 "field": "eventName",
///                 "equals": [
///                     "PutObject",
///                     "DeleteObject",
///                 ],
///             },
///             {
///                 "field": "resources.ARN",
///                 "starts_withs": [
///                     f"{important_bucket_1.arn}/",
///                     f"{important_bucket_2.arn}/",
///                 ],
///             },
///             {
///                 "field": "readOnly",
///                 "equals": ["false"],
///             },
///             {
///                 "field": "resources.type",
///                 "equals": ["AWS::S3::Object"],
///             },
///         ],
///     },
///     {
///         "name": "Log Delete* events for one S3 bucket",
///         "field_selectors": [
///             {
///                 "field": "eventCategory",
///                 "equals": ["Data"],
///             },
///             {
///                 "field": "eventName",
///                 "starts_withs": ["Delete"],
///             },
///             {
///                 "field": "resources.ARN",
///                 "equals": [f"{important_bucket_3.arn}/important-prefix"],
///             },
///             {
///                 "field": "readOnly",
///                 "equals": ["false"],
///             },
///             {
///                 "field": "resources.type",
///                 "equals": ["AWS::S3::Object"],
///             },
///         ],
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var important_bucket_1 = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "important-bucket-1",
///     });
///
///     var important_bucket_2 = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "important-bucket-2",
///     });
///
///     var important_bucket_3 = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "important-bucket-3",
///     });
///
///     var example = new Aws.CloudTrail.Trail("example", new()
///     {
///         AdvancedEventSelectors = new[]
///         {
///             new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorArgs
///             {
///                 Name = "Log PutObject and DeleteObject events for two S3 buckets",
///                 FieldSelectors = new[]
///                 {
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "eventCategory",
///                         Equals = new[]
///                         {
///                             "Data",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "eventName",
///                         Equals = new[]
///                         {
///                             "PutObject",
///                             "DeleteObject",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "resources.ARN",
///                         StartsWiths = new[]
///                         {
///                             important_bucket_1.Apply(important_bucket_1 => $"{important_bucket_1.Apply(getBucketResult => getBucketResult.Arn)}/"),
///                             important_bucket_2.Apply(important_bucket_2 => $"{important_bucket_2.Apply(getBucketResult => getBucketResult.Arn)}/"),
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "readOnly",
///                         Equals = new[]
///                         {
///                             "false",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "resources.type",
///                         Equals = new[]
///                         {
///                             "AWS::S3::Object",
///                         },
///                     },
///                 },
///             },
///             new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorArgs
///             {
///                 Name = "Log Delete* events for one S3 bucket",
///                 FieldSelectors = new[]
///                 {
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "eventCategory",
///                         Equals = new[]
///                         {
///                             "Data",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "eventName",
///                         StartsWiths = new[]
///                         {
///                             "Delete",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "resources.ARN",
///                         Equals = new[]
///                         {
///                             important_bucket_3.Apply(important_bucket_3 => $"{important_bucket_3.Apply(getBucketResult => getBucketResult.Arn)}/important-prefix"),
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "readOnly",
///                         Equals = new[]
///                         {
///                             "false",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.TrailAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "resources.type",
///                         Equals = new[]
///                         {
///                             "AWS::S3::Object",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		important_bucket_1, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "important-bucket-1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		important_bucket_2, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "important-bucket-2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		important_bucket_3, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "important-bucket-3",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudtrail.NewTrail(ctx, "example", &cloudtrail.TrailArgs{
/// 			AdvancedEventSelectors: cloudtrail.TrailAdvancedEventSelectorArray{
/// 				&cloudtrail.TrailAdvancedEventSelectorArgs{
/// 					Name: pulumi.String("Log PutObject and DeleteObject events for two S3 buckets"),
/// 					FieldSelectors: cloudtrail.TrailAdvancedEventSelectorFieldSelectorArray{
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("eventCategory"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("Data"),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("eventName"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("PutObject"),
/// 								pulumi.String("DeleteObject"),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("resources.ARN"),
/// 							StartsWiths: pulumi.StringArray{
/// 								pulumi.Sprintf("%v/", important_bucket_1.Arn),
/// 								pulumi.Sprintf("%v/", important_bucket_2.Arn),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("readOnly"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("false"),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("resources.type"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("AWS::S3::Object"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cloudtrail.TrailAdvancedEventSelectorArgs{
/// 					Name: pulumi.String("Log Delete* events for one S3 bucket"),
/// 					FieldSelectors: cloudtrail.TrailAdvancedEventSelectorFieldSelectorArray{
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("eventCategory"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("Data"),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("eventName"),
/// 							StartsWiths: pulumi.StringArray{
/// 								pulumi.String("Delete"),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("resources.ARN"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.Sprintf("%v/important-prefix", important_bucket_3.Arn),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("readOnly"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("false"),
/// 							},
/// 						},
/// 						&cloudtrail.TrailAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("resources.type"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("AWS::S3::Object"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketArgs;
/// import com.pulumi.aws.cloudtrail.Trail;
/// import com.pulumi.aws.cloudtrail.TrailArgs;
/// import com.pulumi.aws.cloudtrail.inputs.TrailAdvancedEventSelectorArgs;
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
///         final var important-bucket-1 = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("important-bucket-1")
///             .build());
///
///         final var important-bucket-2 = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("important-bucket-2")
///             .build());
///
///         final var important-bucket-3 = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("important-bucket-3")
///             .build());
///
///         var example = new Trail("example", TrailArgs.builder()
///             .advancedEventSelectors(
///                 TrailAdvancedEventSelectorArgs.builder()
///                     .name("Log PutObject and DeleteObject events for two S3 buckets")
///                     .fieldSelectors(
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("eventCategory")
///                             .equals("Data")
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("eventName")
///                             .equals(
///                                 "PutObject",
///                                 "DeleteObject")
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("resources.ARN")
///                             .startsWiths(
///                                 String.format("%s/", important_bucket_1.arn()),
///                                 String.format("%s/", important_bucket_2.arn()))
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("readOnly")
///                             .equals("false")
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("resources.type")
///                             .equals("AWS::S3::Object")
///                             .build())
///                     .build(),
///                 TrailAdvancedEventSelectorArgs.builder()
///                     .name("Log Delete* events for one S3 bucket")
///                     .fieldSelectors(
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("eventCategory")
///                             .equals("Data")
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("eventName")
///                             .startsWiths("Delete")
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("resources.ARN")
///                             .equals(String.format("%s/important-prefix", important_bucket_3.arn()))
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("readOnly")
///                             .equals("false")
///                             .build(),
///                         TrailAdvancedEventSelectorFieldSelectorArgs.builder()
///                             .field("resources.type")
///                             .equals("AWS::S3::Object")
///                             .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudtrail:Trail
///     properties:
///       advancedEventSelectors:
///         - name: Log PutObject and DeleteObject events for two S3 buckets
///           fieldSelectors:
///             - field: eventCategory
///               equals:
///                 - Data
///             - field: eventName
///               equals:
///                 - PutObject
///                 - DeleteObject
///             - field: resources.ARN
///               startsWiths:
///                 - ${["important-bucket-1"].arn}/
///                 - ${["important-bucket-2"].arn}/
///             - field: readOnly
///               equals:
///                 - 'false'
///             - field: resources.type
///               equals:
///                 - AWS::S3::Object
///         - name: Log Delete* events for one S3 bucket
///           fieldSelectors:
///             - field: eventCategory
///               equals:
///                 - Data
///             - field: eventName
///               startsWiths:
///                 - Delete
///             - field: resources.ARN
///               equals:
///                 - ${["important-bucket-3"].arn}/important-prefix
///             - field: readOnly
///               equals:
///                 - 'false'
///             - field: resources.type
///               equals:
///                 - AWS::S3::Object
/// variables:
///   important-bucket-1:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: important-bucket-1
///   important-bucket-2:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: important-bucket-2
///   important-bucket-3:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: important-bucket-3
/// ```
///
///
/// ### Sending Events to CloudWatch Logs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {name: "Example"});
/// const exampleTrail = new aws.cloudtrail.Trail("example", {cloudWatchLogsGroupArn: pulumi.interpolate`${example.arn}:*`});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="Example")
/// example_trail = aws.cloudtrail.Trail("example", cloud_watch_logs_group_arn=example.arn.apply(lambda arn: f"{arn}:*"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "Example",
///     });
///
///     var exampleTrail = new Aws.CloudTrail.Trail("example", new()
///     {
///         CloudWatchLogsGroupArn = example.Arn.Apply(arn => $"{arn}:*"),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("Example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudtrail.NewTrail(ctx, "example", &cloudtrail.TrailArgs{
/// 			CloudWatchLogsGroupArn: example.Arn.ApplyT(func(arn string) (string, error) {
/// 				return fmt.Sprintf("%v:*", arn), nil
/// 			}).(pulumi.StringOutput),
/// 		})
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudtrail.Trail;
/// import com.pulumi.aws.cloudtrail.TrailArgs;
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
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("Example")
///             .build());
///
///         var exampleTrail = new Trail("exampleTrail", TrailArgs.builder()
///             .cloudWatchLogsGroupArn(example.arn().applyValue(_arn -> String.format("%s:*", _arn)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: Example
///   exampleTrail:
///     type: aws:cloudtrail:Trail
///     name: example
///     properties:
///       cloudWatchLogsGroupArn: ${example.arn}:*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudtrails using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudtrail/trail:Trail sample arn:aws:cloudtrail:us-east-1:123456789012:trail/my-sample-trail
/// ```
class Trail extends pulumi.CustomResource {
  /// Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  late final pulumi.Output<List<TrailAdvancedEventSelector>?> advancedEventSelectors;
  /// ARN of the trail.
  late final pulumi.Output<String> arn;
  /// Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered. Note that CloudTrail requires the Log Stream wildcard.
  late final pulumi.Output<String?> cloudWatchLogsGroupArn;
  /// Role for the CloudWatch Logs endpoint to assume to write to a user’s log group.
  late final pulumi.Output<String?> cloudWatchLogsRoleArn;
  /// Whether log file integrity validation is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> enableLogFileValidation;
  /// Enables logging for the trail. When set to `true`, logging is started by calling the [`StartLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StartLogging.html) API. When set to `false`, logging is stopped by calling the [`StopLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StopLogging.html) API. Defaults to `true`.
  late final pulumi.Output<bool?> enableLogging;
  /// Specifies an event selector for enabling data event logging. Fields documented below. Please note the [CloudTrail limits](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html) when configuring these. Conflicts with `advanced_event_selector`.
  late final pulumi.Output<List<TrailEventSelector>?> eventSelectors;
  /// Region in which the trail was created.
  late final pulumi.Output<String> homeRegion;
  /// Whether the trail is publishing events from global services such as IAM to the log files. Defaults to `true`.
  late final pulumi.Output<bool?> includeGlobalServiceEvents;
  /// Configuration block for identifying unusual operational activity. See details below.
  late final pulumi.Output<List<TrailInsightSelector>?> insightSelectors;
  /// Whether the trail is created in the current region or in all regions. Defaults to `false`.
  late final pulumi.Output<bool?> isMultiRegionTrail;
  /// Whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account. Defaults to `false`.
  late final pulumi.Output<bool?> isOrganizationTrail;
  /// KMS key ARN to use to encrypt the logs delivered by CloudTrail.
  late final pulumi.Output<String?> kmsKeyId;
  /// Name of the trail.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the S3 bucket designated for publishing log files.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> s3BucketName;
  /// S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  late final pulumi.Output<String?> s3KeyPrefix;
  /// ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered.
  late final pulumi.Output<String> snsTopicArn;
  /// Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  late final pulumi.Output<String?> snsTopicName;
  /// Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Trail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trail]. {@macro pulumi_cloudtrail_trail_trail_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trail(
    String name, {
    TrailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudtrail/trail:Trail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedEventSelectors = registerOutput<List<TrailAdvancedEventSelector>?>('advancedEventSelectors');
    this.arn = registerOutput<String>('arn');
    this.cloudWatchLogsGroupArn = registerOutput<String?>('cloudWatchLogsGroupArn');
    this.cloudWatchLogsRoleArn = registerOutput<String?>('cloudWatchLogsRoleArn');
    this.enableLogFileValidation = registerOutput<bool?>('enableLogFileValidation');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.eventSelectors = registerOutput<List<TrailEventSelector>?>('eventSelectors');
    this.homeRegion = registerOutput<String>('homeRegion');
    this.includeGlobalServiceEvents = registerOutput<bool?>('includeGlobalServiceEvents');
    this.insightSelectors = registerOutput<List<TrailInsightSelector>?>('insightSelectors');
    this.isMultiRegionTrail = registerOutput<bool?>('isMultiRegionTrail');
    this.isOrganizationTrail = registerOutput<bool?>('isOrganizationTrail');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.s3BucketName = registerOutput<String>('s3BucketName');
    this.s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.snsTopicName = registerOutput<String?>('snsTopicName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
