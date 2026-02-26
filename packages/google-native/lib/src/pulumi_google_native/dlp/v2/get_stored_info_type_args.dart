// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getStoredInfoType.
class GetStoredInfoTypeArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> storedInfoTypeId;

  GetStoredInfoTypeArgs({
    required this.location,
    this.project,
    required this.storedInfoTypeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['storedInfoTypeId'] = storedInfoTypeId;
    return map;
  }

  factory GetStoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetStoredInfoTypeArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      storedInfoTypeId: Input.asInput<String>(map['storedInfoTypeId']),
    );
  }
}
