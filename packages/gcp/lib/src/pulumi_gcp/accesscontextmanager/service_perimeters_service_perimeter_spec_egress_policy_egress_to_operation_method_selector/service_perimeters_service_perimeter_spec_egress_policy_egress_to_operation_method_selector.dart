// ignore_for_file: unused_element, unnecessary_cast

class ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector {
  /// Value for <span pulumi-lang-nodejs="`method`" pulumi-lang-dotnet="`Method`" pulumi-lang-go="`method`" pulumi-lang-python="`method`" pulumi-lang-yaml="`method`" pulumi-lang-java="`method`">`method`</span> should be a valid method name for the corresponding
  /// `serviceName` in `ApiOperation`. If `*` used as value for method,
  /// then ALL methods and permissions are allowed.
  final String? method;

  /// Value for permission should be a valid Cloud IAM permission for the
  /// corresponding `serviceName` in `ApiOperation`.
  final String? permission;

  ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector({
    this.method,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue;
    }
    final permissionValue = permission;
    if (permissionValue != null) {
      map['permission'] = permissionValue;
    }
    return map;
  }

  factory ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector(
      method: map['method'] == null ? null : map['method'] as String,
      permission:
          map['permission'] == null ? null : map['permission'] as String,
    );
  }
}
