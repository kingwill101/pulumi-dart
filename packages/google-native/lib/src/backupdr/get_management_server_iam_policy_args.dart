// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdr_v1_get_management_server_iam_policy_args_doc}
/// Arguments for getManagementServerIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_backupdr_v1_get_management_server_iam_policy_args_doc}
class GetManagementServerIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> managementServerId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagementServerIamPolicyArgs].
  /// [location] Required.
  /// [managementServerId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetManagementServerIamPolicyArgs({
    required String location,
    required String managementServerId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       managementServerId = pulumi.Input.asInput<String>(managementServerId),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'managementServerId': managementServerId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetManagementServerIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerIamPolicyArgs(
      location: map['location'] as String,
      managementServerId: map['managementServerId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
