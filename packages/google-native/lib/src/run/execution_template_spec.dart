// ignore_for_file: unused_element, unnecessary_cast

import 'execution_spec.dart';
import 'object_meta.dart';

/// ExecutionTemplateSpec describes the metadata and spec an Execution should have when created from a job.
class ExecutionTemplateSpec {
  /// Optional. Optional metadata for this Execution, including labels and annotations. The following annotation keys set properties of the created execution: * `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections. Multiple values should be comma separated. * `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress. Supported values are `all-traffic`, `all` (deprecated), and `private-ranges-only`. `all-traffic` and `all` provide the same functionality. `all` is deprecated but will continue to be supported. Prefer `all-traffic`.
  final ObjectMeta? metadata;

  /// ExecutionSpec holds the desired configuration for executions of this job.
  final ExecutionSpec spec;

  /// Creates a new [ExecutionTemplateSpec].
  /// [metadata] Optional. Optional metadata for this Execution, including labels and annotations. The following annotation keys set properties of the created execution: * `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections. Multiple values should be comma separated. * `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress. Supported values are `all-traffic`, `all` (deprecated), and `private-ranges-only`. `all-traffic` and `all` provide the same functionality. `all` is deprecated but will continue to be supported. Prefer `all-traffic`.
  /// [spec] ExecutionSpec holds the desired configuration for executions of this job.
  ExecutionTemplateSpec({
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    map['spec'] = spec.toMap();
    return map;
  }

  factory ExecutionTemplateSpec.fromMap(Map<String, dynamic> map) {
    return ExecutionTemplateSpec(
      metadata: map['metadata'] == null
          ? null
          : ObjectMeta.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      spec: ExecutionSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}
