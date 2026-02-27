// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGateway.
class GetGatewayApigatewayV1betaArgs {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetGatewayApigatewayV1betaArgs({
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

  factory GetGatewayApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayApigatewayV1betaArgs(
      gatewayId: pulumi.Input.asInput<String>(map['gatewayId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
