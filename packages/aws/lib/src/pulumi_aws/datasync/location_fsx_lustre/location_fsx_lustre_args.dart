// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LocationFsxLustre.
class LocationFsxLustreArgs {
  /// The Amazon Resource Name (ARN) for the FSx for Lustre file system.
  final Input<String> fsxFilesystemArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Lustre file system.
  final Input<List<String>> securityGroupArns;

  /// Subdirectory to perform actions as source or destination.
  final Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  LocationFsxLustreArgs({
    required this.fsxFilesystemArn,
    this.region,
    required this.securityGroupArns,
    this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fsxFilesystemArn'] = fsxFilesystemArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupArns'] = securityGroupArns;
    final subdirectoryValue = subdirectory;
    if (subdirectoryValue != null) {
      map['subdirectory'] = subdirectoryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LocationFsxLustreArgs.fromMap(Map<String, dynamic> map) {
    return LocationFsxLustreArgs(
      fsxFilesystemArn: Input.asInput<String>(map['fsxFilesystemArn']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupArns: Input.asInput<List<String>>(map['securityGroupArns']),
      subdirectory: Input.asOptionalInput<String>(map['subdirectory']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
