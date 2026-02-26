// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceConnectionMap.
class GetServiceConnectionMapArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> serviceConnectionMapId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceConnectionMapId:
          Input.asInput<String>(map['serviceConnectionMapId']),
    );
  }
}
