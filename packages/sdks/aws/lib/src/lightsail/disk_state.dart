// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Disk resources.
class DiskState {
  /// ARN of the disk.
  final pulumi.Input<String>? arn;
  /// Availability Zone in which to create the disk.
  final pulumi.Input<String>? availabilityZone;
  /// Date and time when the disk was created.
  final pulumi.Input<String>? createdAt;
  /// Name of the disk. Must begin with an alphabetic character and contain only alphanumeric characters, underscores, hyphens, and dots.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Size of the disk in GB.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? sizeInGb;
  /// Support code for the disk. Include this code in your email to support when you have questions about a disk in Lightsail.
  final pulumi.Input<String>? supportCode;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DiskState].
  /// [arn] ARN of the disk.
  /// [availabilityZone] Availability Zone in which to create the disk.
  /// [createdAt] Date and time when the disk was created.
  /// [name] Name of the disk. Must begin with an alphabetic character and contain only alphanumeric characters, underscores, hyphens, and dots.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sizeInGb] Size of the disk in GB.
  /// [supportCode] Support code for the disk. Include this code in your email to support when you have questions about a disk in Lightsail.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DiskState({
    this.arn,
    this.availabilityZone,
    this.createdAt,
    this.name,
    this.region,
    this.sizeInGb,
    this.supportCode,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'createdAt': ?createdAt,
      'name': ?name,
      'region': ?region,
      'sizeInGb': ?sizeInGb,
      'supportCode': ?supportCode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DiskState.fromMap(Map<String, dynamic> map) {
    return DiskState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sizeInGb: map['sizeInGb'] == null ? null : ((map['sizeInGb'] as int).input()).input(),
      supportCode: map['supportCode'] == null ? null : ((map['supportCode'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

