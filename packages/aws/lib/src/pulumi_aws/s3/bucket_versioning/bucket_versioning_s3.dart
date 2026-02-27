import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_versioning_versioning_configuration/bucket_versioning_versioning_configuration.dart';
import 'bucket_versioning_args.dart';

/// Provides a resource for controlling versioning on an S3 bucket.
/// Deleting this resource will either suspend versioning on the associated S3 bucket or
/// simply remove the resource from state if the associated S3 bucket is unversioned.
///
/// For more information, see [How S3 versioning works](https://docs.aws.amazon.com/AmazonS3/latest/userguide/manage-versioning-examples.html).
///
/// > **NOTE:** If you are enabling versioning on the bucket for the first time, AWS recommends that you wait for 15 minutes after enabling versioning before issuing write operations (PUT or DELETE) on objects in the bucket.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With Versioning Enabled
///
///
///
/// ### With Versioning Disabled
///
///
///
/// ### Object Dependency On Versioning
///
/// When you create an object whose `version_id` you need and an `aws.s3.BucketVersioning` resource in the same configuration, you are more likely to have success by ensuring the `s3_object` depends either implicitly (see below) or explicitly (i.e., using `depends_on = [aws_s3_bucket_versioning.example]`) on the `aws.s3.BucketVersioning` resource.
///
/// > **NOTE:** For critical and/or production S3 objects, do not create a bucket, enable versioning, and create an object in the bucket within the same configuration. Doing so will not allow the AWS-recommended 15 minutes between enabling versioning and writing to the bucket.
///
/// This example shows the `aws_s3_object.example` depending implicitly on the versioning resource through the reference to `aws_s3_bucket_versioning.example.bucket` to define `bucket`:
///
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
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket versioning using the `bucket` or using the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketVersioning:BucketVersioning example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketVersioning:BucketVersioning example bucket-name,123456789012
/// ```
class BucketVersioningS3 extends pulumi.CustomResource {
  /// Name of the S3 bucket.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  late final pulumi.Output<String?> mfa;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for the versioning parameters. See below.
  late final pulumi.Output<BucketVersioningVersioningConfiguration>
      versioningConfiguration;

  BucketVersioningS3(
    String name, {
    BucketVersioningArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketVersioning:BucketVersioning',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.mfa = registerOutput<String?>('mfa');
    this.region = registerOutput<String>('region');
    this.versioningConfiguration =
        registerOutput<BucketVersioningVersioningConfiguration>(
            'versioningConfiguration');
  }
}
