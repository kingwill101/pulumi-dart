import 'package:pulumi/pulumi.dart';
import '../bucket_logging_target_grant/bucket_logging_target_grant.dart';
import '../bucket_logging_target_object_key_format/bucket_logging_target_object_key_format.dart';
import 'bucket_logging_args.dart';

/// Provides an S3 bucket (server access) logging resource. For more information, see [Logging requests using server access logging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)
/// in the AWS S3 User Guide.
///
/// > **Note:** Amazon S3 supports server access logging, AWS CloudTrail, or a combination of both. Refer to the [Logging options for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/logging-with-S3.html)
/// to decide which method meets your requirements.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Grant permission by using bucket policy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const logging = new aws.s3.Bucket("logging", {bucket: "access-logging-bucket"});
/// const loggingBucketPolicy = pulumi.all([logging.arn, current]).apply(([arn, current]) => aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// principals: [{
/// identifiers: ["logging.s3.amazonaws.com"],
/// type: "Service",
/// }],
/// actions: ["s3:PutObject"],
/// resources: [`${arn}/*`],
/// conditions: [{
/// test: "StringEquals",
/// variable: "aws:SourceAccount",
/// values: [current.accountId],
/// }],
/// }],
/// }));
/// const loggingBucketPolicy2 = new aws.s3.BucketPolicy("logging", {
/// bucket: logging.bucket,
/// policy: loggingBucketPolicy.apply(loggingBucketPolicy => loggingBucketPolicy.json),
/// });
/// const example = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleBucketLogging = new aws.s3.BucketLogging("example", {
/// bucket: example.bucket,
/// targetBucket: logging.bucket,
/// targetPrefix: "log/",
/// targetObjectKeyFormat: {
/// partitionedPrefix: {
/// partitionDateSource: "EventTime",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// logging = aws.s3.Bucket("logging", bucket="access-logging-bucket")
/// logging_bucket_policy = logging.arn.apply(lambda arn: aws.iam.get_policy_document(statements=[{
/// "principals": [{
/// "identifiers": ["logging.s3.amazonaws.com"],
/// "type": "Service",
/// }],
/// "actions": ["s3:PutObject"],
/// "resources": [f"{arn}/*"],
/// "conditions": [{
/// "test": "StringEquals",
/// "variable": "aws:SourceAccount",
/// "values": [current.account_id],
/// }],
/// }]))
/// logging_bucket_policy2 = aws.s3.BucketPolicy("logging",
/// bucket=logging.bucket,
/// policy=logging_bucket_policy.json)
/// example = aws.s3.Bucket("example", bucket="example-bucket")
/// example_bucket_logging = aws.s3.BucketLogging("example",
/// bucket=example.bucket,
/// target_bucket=logging.bucket,
/// target_prefix="log/",
/// target_object_key_format={
/// "partitioned_prefix": {
/// "partition_date_source": "EventTime",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var logging = new Aws.S3.Bucket("logging", new()
/// {
/// BucketName = "access-logging-bucket",
/// });
///
/// var loggingBucketPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
/// {
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
/// {
/// Identifiers = new[]
/// {
/// "logging.s3.amazonaws.com",
/// },
/// Type = "Service",
/// },
/// },
/// Actions = new[]
/// {
/// "s3:PutObject",
/// },
/// Resources = new[]
/// {
/// $"{logging.Arn}/*",
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
/// {
/// Test = "StringEquals",
/// Variable = "aws:SourceAccount",
/// Values = new[]
/// {
/// current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var loggingBucketPolicy2 = new Aws.S3.BucketPolicy("logging", new()
/// {
/// Bucket = logging.BucketName,
/// Policy = loggingBucketPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-bucket",
/// });
///
/// var exampleBucketLogging = new Aws.S3.BucketLogging("example", new()
/// {
/// Bucket = example.BucketName,
/// TargetBucket = logging.BucketName,
/// TargetPrefix = "log/",
/// TargetObjectKeyFormat = new Aws.S3.Inputs.BucketLoggingTargetObjectKeyFormatArgs
/// {
/// PartitionedPrefix = new Aws.S3.Inputs.BucketLoggingTargetObjectKeyFormatPartitionedPrefixArgs
/// {
/// PartitionDateSource = "EventTime",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// logging, err := s3.NewBucket(ctx, "logging", &s3.BucketArgs{
/// Bucket: pulumi.String("access-logging-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// loggingBucketPolicy := logging.Arn.ApplyT(func(arn string) (iam.GetPolicyDocumentResult, error) {
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Identifiers: []string{
/// "logging.s3.amazonaws.com",
/// },
/// Type: "Service",
/// },
/// },
/// Actions: []string{
/// "s3:PutObject",
/// },
/// Resources: []string{
/// fmt.Sprintf("%v/*", arn),
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Variable: "aws:SourceAccount",
/// Values: interface{}{
/// current.AccountId,
/// },
/// },
/// },
/// },
/// },
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = s3.NewBucketPolicy(ctx, "logging", &s3.BucketPolicyArgs{
/// Bucket: logging.Bucket,
/// Policy: pulumi.String(loggingBucketPolicy.ApplyT(func(loggingBucketPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &loggingBucketPolicy.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketLogging(ctx, "example", &s3.BucketLoggingArgs{
/// Bucket: example.Bucket,
/// TargetBucket: logging.Bucket,
/// TargetPrefix: pulumi.String("log/"),
/// TargetObjectKeyFormat: &s3.BucketLoggingTargetObjectKeyFormatArgs{
/// PartitionedPrefix: &s3.BucketLoggingTargetObjectKeyFormatPartitionedPrefixArgs{
/// PartitionDateSource: pulumi.String("EventTime"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.s3.BucketLogging;
/// import com.pulumi.aws.s3.BucketLoggingArgs;
/// import com.pulumi.aws.s3.inputs.BucketLoggingTargetObjectKeyFormatArgs;
/// import com.pulumi.aws.s3.inputs.BucketLoggingTargetObjectKeyFormatPartitionedPrefixArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var logging = new Bucket("logging", BucketArgs.builder()
/// .bucket("access-logging-bucket")
/// .build());
///
/// final var loggingBucketPolicy = logging.arn().applyValue(_arn -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .identifiers("logging.s3.amazonaws.com")
/// .type("Service")
/// .build())
/// .actions("s3:PutObject")
/// .resources(String.format("%s/*", _arn))
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("StringEquals")
/// .variable("aws:SourceAccount")
/// .values(current.accountId())
/// .build())
/// .build())
/// .build()));
///
/// var loggingBucketPolicy2 = new BucketPolicy("loggingBucketPolicy2", BucketPolicyArgs.builder()
/// .bucket(logging.bucket())
/// .policy(loggingBucketPolicy.json())
/// .build());
///
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("example-bucket")
/// .build());
///
/// var exampleBucketLogging = new BucketLogging("exampleBucketLogging", BucketLoggingArgs.builder()
/// .bucket(example.bucket())
/// .targetBucket(logging.bucket())
/// .targetPrefix("log/")
/// .targetObjectKeyFormat(BucketLoggingTargetObjectKeyFormatArgs.builder()
/// .partitionedPrefix(BucketLoggingTargetObjectKeyFormatPartitionedPrefixArgs.builder()
/// .partitionDateSource("EventTime")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// logging:
/// type: aws:s3:Bucket
/// properties:
/// bucket: access-logging-bucket
/// loggingBucketPolicy2:
/// type: aws:s3:BucketPolicy
/// name: logging
/// properties:
/// bucket: ${logging.bucket}
/// policy: ${loggingBucketPolicy.json}
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example-bucket
/// exampleBucketLogging:
/// type: aws:s3:BucketLogging
/// name: example
/// properties:
/// bucket: ${example.bucket}
/// targetBucket: ${logging.bucket}
/// targetPrefix: log/
/// targetObjectKeyFormat:
/// partitionedPrefix:
/// partitionDateSource: EventTime
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// loggingBucketPolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - principals:
/// - identifiers:
/// - logging.s3.amazonaws.com
/// type: Service
/// actions:
/// - s3:PutObject
/// resources:
/// - ${logging.arn}/*
/// conditions:
/// - test: StringEquals
/// variable: aws:SourceAccount
/// values:
/// - ${current.accountId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Grant permission by using bucket ACL
///
/// The [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html) does not recommend using the ACL.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "my-tf-example-bucket"});
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
/// bucket: example.id,
/// acl: "private",
/// });
/// const logBucket = new aws.s3.Bucket("log_bucket", {bucket: "my-tf-log-bucket"});
/// const logBucketAcl = new aws.s3.BucketAcl("log_bucket_acl", {
/// bucket: logBucket.id,
/// acl: "log-delivery-write",
/// });
/// const exampleBucketLogging = new aws.s3.BucketLogging("example", {
/// bucket: example.id,
/// targetBucket: logBucket.id,
/// targetPrefix: "log/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="my-tf-example-bucket")
/// example_bucket_acl = aws.s3.BucketAcl("example",
/// bucket=example.id,
/// acl="private")
/// log_bucket = aws.s3.Bucket("log_bucket", bucket="my-tf-log-bucket")
/// log_bucket_acl = aws.s3.BucketAcl("log_bucket_acl",
/// bucket=log_bucket.id,
/// acl="log-delivery-write")
/// example_bucket_logging = aws.s3.BucketLogging("example",
/// bucket=example.id,
/// target_bucket=log_bucket.id,
/// target_prefix="log/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "my-tf-example-bucket",
/// });
///
/// var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
/// {
/// Bucket = example.Id,
/// Acl = "private",
/// });
///
/// var logBucket = new Aws.S3.Bucket("log_bucket", new()
/// {
/// BucketName = "my-tf-log-bucket",
/// });
///
/// var logBucketAcl = new Aws.S3.BucketAcl("log_bucket_acl", new()
/// {
/// Bucket = logBucket.Id,
/// Acl = "log-delivery-write",
/// });
///
/// var exampleBucketLogging = new Aws.S3.BucketLogging("example", new()
/// {
/// Bucket = example.Id,
/// TargetBucket = logBucket.Id,
/// TargetPrefix = "log/",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("my-tf-example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// Bucket: example.ID(),
/// Acl:    pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// logBucket, err := s3.NewBucket(ctx, "log_bucket", &s3.BucketArgs{
/// Bucket: pulumi.String("my-tf-log-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "log_bucket_acl", &s3.BucketAclArgs{
/// Bucket: logBucket.ID(),
/// Acl:    pulumi.String("log-delivery-write"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketLogging(ctx, "example", &s3.BucketLoggingArgs{
/// Bucket:       example.ID(),
/// TargetBucket: logBucket.ID(),
/// TargetPrefix: pulumi.String("log/"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("my-tf-example-bucket")
/// .build());
///
/// var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
/// .bucket(example.id())
/// .acl("private")
/// .build());
///
/// var logBucket = new Bucket("logBucket", BucketArgs.builder()
/// .bucket("my-tf-log-bucket")
/// .build());
///
/// var logBucketAcl = new BucketAcl("logBucketAcl", BucketAclArgs.builder()
/// .bucket(logBucket.id())
/// .acl("log-delivery-write")
/// .build());
///
/// var exampleBucketLogging = new BucketLogging("exampleBucketLogging", BucketLoggingArgs.builder()
/// .bucket(example.id())
/// .targetBucket(logBucket.id())
/// .targetPrefix("log/")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: my-tf-example-bucket
/// exampleBucketAcl:
/// type: aws:s3:BucketAcl
/// name: example
/// properties:
/// bucket: ${example.id}
/// acl: private
/// logBucket:
/// type: aws:s3:Bucket
/// name: log_bucket
/// properties:
/// bucket: my-tf-log-bucket
/// logBucketAcl:
/// type: aws:s3:BucketAcl
/// name: log_bucket_acl
/// properties:
/// bucket: ${logBucket.id}
/// acl: log-delivery-write
/// exampleBucketLogging:
/// type: aws:s3:BucketLogging
/// name: example
/// properties:
/// bucket: ${example.id}
/// targetBucket: ${logBucket.id}
/// targetPrefix: log/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> (String) S3 bucket name.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket logging using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> or using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>:
///
/// ```sh
/// $ pulumi import aws:s3/bucketLogging:BucketLogging example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketLogging:BucketLogging example bucket-name,123456789012
/// ```
class BucketLogging2 extends CustomResource {
  /// Name of the bucket.
  late final Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the bucket where you want Amazon S3 to store server access logs.
  late final Output<String> targetBucket;

  /// Set of configuration blocks with information for granting permissions. See below.
  late final Output<List<BucketLoggingTargetGrant>?> targetGrants;

  /// Amazon S3 key format for log objects. See below.
  late final Output<BucketLoggingTargetObjectKeyFormat?> targetObjectKeyFormat;

  /// Prefix for all log object keys.
  late final Output<String> targetPrefix;

  BucketLogging2(
    String name, {
    BucketLoggingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketLogging:BucketLogging',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.expectedBucketOwner = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.targetBucket = Output.createUnknown<String>();
    this.targetGrants = Output.createUnknown<List<BucketLoggingTargetGrant>?>();
    this.targetObjectKeyFormat =
        Output.createUnknown<BucketLoggingTargetObjectKeyFormat?>();
    this.targetPrefix = Output.createUnknown<String>();
  }
}
