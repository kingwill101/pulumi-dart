// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_connection_policy_iam_policy_args_doc}
/// Arguments for getServiceConnectionPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_connection_policy_iam_policy_args_doc}
class GetServiceConnectionPolicyIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionPolicyId;

  /// Creates a new [GetServiceConnectionPolicyIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceConnectionPolicyId] Required.
  GetServiceConnectionPolicyIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String serviceConnectionPolicyId,
  })  : location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceConnectionPolicyId =
            pulumi.Input.asInput<String>(serviceConnectionPolicyId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceConnectionPolicyId'] = serviceConnectionPolicyId;
    return map;
  }

  factory GetServiceConnectionPolicyIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServiceConnectionPolicyIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      serviceConnectionPolicyId: map['serviceConnectionPolicyId'] as String,
    );
  }
}
