// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getLake.
class GetLakeArgs {
  final Input<String> lakeId;
  final Input<String> location;
  final Input<String>? project;

  GetLakeArgs({
    required this.lakeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLakeArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeArgs(
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
