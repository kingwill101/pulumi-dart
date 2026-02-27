// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Gateway.
class GatewayArgs2 {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  final Input<String> apiConfig;

  /// Optional. Display name.
  final Input<String>? displayName;

  /// Required. Identifier to assign to the Gateway. Must be unique within scope of the parent resource.
  final Input<String> gatewayId;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  GatewayArgs2({
    required this.apiConfig,
    this.displayName,
    required this.gatewayId,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiConfig'] = apiConfig;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['gatewayId'] = gatewayId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GatewayArgs2.fromMap(Map<String, dynamic> map) {
    return GatewayArgs2(
      apiConfig: Input.asInput<String>(map['apiConfig']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gatewayId: Input.asInput<String>(map['gatewayId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
