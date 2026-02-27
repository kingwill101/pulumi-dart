// ignore_for_file: unused_element, unnecessary_cast

/// Deprecation status for a public resource.
class DeprecationStatusResponseComputeV1 {
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED. This is only informational and the status will not change unless the client explicitly changes it.
  final String deleted;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED. This is only informational and the status will not change unless the client explicitly changes it.
  final String deprecated;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE. This is only informational and the status will not change unless the client explicitly changes it.
  final String obsolete;

  /// The URL of the suggested replacement for a deprecated resource. The suggested replacement resource must be the same kind of resource as the deprecated resource.
  final String replacement;

  /// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  final String state;

  DeprecationStatusResponseComputeV1({
    required this.deleted,
    required this.deprecated,
    required this.obsolete,
    required this.replacement,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleted'] = deleted;
    map['deprecated'] = deprecated;
    map['obsolete'] = obsolete;
    map['replacement'] = replacement;
    map['state'] = state;
    return map;
  }

  factory DeprecationStatusResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return DeprecationStatusResponseComputeV1(
      deleted: map['deleted'] as String,
      deprecated: map['deprecated'] as String,
      obsolete: map['obsolete'] as String,
      replacement: map['replacement'] as String,
      state: map['state'] as String,
    );
  }
}
