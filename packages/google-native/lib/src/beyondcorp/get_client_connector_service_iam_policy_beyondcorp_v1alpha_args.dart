// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_client_connector_service_iam_policy_beyondcorp_v1alpha_args_doc}
/// Arguments for getClientConnectorServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_client_connector_service_iam_policy_beyondcorp_v1alpha_args_doc}
class GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<String> clientConnectorServiceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs].
  /// [clientConnectorServiceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs({
    required String clientConnectorServiceId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      clientConnectorServiceId = pulumi.Input.asInput<String>(clientConnectorServiceId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConnectorServiceId': clientConnectorServiceId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs(
      clientConnectorServiceId: map['clientConnectorServiceId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

