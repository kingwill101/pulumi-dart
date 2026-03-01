// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_metastore_database_iam_policy_get_metastore_database_iam_policy_args_doc}
/// Arguments for getMetastoreDatabaseIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_metastore_database_iam_policy_get_metastore_database_iam_policy_args_doc}
class GetMetastoreDatabaseIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> database;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetMetastoreDatabaseIamPolicyArgs].
  /// [database] Used to find the parent resource to bind the IAM policy to
  /// [location] Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] Used to find the parent resource to bind the IAM policy to
  GetMetastoreDatabaseIamPolicyArgs({
    required String database,
    String? location,
    String? project,
    required String serviceId,
  }) : database = pulumi.Input.asInput<String>(database),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'location': ?location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetMetastoreDatabaseIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMetastoreDatabaseIamPolicyArgs(
      database: map['database'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
