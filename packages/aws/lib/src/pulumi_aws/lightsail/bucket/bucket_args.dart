// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Bucket.
class BucketArgs {
  /// Bundle ID to use for the bucket. A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a bucket. Use the [get-bucket-bundles](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-bucket-bundles.html) cli command to get a list of bundle IDs that you can specify.
  final pulumi.Input<String> bundleId;

  /// Whether to force delete non-empty buckets using `pulumi destroy`. AWS by default will not delete a bucket which is not empty, to prevent losing bucket data and affecting other resources in Lightsail. If `force_delete` is set to `true` the bucket will be deleted even when not empty.
  final pulumi.Input<bool>? forceDelete;

  /// Name for the bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  BucketArgs({
    required this.bundleId,
    this.forceDelete,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory BucketArgs.fromMap(Map<String, dynamic> map) {
    return BucketArgs(
      bundleId: pulumi.Input.asInput<String>(map['bundleId']),
      forceDelete: pulumi.Input.asOptionalInput<bool>(map['forceDelete']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
