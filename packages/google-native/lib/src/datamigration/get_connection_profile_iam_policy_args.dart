// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_connection_profile_iam_policy_args_doc}
/// Arguments for getConnectionProfileIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_connection_profile_iam_policy_args_doc}
class GetConnectionProfileIamPolicyArgs {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionProfileIamPolicyArgs].
  /// [connectionProfileId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConnectionProfileIamPolicyArgs({
    required String connectionProfileId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionProfileId': connectionProfileId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetConnectionProfileIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileIamPolicyArgs(
      connectionProfileId: map['connectionProfileId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

