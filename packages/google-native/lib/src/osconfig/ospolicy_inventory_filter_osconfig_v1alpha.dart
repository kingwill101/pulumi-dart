// ignore_for_file: unused_element, unnecessary_cast

/// Filtering criteria to select VMs based on inventory details.
class OSPolicyInventoryFilterOsconfigV1alpha {
  /// The OS short name
  final String osShortName;

  /// The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  final String? osVersion;

  /// Creates a new [OSPolicyInventoryFilterOsconfigV1alpha].
  /// [osShortName] The OS short name
  /// [osVersion] The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  OSPolicyInventoryFilterOsconfigV1alpha({
    required this.osShortName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osShortName': osShortName,
      'osVersion': ?osVersion,
    };
  }

  factory OSPolicyInventoryFilterOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyInventoryFilterOsconfigV1alpha(
      osShortName: map['osShortName'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
    );
  }
}
