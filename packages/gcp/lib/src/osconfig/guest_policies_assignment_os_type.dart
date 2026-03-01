// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesAssignmentOsType {
  /// Targets VM instances with OS Inventory enabled and having the following OS architecture.
  final String? osArchitecture;

  /// Targets VM instances with OS Inventory enabled and having the following OS short name, for example "debian" or "windows".
  final String? osShortName;

  /// Targets VM instances with OS Inventory enabled and having the following following OS version.
  final String? osVersion;

  /// Creates a new [GuestPoliciesAssignmentOsType].
  /// [osArchitecture] Targets VM instances with OS Inventory enabled and having the following OS architecture.
  /// [osShortName] Targets VM instances with OS Inventory enabled and having the following OS short name, for example "debian" or "windows".
  /// [osVersion] Targets VM instances with OS Inventory enabled and having the following following OS version.
  GuestPoliciesAssignmentOsType({
    this.osArchitecture,
    this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osArchitecture': ?osArchitecture,
      'osShortName': ?osShortName,
      'osVersion': ?osVersion,
    };
  }

  factory GuestPoliciesAssignmentOsType.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesAssignmentOsType(
      osArchitecture: map['osArchitecture'] == null
          ? null
          : map['osArchitecture'] as String,
      osShortName: map['osShortName'] == null
          ? null
          : map['osShortName'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
    );
  }
}
