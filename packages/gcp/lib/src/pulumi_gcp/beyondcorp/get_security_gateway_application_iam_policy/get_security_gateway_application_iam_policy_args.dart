// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecurityGatewayApplicationIamPolicy.
class GetSecurityGatewayApplicationIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> applicationId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// ID of the Security Gateway resource this belongs to. Used to find the parent resource to bind the IAM policy to
  final Input<String> securityGatewayId;

  GetSecurityGatewayApplicationIamPolicyArgs({
    required this.applicationId,
    this.project,
    required this.securityGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['securityGatewayId'] = securityGatewayId;
    return map;
  }

  factory GetSecurityGatewayApplicationIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityGatewayApplicationIamPolicyArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      project: Input.asOptionalInput<String>(map['project']),
      securityGatewayId: Input.asInput<String>(map['securityGatewayId']),
    );
  }
}
