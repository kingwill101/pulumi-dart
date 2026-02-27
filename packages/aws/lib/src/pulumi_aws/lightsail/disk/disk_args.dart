// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Disk.
class DiskArgs {
  /// Availability Zone in which to create the disk.
  final Input<String> availabilityZone;

  /// Name of the disk. Must begin with an alphabetic character and contain only alphanumeric characters, underscores, hyphens, and dots.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Size of the disk in GB.
  ///
  /// The following arguments are optional:
  final Input<int> sizeInGb;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DiskArgs({
    required this.availabilityZone,
    this.name,
    this.region,
    required this.sizeInGb,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sizeInGb'] = sizeInGb;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DiskArgs.fromMap(Map<String, dynamic> map) {
    return DiskArgs(
      availabilityZone: Input.asInput<String>(map['availabilityZone']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      sizeInGb: Input.asInput<int>(map['sizeInGb']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
