import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_logging_v2_args.dart';
import 'bucket_logging_v2_state.dart';
import 'bucket_logging_v2_target_grant.dart';
import 'bucket_logging_v2_target_object_key_format.dart';

/// Provides an S3 bucket (server access) logging resource. For more information, see [Logging requests using server access logging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)
/// in the AWS S3 User Guide.
///
/// &gt; **Note:** Amazon S3 supports server access logging, AWS CloudTrail, or a combination of both. Refer to the [Logging options for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/logging-with-S3.html)
/// to decide which method meets your requirements.
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Grant permission by using bucket policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const logging = new aws.s3.Bucket("logging", {bucket: "access-logging-bucket"});
/// const loggingBucketPolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "StringEquals",
///             variable: "aws:SourceAccount",
///             values: [current.then(current => current.accountId)],
///         }],
///         principals: [{
///             identifiers: ["logging.s3.amazonaws.com"],
///             type: "Service",
///         }],
///         actions: ["s3:PutObject"],
///         resources: [pulumi.interpolate`${logging.arn}/*`],
///     }],
/// });
/// const loggingBucketPolicy2 = new aws.s3.BucketPolicy("logging", {
///     bucket: logging.bucket,
///     policy: loggingBucketPolicy.json,
/// });
/// const example = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleBucketLogging = new aws.s3.BucketLogging("example", {
///     targetObjectKeyFormat: {
///         partitionedPrefix: {
///             partitionDateSource: "EventTime",
///         },
///     },
///     bucket: example.bucket,
///     targetBucket: logging.bucket,
///     targetPrefix: "log/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// logging = aws.s3.Bucket("logging", bucket="access-logging-bucket")
/// logging_bucket_policy = aws.iam.get_policy_document_output(statements=[{
///     "conditions": [{
///         "test": "StringEquals",
///         "variable": "aws:SourceAccount",
///         "values": [current.account_id],
///     }],
///     "principals": [{
///         "identifiers": ["logging.s3.amazonaws.com"],
///         "type": "Service",
///     }],
///     "actions": ["s3:PutObject"],
///     "resources": [logging.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// logging_bucket_policy2 = aws.s3.BucketPolicy("logging",
///     bucket=logging.bucket,
///     policy=logging_bucket_policy.json)
/// example = aws.s3.Bucket("example", bucket="example-bucket")
/// example_bucket_logging = aws.s3.BucketLogging("example",
///     target_object_key_format={
///         "partitioned_prefix": {
///             "partition_date_source": "EventTime",
///         },
///     },
///     bucket=example.bucket,
///     target_bucket=logging.bucket,
///     target_prefix="log/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var logging = new Aws.S3.Bucket("logging", new()
///     {
///         BucketName = "access-logging-bucket",
///     });
///
///     var loggingBucketPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:SourceAccount",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             "logging.s3.amazonaws.com",
///                         },
///                         Type = "Service",
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{logging.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var loggingBucketPolicy2 = new Aws.S3.BucketPolicy("logging", new()
///     {
///         Bucket = logging.BucketName,
///         Policy = loggingBucketPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-bucket",
///     });
///
///     var exampleBucketLogging = new Aws.S3.BucketLogging("example", new()
///     {
///         TargetObjectKeyFormat = new Aws.S3.Inputs.BucketLoggingTargetObjectKeyFormatArgs
///         {
///             PartitionedPrefix = new Aws.S3.Inputs.BucketLoggingTargetObjectKeyFormatPartitionedPrefixArgs
///             {
///                 PartitionDateSource = "EventTime",
///             },
///         },
///         Bucket = example.BucketName,
///         TargetBucket = logging.BucketName,
///         TargetPrefix = "log/",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		logging, err := s3.NewBucket(ctx, "logging", &s3.BucketArgs{
/// 			Bucket: pulumi.String("access-logging-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		loggingBucketPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("aws:SourceAccount"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String(current.AccountId),
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("logging.s3.amazonaws.com"),
/// 							},
/// 							Type: pulumi.String("Service"),
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						logging.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = s3.NewBucketPolicy(ctx, "logging", &s3.BucketPolicyArgs{
/// 			Bucket: logging.Bucket,
/// 			Policy: loggingBucketPolicy.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketLogging(ctx, "example", &s3.BucketLoggingArgs{
/// 			TargetObjectKeyFormat: &s3.BucketLoggingTargetObjectKeyFormatArgs{
/// 				PartitionedPrefix: &s3.BucketLoggingTargetObjectKeyFormatPartitionedPrefixArgs{
/// 					PartitionDateSource: pulumi.String("EventTime"),
/// 				},
/// 			},
/// 			Bucket:       example.Bucket,
/// 			TargetBucket: logging.Bucket,
/// 			TargetPrefix: pulumi.String("log/"),
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getpolicydocument" "loggingBucketPolicy" {
///   statements {
///     conditions {
///       test     = "StringEquals"
///       variable = "aws:SourceAccount"
///       values   = [data.aws_getcalleridentity.current.account_id]
///     }
///     principals {
///       identifiers = ["logging.s3.amazonaws.com"]
///       type        = "Service"
///     }
///     actions   = ["s3:PutObject"]
///     resources = ["${aws_s3_bucket.logging.arn}/*"]
///   }
/// }
///
/// resource "aws_s3_bucket" "logging" {
///   bucket = "access-logging-bucket"
/// }
/// resource "aws_s3_bucketpolicy" "logging" {
///   bucket = aws_s3_bucket.logging.bucket
///   policy = data.aws_iam_getpolicydocument.loggingBucketPolicy.json
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket = "example-bucket"
/// }
/// resource "aws_s3_bucketlogging" "example" {
///   target_object_key_format = {
///     partitioned_prefix = {
///       partition_date_source = "EventTime"
///     }
///   }
///   bucket        = aws_s3_bucket.example.bucket
///   target_bucket = aws_s3_bucket.logging.bucket
///   target_prefix = "log/"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.s3.BucketLogging;
/// import com.pulumi.aws.s3.BucketLoggingArgs;
/// import com.pulumi.aws.s3.inputs.BucketLoggingTargetObjectKeyFormatArgs;
/// import com.pulumi.aws.s3.inputs.BucketLoggingTargetObjectKeyFormatPartitionedPrefixArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var logging = new Bucket("logging", BucketArgs.builder()
///             .bucket("access-logging-bucket")
///             .build());
///
///         final var loggingBucketPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .variable("aws:SourceAccount")
///                     .values(current.accountId())
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers("logging.s3.amazonaws.com")
///                     .type("Service")
///                     .build())
///                 .actions("s3:PutObject")
///                 .resources(logging.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var loggingBucketPolicy2 = new BucketPolicy("loggingBucketPolicy2", BucketPolicyArgs.builder()
///             .bucket(logging.bucket())
///             .policy(loggingBucketPolicy.applyValue(_loggingBucketPolicy -> _loggingBucketPolicy.json()))
///             .build());
///
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example-bucket")
///             .build());
///
///         var exampleBucketLogging = new BucketLogging("exampleBucketLogging", BucketLoggingArgs.builder()
///             .targetObjectKeyFormat(BucketLoggingTargetObjectKeyFormatArgs.builder()
///                 .partitionedPrefix(BucketLoggingTargetObjectKeyFormatPartitionedPrefixArgs.builder()
///                     .partitionDateSource("EventTime")
///                     .build())
///                 .build())
///             .bucket(example.bucket())
///             .targetBucket(logging.bucket())
///             .targetPrefix("log/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   logging:
///     type: aws:s3:Bucket
///     properties:
///       bucket: access-logging-bucket
///   loggingBucketPolicy2:
///     type: aws:s3:BucketPolicy
///     name: logging
///     properties:
///       bucket: ${logging.bucket}
///       policy: ${loggingBucketPolicy.json}
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-bucket
///   exampleBucketLogging:
///     type: aws:s3:BucketLogging
///     name: example
///     properties:
///       targetObjectKeyFormat:
///         partitionedPrefix:
///           partitionDateSource: EventTime
///       bucket: ${example.bucket}
///       targetBucket: ${logging.bucket}
///       targetPrefix: log/
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   loggingBucketPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: StringEquals
///                 variable: aws:SourceAccount
///                 values:
///                   - ${current.accountId}
///             principals:
///               - identifiers:
///                   - logging.s3.amazonaws.com
///                 type: Service
///             actions:
///               - s3:PutObject
///             resources:
///               - ${logging.arn}/*
/// ```
///
///
/// ### Grant permission by using bucket ACL
///
/// The [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html) does not recommend using the ACL.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "my-tf-example-bucket"});
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: example.id,
///     acl: "private",
/// });
/// const logBucket = new aws.s3.Bucket("log_bucket", {bucket: "my-tf-log-bucket"});
/// const logBucketAcl = new aws.s3.BucketAcl("log_bucket_acl", {
///     bucket: logBucket.id,
///     acl: "log-delivery-write",
/// });
/// const exampleBucketLogging = new aws.s3.BucketLogging("example", {
///     bucket: example.id,
///     targetBucket: logBucket.id,
///     targetPrefix: "log/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="my-tf-example-bucket")
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example.id,
///     acl="private")
/// log_bucket = aws.s3.Bucket("log_bucket", bucket="my-tf-log-bucket")
/// log_bucket_acl = aws.s3.BucketAcl("log_bucket_acl",
///     bucket=log_bucket.id,
///     acl="log-delivery-write")
/// example_bucket_logging = aws.s3.BucketLogging("example",
///     bucket=example.id,
///     target_bucket=log_bucket.id,
///     target_prefix="log/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-tf-example-bucket",
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = example.Id,
///         Acl = "private",
///     });
///
///     var logBucket = new Aws.S3.Bucket("log_bucket", new()
///     {
///         BucketName = "my-tf-log-bucket",
///     });
///
///     var logBucketAcl = new Aws.S3.BucketAcl("log_bucket_acl", new()
///     {
///         Bucket = logBucket.Id,
///         Acl = "log-delivery-write",
///     });
///
///     var exampleBucketLogging = new Aws.S3.BucketLogging("example", new()
///     {
///         Bucket = example.Id,
///         TargetBucket = logBucket.Id,
///         TargetPrefix = "log/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		logBucket, err := s3.NewBucket(ctx, "log_bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-log-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "log_bucket_acl", &s3.BucketAclArgs{
/// 			Bucket: logBucket.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("log-delivery-write"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketLogging(ctx, "example", &s3.BucketLoggingArgs{
/// 			Bucket:       example.ID().ToIDOutput().ToStringOutput(),
/// 			TargetBucket: logBucket.ID().ToIDOutput().ToStringOutput(),
/// 			TargetPrefix: pulumi.String("log/"),
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "my-tf-example-bucket"
/// }
/// resource "aws_s3_bucketacl" "example" {
///   bucket = aws_s3_bucket.example.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucket" "log_bucket" {
///   bucket = "my-tf-log-bucket"
/// }
/// resource "aws_s3_bucketacl" "log_bucket_acl" {
///   bucket = aws_s3_bucket.log_bucket.id
///   acl    = "log-delivery-write"
/// }
/// resource "aws_s3_bucketlogging" "example" {
///   bucket        = aws_s3_bucket.example.id
///   target_bucket = aws_s3_bucket.log_bucket.id
///   target_prefix = "log/"
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
/// import com.pulumi.aws.s3.BucketLogging;
/// import com.pulumi.aws.s3.BucketLoggingArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("my-tf-example-bucket")
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(example.id())
///             .acl("private")
///             .build());
///
///         var logBucket = new Bucket("logBucket", BucketArgs.builder()
///             .bucket("my-tf-log-bucket")
///             .build());
///
///         var logBucketAcl = new BucketAcl("logBucketAcl", BucketAclArgs.builder()
///             .bucket(logBucket.id())
///             .acl("log-delivery-write")
///             .build());
///
///         var exampleBucketLogging = new BucketLogging("exampleBucketLogging", BucketLoggingArgs.builder()
///             .bucket(example.id())
///             .targetBucket(logBucket.id())
///             .targetPrefix("log/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-example-bucket
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${example.id}
///       acl: private
///   logBucket:
///     type: aws:s3:Bucket
///     name: log_bucket
///     properties:
///       bucket: my-tf-log-bucket
///   logBucketAcl:
///     type: aws:s3:BucketAcl
///     name: log_bucket_acl
///     properties:
///       bucket: ${logBucket.id}
///       acl: log-delivery-write
///   exampleBucketLogging:
///     type: aws:s3:BucketLogging
///     name: example
///     properties:
///       bucket: ${example.id}
///       targetBucket: ${logBucket.id}
///       targetPrefix: log/
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket logging using the `bucket` or using the `bucket` and `expectedBucketOwner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketLoggingV2:BucketLoggingV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketLoggingV2:BucketLoggingV2 example bucket-name,123456789012
/// ```
class BucketLoggingV2 extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the bucket where you want Amazon S3 to store server access logs.
  late final pulumi.Output<String> targetBucket;
  /// Set of configuration blocks with information for granting permissions. See below.
  late final pulumi.Output<List<BucketLoggingV2TargetGrant>?> targetGrants;
  /// Amazon S3 key format for log objects. See below.
  late final pulumi.Output<BucketLoggingV2TargetObjectKeyFormat?> targetObjectKeyFormat;
  /// Prefix for all log object keys.
  late final pulumi.Output<String> targetPrefix;

  /// Creates a new [BucketLoggingV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketLoggingV2]. {@macro pulumi_s3_bucket_logging_v2_bucket_logging_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketLoggingV2(
    String name, {
    BucketLoggingV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketLoggingV2:BucketLoggingV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
    targetBucket = registerOutput<String>('targetBucket');
    targetGrants = registerOutput<List<BucketLoggingV2TargetGrant>?>('targetGrants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLoggingV2TargetGrant>(guardedValue, (value) => BucketLoggingV2TargetGrant.fromMap((value as Map).cast<String, dynamic>())); });
    targetObjectKeyFormat = registerOutput<BucketLoggingV2TargetObjectKeyFormat?>('targetObjectKeyFormat', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLoggingV2TargetObjectKeyFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetPrefix = registerOutput<String>('targetPrefix');
  }

  /// Gets an existing [BucketLoggingV2] resource's state with the given [name] and [id].
  static BucketLoggingV2 get(
    String name,
    pulumi.Input<String> id, {
    BucketLoggingV2State? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketLoggingV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketLoggingV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketLoggingV2:BucketLoggingV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
    targetBucket = registerOutput<String>('targetBucket');
    targetGrants = registerOutput<List<BucketLoggingV2TargetGrant>?>('targetGrants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLoggingV2TargetGrant>(guardedValue, (value) => BucketLoggingV2TargetGrant.fromMap((value as Map).cast<String, dynamic>())); });
    targetObjectKeyFormat = registerOutput<BucketLoggingV2TargetObjectKeyFormat?>('targetObjectKeyFormat', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLoggingV2TargetObjectKeyFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetPrefix = registerOutput<String>('targetPrefix');
  }

  /// Creates a typed reference to an existing [BucketLoggingV2] resource.
  BucketLoggingV2.reference(String urn)
    : super(
        'aws:s3/bucketLoggingV2:BucketLoggingV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
    targetBucket = registerOutput<String>('targetBucket');
    targetGrants = registerOutput<List<BucketLoggingV2TargetGrant>?>('targetGrants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLoggingV2TargetGrant>(guardedValue, (value) => BucketLoggingV2TargetGrant.fromMap((value as Map).cast<String, dynamic>())); });
    targetObjectKeyFormat = registerOutput<BucketLoggingV2TargetObjectKeyFormat?>('targetObjectKeyFormat', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLoggingV2TargetObjectKeyFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetPrefix = registerOutput<String>('targetPrefix');
  }
}
