// ignore_for_file: unused_element, unnecessary_cast

/// Filtering criteria to select VMs based on OS details.
class OSPolicyOSFilter {
  /// This should match OS short name emitted by the OS inventory agent. An empty value matches any OS.
  final String? osShortName;

  /// This value should match the version emitted by the OS inventory agent. Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*`
  final String? osVersion;

  /// Creates a new [OSPolicyOSFilter].
  /// [osShortName] This should match OS short name emitted by the OS inventory agent. An empty value matches any OS.
  /// [osVersion] This value should match the version emitted by the OS inventory agent. Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*`
  OSPolicyOSFilter({
    this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory OSPolicyOSFilter.fromMap(Map<String, dynamic> map) {
    return OSPolicyOSFilter(
      osShortName:
          map['osShortName'] == null ? null : map['osShortName'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
    );
  }
}
