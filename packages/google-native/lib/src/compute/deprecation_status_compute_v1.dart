// ignore_for_file: unused_element, unnecessary_cast

import 'deprecation_status_state_compute_v1.dart';

/// Deprecation status for a public resource.
class DeprecationStatusComputeV1 {
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED. This is only informational and the status will not change unless the client explicitly changes it.
  final String? deleted;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED. This is only informational and the status will not change unless the client explicitly changes it.
  final String? deprecated;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE. This is only informational and the status will not change unless the client explicitly changes it.
  final String? obsolete;

  /// The URL of the suggested replacement for a deprecated resource. The suggested replacement resource must be the same kind of resource as the deprecated resource.
  final String? replacement;

  /// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  final DeprecationStatusStateComputeV1? state;

  /// Creates a new [DeprecationStatusComputeV1].
  /// [deleted] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED. This is only informational and the status will not change unless the client explicitly changes it.
  /// [deprecated] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED. This is only informational and the status will not change unless the client explicitly changes it.
  /// [obsolete] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE. This is only informational and the status will not change unless the client explicitly changes it.
  /// [replacement] The URL of the suggested replacement for a deprecated resource. The suggested replacement resource must be the same kind of resource as the deprecated resource.
  /// [state] The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  DeprecationStatusComputeV1({
    this.deleted,
    this.deprecated,
    this.obsolete,
    this.replacement,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletedValue = deleted;
    if (deletedValue != null) {
      map['deleted'] = deletedValue;
    }
    final deprecatedValue = deprecated;
    if (deprecatedValue != null) {
      map['deprecated'] = deprecatedValue;
    }
    final obsoleteValue = obsolete;
    if (obsoleteValue != null) {
      map['obsolete'] = obsoleteValue;
    }
    final replacementValue = replacement;
    if (replacementValue != null) {
      map['replacement'] = replacementValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    return map;
  }

  factory DeprecationStatusComputeV1.fromMap(Map<String, dynamic> map) {
    return DeprecationStatusComputeV1(
      deleted: map['deleted'] == null ? null : map['deleted'] as String,
      deprecated:
          map['deprecated'] == null ? null : map['deprecated'] as String,
      obsolete: map['obsolete'] == null ? null : map['obsolete'] as String,
      replacement:
          map['replacement'] == null ? null : map['replacement'] as String,
      state: map['state'] == null
          ? null
          : DeprecationStatusStateComputeV1.fromValue(map['state'] as String),
    );
  }
}
