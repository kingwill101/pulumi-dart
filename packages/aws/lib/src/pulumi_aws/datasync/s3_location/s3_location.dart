import 'package:pulumi/pulumi.dart' as pulumi;
import '../s3_location_s3_config/s3_location_s3_config.dart';
import 's3_location_args.dart';

/// Manages an S3 Location within AWS DataSync.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### S3 Bucket on AWS Outposts
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync S3 location.
///
///
/// Using `pulumi import`, import `aws.datasync.S3Location` using the DataSync Task Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/s3Location:S3Location example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class S3Location extends pulumi.CustomResource {
  /// (Amazon S3 on Outposts only) Amazon Resource Name (ARN) of the DataSync agent on the Outpost.
  late final pulumi.Output<List<String>?> agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) of the S3 bucket, or the Amazon S3 access point if the S3 bucket is located on an AWS Outposts resource.
  late final pulumi.Output<String> s3BucketArn;

  /// Configuration block containing information for connecting to S3.
  late final pulumi.Output<S3LocationS3Config> s3Config;

  /// Amazon S3 storage class that you want to store your files in when this location is used as a task destination. [Valid values](https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes)
  late final pulumi.Output<String> s3StorageClass;

  /// Prefix to perform actions as source or destination.
  late final pulumi.Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

  S3Location(
    String name, {
    S3LocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/s3Location:S3Location',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentArns = registerOutput<List<String>?>('agentArns');
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.s3BucketArn = registerOutput<String>('s3BucketArn');
    this.s3Config = registerOutput<S3LocationS3Config>('s3Config');
    this.s3StorageClass = registerOutput<String>('s3StorageClass');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
