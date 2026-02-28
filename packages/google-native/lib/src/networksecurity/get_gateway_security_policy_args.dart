// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_gateway_security_policy_args_doc}
/// Arguments for getGatewaySecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_gateway_security_policy_args_doc}
class GetGatewaySecurityPolicyArgs {
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewaySecurityPolicyArgs].
  /// [gatewaySecurityPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGatewaySecurityPolicyArgs({
    required String gatewaySecurityPolicyId,
    required String location,
    String? project,
  })  : gatewaySecurityPolicyId =
            pulumi.Input.asInput<String>(gatewaySecurityPolicyId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewaySecurityPolicyId'] = gatewaySecurityPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGatewaySecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewaySecurityPolicyArgs(
      gatewaySecurityPolicyId: map['gatewaySecurityPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
