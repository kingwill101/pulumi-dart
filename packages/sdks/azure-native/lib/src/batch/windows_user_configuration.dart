// ignore_for_file: unused_element, unnecessary_cast

import 'login_mode.dart';

/// Properties used to create a user account on a Windows node.
class WindowsUserConfiguration {
  /// Specifies login mode for the user. The default value is Interactive.
  final LoginMode? loginMode;

  /// Creates a new [WindowsUserConfiguration].
  /// [loginMode] Specifies login mode for the user. The default value is Interactive.
  WindowsUserConfiguration({
    this.loginMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginMode': ?loginMode == null ? null : loginMode!.value,
    };
  }

  factory WindowsUserConfiguration.fromMap(Map<String, dynamic> map) {
    return WindowsUserConfiguration(
      loginMode: map['loginMode'] == null ? null : LoginMode.fromValue(map['loginMode'] as String),
    );
  }
}

