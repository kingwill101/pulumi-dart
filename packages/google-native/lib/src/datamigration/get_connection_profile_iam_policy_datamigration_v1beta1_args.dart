// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1beta1_get_connection_profile_iam_policy_datamigration_v1beta1_args_doc}
/// Arguments for getConnectionProfileIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1beta1_get_connection_profile_iam_policy_datamigration_v1beta1_args_doc}
class GetConnectionProfileIamPolicyDatamigrationV1beta1Args {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionProfileIamPolicyDatamigrationV1beta1Args].
  /// [connectionProfileId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConnectionProfileIamPolicyDatamigrationV1beta1Args({
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

  factory GetConnectionProfileIamPolicyDatamigrationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileIamPolicyDatamigrationV1beta1Args(
      connectionProfileId: map['connectionProfileId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

