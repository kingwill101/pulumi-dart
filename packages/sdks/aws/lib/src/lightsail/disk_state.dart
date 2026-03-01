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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<int>? sizeInGb,
    pulumi.Output<String>? supportCode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      sizeInGb = pulumi.Input.asOptionalInput<int>(sizeInGb),
      supportCode = pulumi.Input.asOptionalInput<String>(supportCode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sizeInGb: map['sizeInGb'] == null ? null : pulumi.Output.create<int>(map['sizeInGb'] as int),
      supportCode: map['supportCode'] == null ? null : pulumi.Output.create<String>(map['supportCode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

