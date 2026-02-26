// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecurityGateway.
class GetSecurityGatewayArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the Security Gateway resource.
  ///
  /// - - -
  final Input<String> securityGatewayId;

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
      project: Input.asOptionalInput<String>(map['project']),
      securityGatewayId: Input.asInput<String>(map['securityGatewayId']),
    );
  }
}
