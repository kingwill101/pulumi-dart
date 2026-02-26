// ignore_for_file: unused_element, unnecessary_cast

/// Defines the criteria for selecting VM Instances by OS type.
class AssignmentOsType {
  /// Targets VM instances with OS Inventory enabled and having the following OS architecture.
  final String? osArchitecture;

  /// Targets VM instances with OS Inventory enabled and having the following OS short name, for example "debian" or "windows".
  final String? osShortName;

  /// Targets VM instances with OS Inventory enabled and having the following following OS version.
  final String? osVersion;

  AssignmentOsType({
    this.osArchitecture,
    this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final osArchitectureValue = osArchitecture;
    if (osArchitectureValue != null) {
      map['osArchitecture'] = osArchitectureValue;
    }
    final osShortNameValue = osShortName;
    if (osShortNameValue != null) {
      map['osShortName'] = osShortNameValue;
    }
    final osVersionValue = osVersion;
    if (osVersionValue != null) {
      map['osVersion'] = osVersionValue;
    }
    return map;
  }

  factory AssignmentOsType.fromMap(Map<String, dynamic> map) {
    return AssignmentOsType(
      osArchitecture: map['osArchitecture'] == null
          ? null
          : map['osArchitecture'] as String,
      osShortName:
          map['osShortName'] == null ? null : map['osShortName'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
    );
  }
}
