// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_app_gateway_iam_policy_args_doc}
/// Arguments for getAppGatewayIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_app_gateway_iam_policy_args_doc}
class GetAppGatewayIamPolicyArgs {
  final pulumi.Input<String> appGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppGatewayIamPolicyArgs].
  /// [appGatewayId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAppGatewayIamPolicyArgs({
    required String appGatewayId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      appGatewayId = pulumi.Input.asInput<String>(appGatewayId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGatewayId': appGatewayId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAppGatewayIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayIamPolicyArgs(
      appGatewayId: map['appGatewayId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

