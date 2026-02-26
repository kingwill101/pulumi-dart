// ignore_for_file: unused_element, unnecessary_cast

/// Defines the criteria for selecting VM Instances by OS type.
class AssignmentOsTypeResponse {
  /// Targets VM instances with OS Inventory enabled and having the following OS architecture.
  final String osArchitecture;

  /// Targets VM instances with OS Inventory enabled and having the following OS short name, for example "debian" or "windows".
  final String osShortName;

  /// Targets VM instances with OS Inventory enabled and having the following following OS version.
  final String osVersion;

  AssignmentOsTypeResponse({
    required this.osArchitecture,
    required this.osShortName,
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['osArchitecture'] = osArchitecture;
    map['osShortName'] = osShortName;
    map['osVersion'] = osVersion;
    return map;
  }

  factory AssignmentOsTypeResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentOsTypeResponse(
      osArchitecture: map['osArchitecture'] as String,
      osShortName: map['osShortName'] as String,
      osVersion: map['osVersion'] as String,
    );
  }
}
