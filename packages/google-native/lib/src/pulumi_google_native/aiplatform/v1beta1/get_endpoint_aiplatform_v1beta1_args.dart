// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEndpoint.
class GetEndpointAiplatformV1beta1Args {
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEndpointAiplatformV1beta1Args({
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

  factory GetEndpointAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEndpointAiplatformV1beta1Args(
      endpointId: pulumi.Input.asInput<String>(map['endpointId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
