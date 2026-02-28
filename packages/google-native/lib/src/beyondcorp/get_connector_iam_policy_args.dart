// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_connector_iam_policy_args_doc}
/// Arguments for getConnectorIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_connector_iam_policy_args_doc}
class GetConnectorIamPolicyArgs {
  final pulumi.Input<String> connectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectorIamPolicyArgs].
  /// [connectorId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConnectorIamPolicyArgs({
    required String connectorId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : connectorId = pulumi.Input.asInput<String>(connectorId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectorId'] = connectorId;
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

  factory GetConnectorIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorIamPolicyArgs(
      connectorId: map['connectorId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
