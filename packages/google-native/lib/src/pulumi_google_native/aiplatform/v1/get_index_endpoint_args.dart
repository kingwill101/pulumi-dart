// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIndexEndpoint.
class GetIndexEndpointArgs {
  final pulumi.Input<String> indexEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      indexEndpointId: pulumi.Input.asInput<String>(map['indexEndpointId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
