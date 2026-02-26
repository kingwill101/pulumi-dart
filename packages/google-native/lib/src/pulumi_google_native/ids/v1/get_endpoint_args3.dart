// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEndpoint.
class GetEndpointArgs3 {
  final Input<String> endpointId;
  final Input<String> location;
  final Input<String>? project;

  GetEndpointArgs3({
    required this.endpointId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointId'] = endpointId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointArgs3.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs3(
      endpointId: Input.asInput<String>(map['endpointId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
