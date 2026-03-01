// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_clone_job_vmmigration_v1alpha1_args_doc}
/// The set of arguments for CloneJob.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_clone_job_vmmigration_v1alpha1_args_doc}
class CloneJobVmmigrationV1alpha1Args {
  /// Required. The clone job identifier.
  final pulumi.Input<String> cloneJobId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [CloneJobVmmigrationV1alpha1Args].
  /// [cloneJobId] Required. The clone job identifier.
  /// [location] Optional.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required.
  CloneJobVmmigrationV1alpha1Args({
    required String cloneJobId,
    String? location,
    required String migratingVmId,
    String? project,
    String? requestId,
    required String sourceId,
  }) : cloneJobId = pulumi.Input.asInput<String>(cloneJobId),
       location = pulumi.Input.asOptionalInput<String>(location),
       migratingVmId = pulumi.Input.asInput<String>(migratingVmId),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloneJobId': cloneJobId,
      'location': ?location,
      'migratingVmId': migratingVmId,
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
    };
  }

  factory CloneJobVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return CloneJobVmmigrationV1alpha1Args(
      cloneJobId: map['cloneJobId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      migratingVmId: map['migratingVmId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sourceId: map['sourceId'] as String,
    );
  }
}
