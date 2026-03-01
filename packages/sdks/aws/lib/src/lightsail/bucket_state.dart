// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Bucket resources.
class BucketState {
  /// ARN of the Lightsail bucket.
  final pulumi.Input<String>? arn;
  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  final pulumi.Input<String>? availabilityZone;
  /// Bundle ID to use for the bucket. A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a bucket. Use the [get-bucket-bundles](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-bucket-bundles.html) cli command to get a list of bundle IDs that you can specify.
  final pulumi.Input<String>? bundleId;
  /// Date and time when the bucket was created.
  final pulumi.Input<String>? createdAt;
  /// Whether to force delete non-empty buckets using `pulumi destroy`. AWS by default will not delete a bucket which is not empty, to prevent losing bucket data and affecting other resources in Lightsail. If `force_delete` is set to `true` the bucket will be deleted even when not empty.
  final pulumi.Input<bool>? forceDelete;
  /// Name for the bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Support code for the resource. Include this code in your email to support when you have questions about a resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  final pulumi.Input<String>? supportCode;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// URL of the bucket.
  final pulumi.Input<String>? url;

  /// Creates a new [BucketState].
  /// [arn] ARN of the Lightsail bucket.
  /// [availabilityZone] Availability Zone. Follows the format us-east-2a (case-sensitive).
  /// [bundleId] Bundle ID to use for the bucket. A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a bucket. Use the [get-bucket-bundles](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-bucket-bundles.html) cli command to get a list of bundle IDs that you can specify.
  /// [createdAt] Date and time when the bucket was created.
  /// [forceDelete] Whether to force delete non-empty buckets using `pulumi destroy`. AWS by default will not delete a bucket which is not empty, to prevent losing bucket data and affecting other resources in Lightsail. If `force_delete` is set to `true` the bucket will be deleted even when not empty.
  /// [name] Name for the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportCode] Support code for the resource. Include this code in your email to support when you have questions about a resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [url] URL of the bucket.
  BucketState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? bundleId,
    pulumi.Output<String>? createdAt,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? supportCode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? url,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      supportCode = pulumi.Input.asOptionalInput<String>(supportCode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      bundleId: map['bundleId'] == null ? null : pulumi.Output.create<String>(map['bundleId'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      supportCode: map['supportCode'] == null ? null : pulumi.Output.create<String>(map['supportCode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

