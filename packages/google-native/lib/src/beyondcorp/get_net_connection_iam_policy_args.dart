// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_net_connection_iam_policy_args_doc}
/// Arguments for getNetConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_net_connection_iam_policy_args_doc}
class GetNetConnectionIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> netConnectionId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetConnectionIamPolicyArgs].
  /// [location] Required.
  /// [netConnectionId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetNetConnectionIamPolicyArgs({
    required String location,
    required String netConnectionId,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        netConnectionId = pulumi.Input.asInput<String>(netConnectionId),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['netConnectionId'] = netConnectionId;
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

  factory GetNetConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetConnectionIamPolicyArgs(
      location: map['location'] as String,
      netConnectionId: map['netConnectionId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
