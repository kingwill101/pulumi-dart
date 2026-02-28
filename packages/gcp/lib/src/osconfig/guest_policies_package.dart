// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesPackage {
  /// The desiredState the agent should maintain for this package. The default is to ensure the package is installed.
  /// Possible values are: `INSTALLED`, `UPDATED`, `REMOVED`.
  final String? desiredState;

  /// Type of package manager that can be used to install this package. If a system does not have the package manager,
  /// the package is not installed or removed no error message is returned. By default, or if you specify ANY,
  /// the agent attempts to install and remove this package using the default package manager.
  /// This is useful when creating a policy that applies to different types of systems.
  /// The default behavior is ANY.
  /// Default value is `ANY`.
  /// Possible values are: `ANY`, `APT`, `YUM`, `ZYPPER`, `GOO`.
  final String? manager;

  /// The name of the package. A package is uniquely identified for conflict validation
  /// by checking the package name and the manager(s) that the package targets.
  final String name;

  /// Creates a new [GuestPoliciesPackage].
  /// [desiredState] The desiredState the agent should maintain for this package. The default is to ensure the package is installed.
  /// [manager] Type of package manager that can be used to install this package. If a system does not have the package manager,
  /// [name] The name of the package. A package is uniquely identified for conflict validation
  GuestPoliciesPackage({
    this.desiredState,
    this.manager,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    final managerValue = manager;
    if (managerValue != null) {
      map['manager'] = managerValue;
    }
    map['name'] = name;
    return map;
  }

  factory GuestPoliciesPackage.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesPackage(
      desiredState:
          map['desiredState'] == null ? null : map['desiredState'] as String,
      manager: map['manager'] == null ? null : map['manager'] as String,
      name: map['name'] as String,
    );
  }
}
