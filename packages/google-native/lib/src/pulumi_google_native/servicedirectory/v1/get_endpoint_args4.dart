// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEndpoint.
class GetEndpointArgs4 {
  final Input<String> endpointId;
  final Input<String> location;
  final Input<String> namespaceId;
  final Input<String>? project;
  final Input<String> serviceId;

  GetEndpointArgs4({
    required this.endpointId,
    required this.location,
    required this.namespaceId,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointId'] = endpointId;
    map['location'] = location;
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetEndpointArgs4.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs4(
      endpointId: Input.asInput<String>(map['endpointId']),
      location: Input.asInput<String>(map['location']),
      namespaceId: Input.asInput<String>(map['namespaceId']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
