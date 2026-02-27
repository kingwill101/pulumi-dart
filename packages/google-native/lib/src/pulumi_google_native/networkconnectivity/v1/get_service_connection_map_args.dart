// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceConnectionMap.
class GetServiceConnectionMapArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionMapId;

  GetServiceConnectionMapArgs({
    required this.location,
    this.project,
    required this.serviceConnectionMapId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceConnectionMapId'] = serviceConnectionMapId;
    return map;
  }

  factory GetServiceConnectionMapArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionMapArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceConnectionMapId:
          pulumi.Input.asInput<String>(map['serviceConnectionMapId']),
    );
  }
}
