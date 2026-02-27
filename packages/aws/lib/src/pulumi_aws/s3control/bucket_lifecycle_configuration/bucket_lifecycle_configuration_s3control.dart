import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_lifecycle_configuration_rule/bucket_lifecycle_configuration_rule_s3control.dart';
import 'bucket_lifecycle_configuration_s3control_args.dart';

/// Provides a resource to manage an S3 Control Bucket Lifecycle Configuration.
///
/// > **NOTE:** Each S3 Control Bucket can only have one Lifecycle Configuration. Using multiple of this resource against the same S3 Control Bucket will result in perpetual differences each provider run.
///
/// > This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Bucket Lifecycle Configurations in an AWS Partition, see the `aws.s3.Bucket` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Control Bucket Lifecycle Configurations using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/bucketLifecycleConfiguration:BucketLifecycleConfiguration example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/bucket/example
/// ```
class BucketLifecycleConfigurationS3control extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the bucket.
  late final pulumi.Output<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block(s) containing lifecycle rules for the bucket.
  late final pulumi.Output<List<BucketLifecycleConfigurationRuleS3control>>
      rules;

  BucketLifecycleConfigurationS3control(
    String name, {
    BucketLifecycleConfigurationS3controlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/bucketLifecycleConfiguration:BucketLifecycleConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.region = registerOutput<String>('region');
    this.rules =
        registerOutput<List<BucketLifecycleConfigurationRuleS3control>>(
            'rules');
  }
}
