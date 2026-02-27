// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStoredInfoType.
class GetStoredInfoTypeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storedInfoTypeId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      storedInfoTypeId: pulumi.Input.asInput<String>(map['storedInfoTypeId']),
    );
  }
}
