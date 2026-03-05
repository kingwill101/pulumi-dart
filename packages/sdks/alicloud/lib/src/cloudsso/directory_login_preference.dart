// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryLoginPreference {
  /// Whether the user can obtain the program access credential in the portal after logging in.
  final pulumi.Input<bool>? allowUserToGetCredentials;
  /// IP address whitelist
  final pulumi.Input<String>? loginNetworkMasks;

  /// Creates a new [DirectoryLoginPreference].
  /// [allowUserToGetCredentials] Whether the user can obtain the program access credential in the portal after logging in.
  /// [loginNetworkMasks] IP address whitelist
  DirectoryLoginPreference({
    this.allowUserToGetCredentials,
    this.loginNetworkMasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUserToGetCredentials': ?allowUserToGetCredentials,
      'loginNetworkMasks': ?loginNetworkMasks,
    };
  }

  factory DirectoryLoginPreference.fromMap(Map<String, dynamic> map) {
    return DirectoryLoginPreference(
      allowUserToGetCredentials: (() { final guardedValue = map['allowUserToGetCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loginNetworkMasks: (() { final guardedValue = map['loginNetworkMasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

