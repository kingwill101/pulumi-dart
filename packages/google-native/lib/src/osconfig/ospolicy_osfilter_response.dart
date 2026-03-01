// ignore_for_file: unused_element, unnecessary_cast

/// Filtering criteria to select VMs based on OS details.
class OSPolicyOSFilterResponse {
  /// This should match OS short name emitted by the OS inventory agent. An empty value matches any OS.
  final String osShortName;

  /// This value should match the version emitted by the OS inventory agent. Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*`
  final String osVersion;

  /// Creates a new [OSPolicyOSFilterResponse].
  /// [osShortName] This should match OS short name emitted by the OS inventory agent. An empty value matches any OS.
  /// [osVersion] This value should match the version emitted by the OS inventory agent. Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*`
  OSPolicyOSFilterResponse({
    required this.osShortName,
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osShortName': osShortName,
      'osVersion': osVersion,
    };
  }

  factory OSPolicyOSFilterResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyOSFilterResponse(
      osShortName: map['osShortName'] as String,
      osVersion: map['osVersion'] as String,
    );
  }
}
