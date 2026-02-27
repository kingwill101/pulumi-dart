import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_args.dart';

/// Manages a Lightsail bucket. Use this resource to create and manage object storage buckets for storing files, images, and other data in Lightsail.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.Bucket` using the `name` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/bucket:Bucket example example-bucket
/// ```
class Bucket extends pulumi.CustomResource {
  /// ARN of the Lightsail bucket.
  late final pulumi.Output<String> arn;

  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  late final pulumi.Output<String> availabilityZone;

  /// Bundle ID to use for the bucket. A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a bucket. Use the [get-bucket-bundles](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-bucket-bundles.html) cli command to get a list of bundle IDs that you can specify.
  late final pulumi.Output<String> bundleId;

  /// Date and time when the bucket was created.
  late final pulumi.Output<String> createdAt;

  /// Whether to force delete non-empty buckets using `pulumi destroy`. AWS by default will not delete a bucket which is not empty, to prevent losing bucket data and affecting other resources in Lightsail. If `force_delete` is set to `true` the bucket will be deleted even when not empty.
  late final pulumi.Output<bool?> forceDelete;

  /// Name for the bucket.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Support code for the resource. Include this code in your email to support when you have questions about a resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  late final pulumi.Output<String> supportCode;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// URL of the bucket.
  late final pulumi.Output<String> url;

  Bucket(
    String name, {
    BucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/bucket:Bucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.bundleId = registerOutput<String>('bundleId');
    this.createdAt = registerOutput<String>('createdAt');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.supportCode = registerOutput<String>('supportCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
  }
}
