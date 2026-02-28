// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_app_gateway_args_doc}
/// Arguments for getAppGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_app_gateway_args_doc}
class GetAppGatewayArgs {
  final pulumi.Input<String> appGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppGatewayArgs].
  /// [appGatewayId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppGatewayArgs({
    required String appGatewayId,
    required String location,
    String? project,
  })  : appGatewayId = pulumi.Input.asInput<String>(appGatewayId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appGatewayId'] = appGatewayId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAppGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayArgs(
      appGatewayId: map['appGatewayId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
