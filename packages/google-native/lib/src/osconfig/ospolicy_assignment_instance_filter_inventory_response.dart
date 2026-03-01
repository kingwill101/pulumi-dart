// ignore_for_file: unused_element, unnecessary_cast

/// VM inventory details.
class OSPolicyAssignmentInstanceFilterInventoryResponse {
  /// The OS short name
  final String osShortName;

  /// The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  final String osVersion;

  /// Creates a new [OSPolicyAssignmentInstanceFilterInventoryResponse].
  /// [osShortName] The OS short name
  /// [osVersion] The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.
  OSPolicyAssignmentInstanceFilterInventoryResponse({
    required this.osShortName,
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osShortName': osShortName,
      'osVersion': osVersion,
    };
  }

  factory OSPolicyAssignmentInstanceFilterInventoryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyAssignmentInstanceFilterInventoryResponse(
      osShortName: map['osShortName'] as String,
      osVersion: map['osVersion'] as String,
    );
  }
}
