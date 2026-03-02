// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'login_mode.dart';

/// Properties used to create a user account on a Windows node.
class WindowsUserConfiguration {
  /// Specifies login mode for the user. The default value is Interactive.
  final pulumi.Input<LoginMode>? loginMode;

  /// Creates a new [WindowsUserConfiguration].
  /// [loginMode] Specifies login mode for the user. The default value is Interactive.
  WindowsUserConfiguration({
    this.loginMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginMode': ?pulumi.Input.mapOptionalInputValue<LoginMode, String>(loginMode, (value) => value.value),
    };
  }

  factory WindowsUserConfiguration.fromMap(Map<String, dynamic> map) {
    return WindowsUserConfiguration(
      loginMode: map['loginMode'] == null ? null : (LoginMode.fromValue(map['loginMode']! as String)).input(),
    );
  }
}

