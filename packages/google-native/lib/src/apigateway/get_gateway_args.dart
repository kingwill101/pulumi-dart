// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1_get_gateway_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_get_gateway_args_doc}
class GetGatewayArgs {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewayArgs].
  /// [gatewayId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGatewayArgs({
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

  factory GetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs(
      gatewayId: map['gatewayId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
