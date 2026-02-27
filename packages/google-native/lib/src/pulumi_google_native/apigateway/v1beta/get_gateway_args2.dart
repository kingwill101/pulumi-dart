// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGateway.
class GetGatewayArgs2 {
  final Input<String> gatewayId;
  final Input<String> location;
  final Input<String>? project;

  GetGatewayArgs2({
    required this.gatewayId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewayId'] = gatewayId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGatewayArgs2.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs2(
      gatewayId: Input.asInput<String>(map['gatewayId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
