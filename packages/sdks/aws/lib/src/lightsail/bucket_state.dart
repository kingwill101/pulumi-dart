// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Bucket resources.
class BucketState {
  /// ARN of the Lightsail bucket.
  final pulumi.Input<String?>? arn;
  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  final pulumi.Input<String?>? availabilityZone;
  /// Bundle ID to use for the bucket. A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a bucket. Use the [get-bucket-bundles](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-bucket-bundles.html) cli command to get a list of bundle IDs that you can specify.
  final pulumi.Input<String?>? bundleId;
  /// Date and time when the bucket was created.
  final pulumi.Input<String?>? createdAt;
  /// Whether to force delete non-empty buckets using `pulumi destroy`. AWS by default will not delete a bucket which is not empty, to prevent losing bucket data and affecting other resources in Lightsail. If `forceDelete` is set to `true` the bucket will be deleted even when not empty.
  final pulumi.Input<bool?>? forceDelete;
  /// Name for the bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Support code for the resource. Include this code in your email to support when you have questions about a resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  final pulumi.Input<String?>? supportCode;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// URL of the bucket.
  final pulumi.Input<String?>? url;

  /// Creates a new [BucketState].
  /// [arn] ARN of the Lightsail bucket.
  /// [availabilityZone] Availability Zone. Follows the format us-east-2a (case-sensitive).
  /// [bundleId] Bundle ID to use for the bucket. A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a bucket. Use the [get-bucket-bundles](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-bucket-bundles.html) cli command to get a list of bundle IDs that you can specify.
  /// [createdAt] Date and time when the bucket was created.
  /// [forceDelete] Whether to force delete non-empty buckets using `pulumi destroy`. AWS by default will not delete a bucket which is not empty, to prevent losing bucket data and affecting other resources in Lightsail. If `forceDelete` is set to `true` the bucket will be deleted even when not empty.
  /// [name] Name for the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportCode] Support code for the resource. Include this code in your email to support when you have questions about a resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [url] URL of the bucket.
  const BucketState({
    this.arn,
    this.availabilityZone,
    this.bundleId,
    this.createdAt,
    this.forceDelete,
    this.name,
    this.region,
    this.supportCode,
    this.tags,
    this.tagsAll,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'bundleId': ?bundleId,
      'createdAt': ?createdAt,
      'forceDelete': ?forceDelete,
      'name': ?name,
      'region': ?region,
      'supportCode': ?supportCode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'url': ?url,
    };
  }

  factory BucketState.fromMap(Map<String, dynamic> map) {
    return BucketState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportCode: (() { final guardedValue = map['supportCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
