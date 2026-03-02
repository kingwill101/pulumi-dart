// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties used to create a user account on a Windows node.
class WindowsUserConfigurationResponse {
  /// Specifies login mode for the user. The default value is Interactive.
  final pulumi.Input<String>? loginMode;

  /// Creates a new [WindowsUserConfigurationResponse].
  /// [loginMode] Specifies login mode for the user. The default value is Interactive.
  WindowsUserConfigurationResponse({
    this.loginMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginMode': ?loginMode,
    };
  }

  factory WindowsUserConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WindowsUserConfigurationResponse(
      loginMode: map['loginMode'] == null ? null : (map['loginMode'] as String).input(),
    );
  }
}

