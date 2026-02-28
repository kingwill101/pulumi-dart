// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_get_gateway_apigateway_v1beta_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_get_gateway_apigateway_v1beta_args_doc}
class GetGatewayApigatewayV1betaArgs {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewayApigatewayV1betaArgs].
  /// [gatewayId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGatewayApigatewayV1betaArgs({
    required String gatewayId,
    required String location,
    String? project,
  })  : gatewayId = pulumi.Input.asInput<String>(gatewayId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      gatewayId: map['gatewayId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
