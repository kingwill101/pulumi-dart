// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_gateway_iam_policy_networkservices_v1beta1_args_doc}
/// Arguments for getGatewayIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_gateway_iam_policy_networkservices_v1beta1_args_doc}
class GetGatewayIamPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewayIamPolicyNetworkservicesV1beta1Args].
  /// [gatewayId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetGatewayIamPolicyNetworkservicesV1beta1Args({
    required String gatewayId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : gatewayId = pulumi.Input.asInput<String>(gatewayId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewayId'] = gatewayId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGatewayIamPolicyNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayIamPolicyNetworkservicesV1beta1Args(
      gatewayId: map['gatewayId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
