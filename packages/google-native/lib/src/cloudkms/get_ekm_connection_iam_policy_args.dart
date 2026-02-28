// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_ekm_connection_iam_policy_args_doc}
/// Arguments for getEkmConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_ekm_connection_iam_policy_args_doc}
class GetEkmConnectionIamPolicyArgs {
  final pulumi.Input<String> ekmConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEkmConnectionIamPolicyArgs].
  /// [ekmConnectionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEkmConnectionIamPolicyArgs({
    required String ekmConnectionId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : ekmConnectionId = pulumi.Input.asInput<String>(ekmConnectionId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ekmConnectionId'] = ekmConnectionId;
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

  factory GetEkmConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEkmConnectionIamPolicyArgs(
      ekmConnectionId: map['ekmConnectionId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
