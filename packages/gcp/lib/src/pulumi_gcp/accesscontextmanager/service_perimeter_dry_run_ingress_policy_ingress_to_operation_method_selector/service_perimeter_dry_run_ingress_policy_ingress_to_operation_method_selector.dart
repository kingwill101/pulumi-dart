// ignore_for_file: unused_element, unnecessary_cast

class ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector {
  /// Value for method should be a valid method name for the corresponding
  /// serviceName in `ApiOperation`. If `*` used as value for <span pulumi-lang-nodejs="`method`" pulumi-lang-dotnet="`Method`" pulumi-lang-go="`method`" pulumi-lang-python="`method`" pulumi-lang-yaml="`method`" pulumi-lang-java="`method`">`method`</span>, then
  /// ALL methods and permissions are allowed.
  final String? method;

  /// Value for permission should be a valid Cloud IAM permission for the
  /// corresponding `serviceName` in `ApiOperation`.
  final String? permission;

  ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector({
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

  factory ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterDryRunIngressPolicyIngressToOperationMethodSelector(
      method: map['method'] == null ? null : map['method'] as String,
      permission:
          map['permission'] == null ? null : map['permission'] as String,
    );
  }
}
