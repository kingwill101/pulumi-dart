// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_app_gateway_iam_policy_beyondcorp_v1alpha_args_doc}
/// Arguments for getAppGatewayIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_app_gateway_iam_policy_beyondcorp_v1alpha_args_doc}
class GetAppGatewayIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppGatewayIamPolicyBeyondcorpV1alphaArgs].
  /// [appGatewayId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAppGatewayIamPolicyBeyondcorpV1alphaArgs({
    required String appGatewayId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : appGatewayId = pulumi.Input.asInput<String>(appGatewayId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGatewayId': appGatewayId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAppGatewayIamPolicyBeyondcorpV1alphaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppGatewayIamPolicyBeyondcorpV1alphaArgs(
      appGatewayId: map['appGatewayId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
