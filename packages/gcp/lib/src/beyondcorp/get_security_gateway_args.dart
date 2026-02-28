// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_get_security_gateway_get_security_gateway_args_doc}
/// Arguments for getSecurityGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_get_security_gateway_get_security_gateway_args_doc}
class GetSecurityGatewayArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the Security Gateway resource.
  ///
  /// - - -
  final pulumi.Input<String> securityGatewayId;

  /// Creates a new [GetSecurityGatewayArgs].
  /// [project] The project in which the resource belongs. If it
  /// [securityGatewayId] The name of the Security Gateway resource.
  GetSecurityGatewayArgs({
    String? project,
    required String securityGatewayId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        securityGatewayId = pulumi.Input.asInput<String>(securityGatewayId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['securityGatewayId'] = securityGatewayId;
    return map;
  }

  factory GetSecurityGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayArgs(
      project: map['project'] == null ? null : map['project'] as String,
      securityGatewayId: map['securityGatewayId'] as String,
    );
  }
}
