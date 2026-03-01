// ignore_for_file: unused_element, unnecessary_cast

class ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector {
  /// Value for `method` should be a valid method name for the corresponding
  /// `serviceName` in `ApiOperation`. If `*` used as value for method,
  /// then ALL methods and permissions are allowed.
  final String? method;

  /// Value for permission should be a valid Cloud IAM permission for the
  /// corresponding `serviceName` in `ApiOperation`.
  final String? permission;

  /// Creates a new [ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector].
  /// [method] Value for `method` should be a valid method name for the corresponding
  /// [permission] Value for permission should be a valid Cloud IAM permission for the
  ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector({
    this.method,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'method': ?method, 'permission': ?permission};
  }

  factory ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimeterDryRunEgressPolicyEgressToOperationMethodSelector(
      method: map['method'] == null ? null : map['method'] as String,
      permission: map['permission'] == null
          ? null
          : map['permission'] as String,
    );
  }
}
