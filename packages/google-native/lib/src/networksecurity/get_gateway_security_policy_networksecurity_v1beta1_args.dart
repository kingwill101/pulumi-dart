// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_gateway_security_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getGatewaySecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_gateway_security_policy_networksecurity_v1beta1_args_doc}
class GetGatewaySecurityPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewaySecurityPolicyNetworksecurityV1beta1Args].
  /// [gatewaySecurityPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGatewaySecurityPolicyNetworksecurityV1beta1Args({
    required String gatewaySecurityPolicyId,
    required String location,
    String? project,
  }) :
      gatewaySecurityPolicyId = pulumi.Input.asInput<String>(gatewaySecurityPolicyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewaySecurityPolicyId': gatewaySecurityPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGatewaySecurityPolicyNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetGatewaySecurityPolicyNetworksecurityV1beta1Args(
      gatewaySecurityPolicyId: map['gatewaySecurityPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

