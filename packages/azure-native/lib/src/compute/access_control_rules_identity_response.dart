// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an Access Control Rule Identity.
class AccessControlRulesIdentityResponse {
  /// The path to the executable.
  final String? exePath;
  /// The groupName corresponding to this identity.
  final String? groupName;
  /// The name of the identity.
  final String name;
  /// The process name of the executable.
  final String? processName;
  /// The username corresponding to this identity.
  final String? userName;

  /// Creates a new [AccessControlRulesIdentityResponse].
  /// [exePath] The path to the executable.
  /// [groupName] The groupName corresponding to this identity.
  /// [name] The name of the identity.
  /// [processName] The process name of the executable.
  /// [userName] The username corresponding to this identity.
  AccessControlRulesIdentityResponse({
    this.exePath,
    this.groupName,
    required this.name,
    this.processName,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exePath': ?exePath,
      'groupName': ?groupName,
      'name': name,
      'processName': ?processName,
      'userName': ?userName,
    };
  }

  factory AccessControlRulesIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesIdentityResponse(
      exePath: map['exePath'] == null ? null : map['exePath'] as String,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      name: map['name'] as String,
      processName: map['processName'] == null ? null : map['processName'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

