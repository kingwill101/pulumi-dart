// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkgroup.
class GetWorkgroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the workgroup associated with the database.
  final Input<String> workgroupName;

  GetWorkgroupArgs({
    this.region,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['workgroupName'] = workgroupName;
    return map;
  }

  factory GetWorkgroupArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupArgs(
      region: Input.asOptionalInput<String>(map['region']),
      workgroupName: Input.asInput<String>(map['workgroupName']),
    );
  }
}
