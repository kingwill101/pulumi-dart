// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_meta_patch.dart';
import 'status_details_patch.dart';

/// {@template pulumi_meta_v1_status_patch_args_doc}
/// The set of arguments for StatusPatch.
/// {@endtemplate}
/// {@macro pulumi_meta_v1_status_patch_args_doc}
class StatusPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Suggested HTTP return code for this status, 0 if not set.
  final pulumi.Input<int>? code;
  /// Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  final pulumi.Input<StatusDetailsPatch>? details;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// A human-readable description of the status of this operation.
  final pulumi.Input<String>? message;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<ListMetaPatch>? metadata;
  /// A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  final pulumi.Input<String>? reason;

  /// Creates a new [StatusPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [code] Suggested HTTP return code for this status, 0 if not set.
  /// [details] Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [message] A human-readable description of the status of this operation.
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [reason] A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  StatusPatchArgs({
    String? apiVersion,
    int? code,
    StatusDetailsPatch? details,
    String? kind,
    String? message,
    ListMetaPatch? metadata,
    String? reason,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      code = pulumi.Input.asOptionalInput<int>(code),
      details = pulumi.Input.asOptionalInput<StatusDetailsPatch>(details),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      message = pulumi.Input.asOptionalInput<String>(message),
      metadata = pulumi.Input.asOptionalInput<ListMetaPatch>(metadata),
      reason = pulumi.Input.asOptionalInput<String>(reason);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<StatusDetailsPatch, Map<String, dynamic>>(details, (value) => value.toMap()),
      'kind': ?kind,
      'message': ?message,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'reason': ?reason,
    };
  }

  factory StatusPatchArgs.fromMap(Map<String, dynamic> map) {
    return StatusPatchArgs(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      code: map['code'] == null ? null : map['code'] as int,
      details: map['details'] == null ? null : StatusDetailsPatch.fromMap((map['details'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      metadata: map['metadata'] == null ? null : ListMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}

