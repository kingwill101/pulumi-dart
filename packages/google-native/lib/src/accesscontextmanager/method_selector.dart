// ignore_for_file: unused_element, unnecessary_cast

/// An allowed method or permission of a service specified in ApiOperation.
class MethodSelector {
  /// Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.
  final String? method;

  /// Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.
  final String? permission;

  /// Creates a new [MethodSelector].
  /// [method] Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.
  /// [permission] Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.
  MethodSelector({
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

  factory MethodSelector.fromMap(Map<String, dynamic> map) {
    return MethodSelector(
      method: map['method'] == null ? null : map['method'] as String,
      permission:
          map['permission'] == null ? null : map['permission'] as String,
    );
  }
}
