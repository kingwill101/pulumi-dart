// ignore_for_file: unused_element, unnecessary_cast

class OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter {
  /// The OS short name
  final String osShortName;

  /// The OS version Prefix matches are supported if
  /// asterisk(*) is provided as the last character. For example, to match all
  /// versions with a major version of `7`, specify the following value for this
  /// field `7.*` An empty string matches all OS versions.
  final String? osVersion;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter].
  /// [osShortName] The OS short name
  /// [osVersion] The OS version Prefix matches are supported if
  OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter({
    required this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['osShortName'] = osShortName;
    final osVersionValue = osVersion;
    if (osVersionValue != null) {
      map['osVersion'] = osVersionValue;
    }
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupInventoryFilter(
      osShortName: map['osShortName'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
    );
  }
}
