import 'package:pulumi/pulumi.dart';
import '../bucket_server_side_encryption_configuration_rule/bucket_server_side_encryption_configuration_rule.dart';
import 'bucket_server_side_encryption_configuration_args.dart';

/// Provides a S3 bucket server-side encryption configuration resource.
///
/// > **NOTE:** Destroying an <span pulumi-lang-nodejs="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-go="`s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-python="`s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-yaml="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-java="`aws.s3.BucketServerSideEncryptionConfiguration`">`aws.s3.BucketServerSideEncryptionConfiguration`</span> resource resets the bucket to [Amazon S3 bucket default encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/default-encryption-faq.html).
///
/// > **NOTE:** Starting in March 2026, Amazon S3 will automatically block server-side encryption with customer-provided keys (SSE-C) for all new buckets. Use the <span pulumi-lang-nodejs="`blockedEncryptionTypes`" pulumi-lang-dotnet="`BlockedEncryptionTypes`" pulumi-lang-go="`blockedEncryptionTypes`" pulumi-lang-python="`blocked_encryption_types`" pulumi-lang-yaml="`blockedEncryptionTypes`" pulumi-lang-java="`blockedEncryptionTypes`">`blocked_encryption_types`</span> argument to manage this behavior. For more information, see the [SSE-C changes FAQ](https://docs.aws.amazon.com/AmazonS3/latest/userguide/default-s3-c-encryption-setting-faq.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mykey = new aws.kms.Key("mykey", {
/// description: "This key is used to encrypt bucket objects",
/// deletionWindowInDays: 10,
/// });
/// const mybucket = new aws.s3.Bucket("mybucket", {bucket: "mybucket"});
/// const example = new aws.s3.BucketServerSideEncryptionConfiguration("example", {
/// bucket: mybucket.id,
/// rules: [{
/// applyServerSideEncryptionByDefault: {
/// kmsMasterKeyId: mykey.arn,
/// sseAlgorithm: "aws:kms",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mykey = aws.kms.Key("mykey",
/// description="This key is used to encrypt bucket objects",
/// deletion_window_in_days=10)
/// mybucket = aws.s3.Bucket("mybucket", bucket="mybucket")
/// example = aws.s3.BucketServerSideEncryptionConfiguration("example",
/// bucket=mybucket.id,
/// rules=[{
/// "apply_server_side_encryption_by_default": {
/// "kms_master_key_id": mykey.arn,
/// "sse_algorithm": "aws:kms",
/// },
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
/// var mykey = new Aws.Kms.Key("mykey", new()
/// {
/// Description = "This key is used to encrypt bucket objects",
/// DeletionWindowInDays = 10,
/// });
///
/// var mybucket = new Aws.S3.Bucket("mybucket", new()
/// {
/// BucketName = "mybucket",
/// });
///
/// var example = new Aws.S3.BucketServerSideEncryptionConfiguration("example", new()
/// {
/// Bucket = mybucket.Id,
/// Rules = new[]
/// {
/// new Aws.S3.Inputs.BucketServerSideEncryptionConfigurationRuleArgs
/// {
/// ApplyServerSideEncryptionByDefault = new Aws.S3.Inputs.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs
/// {
/// KmsMasterKeyId = mykey.Arn,
/// SseAlgorithm = "aws:kms",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mykey, err := kms.NewKey(ctx, "mykey", &kms.KeyArgs{
/// Description:          pulumi.String("This key is used to encrypt bucket objects"),
/// DeletionWindowInDays: pulumi.Int(10),
/// })
/// if err != nil {
/// return err
/// }
/// mybucket, err := s3.NewBucket(ctx, "mybucket", &s3.BucketArgs{
/// Bucket: pulumi.String("mybucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketServerSideEncryptionConfiguration(ctx, "example", &s3.BucketServerSideEncryptionConfigurationArgs{
/// Bucket: mybucket.ID(),
/// Rules: s3.BucketServerSideEncryptionConfigurationRuleArray{
/// &s3.BucketServerSideEncryptionConfigurationRuleArgs{
/// ApplyServerSideEncryptionByDefault: &s3.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs{
/// KmsMasterKeyId: mykey.Arn,
/// SseAlgorithm:   pulumi.String("aws:kms"),
/// },
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketServerSideEncryptionConfiguration;
/// import com.pulumi.aws.s3.BucketServerSideEncryptionConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketServerSideEncryptionConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs;
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
/// var mykey = new Key("mykey", KeyArgs.builder()
/// .description("This key is used to encrypt bucket objects")
/// .deletionWindowInDays(10)
/// .build());
///
/// var mybucket = new Bucket("mybucket", BucketArgs.builder()
/// .bucket("mybucket")
/// .build());
///
/// var example = new BucketServerSideEncryptionConfiguration("example", BucketServerSideEncryptionConfigurationArgs.builder()
/// .bucket(mybucket.id())
/// .rules(BucketServerSideEncryptionConfigurationRuleArgs.builder()
/// .applyServerSideEncryptionByDefault(BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs.builder()
/// .kmsMasterKeyId(mykey.arn())
/// .sseAlgorithm("aws:kms")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mykey:
/// type: aws:kms:Key
/// properties:
/// description: This key is used to encrypt bucket objects
/// deletionWindowInDays: 10
/// mybucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: mybucket
/// example:
/// type: aws:s3:BucketServerSideEncryptionConfiguration
/// properties:
/// bucket: ${mybucket.id}
/// rules:
/// - applyServerSideEncryptionByDefault:
/// kmsMasterKeyId: ${mykey.arn}
/// sseAlgorithm: aws:kms
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Blocking SSE-C Uploads
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mykey = new aws.kms.Key("mykey", {
/// description: "This key is used to encrypt bucket objects",
/// deletionWindowInDays: 10,
/// });
/// const mybucket = new aws.s3.Bucket("mybucket", {bucket: "mybucket"});
/// const example = new aws.s3.BucketServerSideEncryptionConfiguration("example", {
/// bucket: mybucket.id,
/// rules: [{
/// applyServerSideEncryptionByDefault: {
/// kmsMasterKeyId: mykey.arn,
/// sseAlgorithm: "aws:kms",
/// },
/// bucketKeyEnabled: true,
/// blockedEncryptionTypes: ["SSE-C"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mykey = aws.kms.Key("mykey",
/// description="This key is used to encrypt bucket objects",
/// deletion_window_in_days=10)
/// mybucket = aws.s3.Bucket("mybucket", bucket="mybucket")
/// example = aws.s3.BucketServerSideEncryptionConfiguration("example",
/// bucket=mybucket.id,
/// rules=[{
/// "apply_server_side_encryption_by_default": {
/// "kms_master_key_id": mykey.arn,
/// "sse_algorithm": "aws:kms",
/// },
/// "bucket_key_enabled": True,
/// "blocked_encryption_types": ["SSE-C"],
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
/// var mykey = new Aws.Kms.Key("mykey", new()
/// {
/// Description = "This key is used to encrypt bucket objects",
/// DeletionWindowInDays = 10,
/// });
///
/// var mybucket = new Aws.S3.Bucket("mybucket", new()
/// {
/// BucketName = "mybucket",
/// });
///
/// var example = new Aws.S3.BucketServerSideEncryptionConfiguration("example", new()
/// {
/// Bucket = mybucket.Id,
/// Rules = new[]
/// {
/// new Aws.S3.Inputs.BucketServerSideEncryptionConfigurationRuleArgs
/// {
/// ApplyServerSideEncryptionByDefault = new Aws.S3.Inputs.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs
/// {
/// KmsMasterKeyId = mykey.Arn,
/// SseAlgorithm = "aws:kms",
/// },
/// BucketKeyEnabled = true,
/// BlockedEncryptionTypes = new[]
/// {
/// "SSE-C",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mykey, err := kms.NewKey(ctx, "mykey", &kms.KeyArgs{
/// Description:          pulumi.String("This key is used to encrypt bucket objects"),
/// DeletionWindowInDays: pulumi.Int(10),
/// })
/// if err != nil {
/// return err
/// }
/// mybucket, err := s3.NewBucket(ctx, "mybucket", &s3.BucketArgs{
/// Bucket: pulumi.String("mybucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketServerSideEncryptionConfiguration(ctx, "example", &s3.BucketServerSideEncryptionConfigurationArgs{
/// Bucket: mybucket.ID(),
/// Rules: s3.BucketServerSideEncryptionConfigurationRuleArray{
/// &s3.BucketServerSideEncryptionConfigurationRuleArgs{
/// ApplyServerSideEncryptionByDefault: &s3.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs{
/// KmsMasterKeyId: mykey.Arn,
/// SseAlgorithm:   pulumi.String("aws:kms"),
/// },
/// BucketKeyEnabled: pulumi.Bool(true),
/// BlockedEncryptionTypes: pulumi.StringArray{
/// pulumi.String("SSE-C"),
/// },
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketServerSideEncryptionConfiguration;
/// import com.pulumi.aws.s3.BucketServerSideEncryptionConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketServerSideEncryptionConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs;
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
/// var mykey = new Key("mykey", KeyArgs.builder()
/// .description("This key is used to encrypt bucket objects")
/// .deletionWindowInDays(10)
/// .build());
///
/// var mybucket = new Bucket("mybucket", BucketArgs.builder()
/// .bucket("mybucket")
/// .build());
///
/// var example = new BucketServerSideEncryptionConfiguration("example", BucketServerSideEncryptionConfigurationArgs.builder()
/// .bucket(mybucket.id())
/// .rules(BucketServerSideEncryptionConfigurationRuleArgs.builder()
/// .applyServerSideEncryptionByDefault(BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs.builder()
/// .kmsMasterKeyId(mykey.arn())
/// .sseAlgorithm("aws:kms")
/// .build())
/// .bucketKeyEnabled(true)
/// .blockedEncryptionTypes("SSE-C")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mykey:
/// type: aws:kms:Key
/// properties:
/// description: This key is used to encrypt bucket objects
/// deletionWindowInDays: 10
/// mybucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: mybucket
/// example:
/// type: aws:s3:BucketServerSideEncryptionConfiguration
/// properties:
/// bucket: ${mybucket.id}
/// rules:
/// - applyServerSideEncryptionByDefault:
/// kmsMasterKeyId: ${mykey.arn}
/// sseAlgorithm: aws:kms
/// bucketKeyEnabled: true
/// blockedEncryptionTypes:
/// - SSE-C
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
/// **Using `pulumi import` to import** S3 bucket server-side encryption configuration using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> or using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>:
///
/// ```sh
/// $ pulumi import aws:s3/bucketServerSideEncryptionConfiguration:BucketServerSideEncryptionConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketServerSideEncryptionConfiguration:BucketServerSideEncryptionConfiguration example bucket-name,123456789012
/// ```
class BucketServerSideEncryptionConfiguration2 extends CustomResource {
  /// ID (name) of the bucket.
  late final Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
  late final Output<List<BucketServerSideEncryptionConfigurationRule>> rules;

  BucketServerSideEncryptionConfiguration2(
    String name, {
    BucketServerSideEncryptionConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketServerSideEncryptionConfiguration:BucketServerSideEncryptionConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
    this.rules =
        registerOutput<List<BucketServerSideEncryptionConfigurationRule>>(
            'rules');
  }
}
