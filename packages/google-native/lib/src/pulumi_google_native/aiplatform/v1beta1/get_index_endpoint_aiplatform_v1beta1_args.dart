// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIndexEndpoint.
class GetIndexEndpointAiplatformV1beta1Args {
  final pulumi.Input<String> indexEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetIndexEndpointAiplatformV1beta1Args({
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

  factory GetIndexEndpointAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetIndexEndpointAiplatformV1beta1Args(
      indexEndpointId: pulumi.Input.asInput<String>(map['indexEndpointId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
