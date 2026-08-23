// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an Access Control Rule Identity.
class AccessControlRulesIdentityResponse {
  /// The path to the executable.
  final pulumi.Input<String>? exePath;
  /// The groupName corresponding to this identity.
  final pulumi.Input<String>? groupName;
  /// The name of the identity.
  final pulumi.Input<String> name;
  /// The process name of the executable.
  final pulumi.Input<String>? processName;
  /// The username corresponding to this identity.
  final pulumi.Input<String>? userName;

  /// Creates a new [AccessControlRulesIdentityResponse].
  /// [exePath] The path to the executable.
  /// [groupName] The groupName corresponding to this identity.
  /// [name] The name of the identity.
  /// [processName] The process name of the executable.
  /// [userName] The username corresponding to this identity.
  const AccessControlRulesIdentityResponse({
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
      exePath: (() { final guardedValue = map['exePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      processName: (() { final guardedValue = map['processName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
