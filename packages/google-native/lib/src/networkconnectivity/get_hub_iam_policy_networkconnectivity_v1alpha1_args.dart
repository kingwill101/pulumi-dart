// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1alpha1_get_hub_iam_policy_networkconnectivity_v1alpha1_args_doc}
/// Arguments for getHubIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_get_hub_iam_policy_networkconnectivity_v1alpha1_args_doc}
class GetHubIamPolicyNetworkconnectivityV1alpha1Args {
  final pulumi.Input<String> hubId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHubIamPolicyNetworkconnectivityV1alpha1Args].
  /// [hubId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetHubIamPolicyNetworkconnectivityV1alpha1Args({
    required String hubId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : hubId = pulumi.Input.asInput<String>(hubId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubId': hubId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetHubIamPolicyNetworkconnectivityV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetHubIamPolicyNetworkconnectivityV1alpha1Args(
      hubId: map['hubId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
