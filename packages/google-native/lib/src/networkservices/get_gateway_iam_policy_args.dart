// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_gateway_iam_policy_args_doc}
/// Arguments for getGatewayIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_gateway_iam_policy_args_doc}
class GetGatewayIamPolicyArgs {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewayIamPolicyArgs].
  /// [gatewayId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetGatewayIamPolicyArgs({
    required String gatewayId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : gatewayId = pulumi.Input.asInput<String>(gatewayId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetGatewayIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayIamPolicyArgs(
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
