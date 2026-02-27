// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityGateway.
class GetSecurityGatewayArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the Security Gateway resource.
  ///
  /// - - -
  final pulumi.Input<String> securityGatewayId;

  GetSecurityGatewayArgs({
    this.project,
    required this.securityGatewayId,
  });

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securityGatewayId: pulumi.Input.asInput<String>(map['securityGatewayId']),
    );
  }
}
