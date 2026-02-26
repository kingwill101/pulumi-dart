// ignore_for_file: unused_element, unnecessary_cast

import 'job_spec_response.dart';
import 'job_status_response5.dart';
import 'object_meta_response.dart';

/// Result data returned by getJob.
class GetJobResult11 {
  /// Optional. APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values.
  final String apiVersion;

  /// Optional. Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
  final String kind;

  /// Optional. Standard object's metadata.
  final ObjectMetaResponse metadata;

  /// Optional. Specification of the desired behavior of a job.
  final JobSpecResponse spec;

  /// Current status of a job.
  final JobStatusResponse5 status;

  GetJobResult11({
    required this.apiVersion,
    required this.kind,
    required this.metadata,
    required this.spec,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiVersion'] = apiVersion;
    map['kind'] = kind;
    map['metadata'] = metadata.toMap();
    map['spec'] = spec.toMap();
    map['status'] = status.toMap();
    return map;
  }

  factory GetJobResult11.fromMap(Map<String, dynamic> map) {
    return GetJobResult11(
      apiVersion: map['apiVersion'] as String,
      kind: map['kind'] as String,
      metadata: ObjectMetaResponse.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      spec:
          JobSpecResponse.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: JobStatusResponse5.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
    );
  }
}
