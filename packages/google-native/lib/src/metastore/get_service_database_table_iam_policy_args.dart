// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1alpha_get_service_database_table_iam_policy_args_doc}
/// Arguments for getServiceDatabaseTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_get_service_database_table_iam_policy_args_doc}
class GetServiceDatabaseTableIamPolicyArgs {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> tableId;

  /// Creates a new [GetServiceDatabaseTableIamPolicyArgs].
  /// [databaseId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceId] Required.
  /// [tableId] Required.
  GetServiceDatabaseTableIamPolicyArgs({
    required String databaseId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String serviceId,
    required String tableId,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      tableId = pulumi.Input.asInput<String>(tableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceId': serviceId,
      'tableId': tableId,
    };
  }

  factory GetServiceDatabaseTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceDatabaseTableIamPolicyArgs(
      databaseId: map['databaseId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}

