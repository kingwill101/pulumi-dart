// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIndexEndpoint.
class GetIndexEndpointArgs {
  final Input<String> indexEndpointId;
  final Input<String> location;
  final Input<String>? project;

  GetIndexEndpointArgs({
    required this.indexEndpointId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexEndpointId'] = indexEndpointId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetIndexEndpointArgs(
      indexEndpointId: Input.asInput<String>(map['indexEndpointId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
