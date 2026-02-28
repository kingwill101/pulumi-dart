// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_private_connection_iam_policy_args_doc}
/// Arguments for getPrivateConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_private_connection_iam_policy_args_doc}
class GetPrivateConnectionIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateConnectionIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  GetPrivateConnectionIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    required String privateConnectionId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPrivateConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      privateConnectionId: map['privateConnectionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
