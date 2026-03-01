// ignore_for_file: unused_element, unnecessary_cast


class DirectoryLoginPreference {
  /// Whether the user can obtain the program access credential in the portal after logging in.
  final bool? allowUserToGetCredentials;
  /// IP address whitelist
  final String? loginNetworkMasks;

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
      allowUserToGetCredentials: map['allowUserToGetCredentials'] == null ? null : map['allowUserToGetCredentials'] as bool,
      loginNetworkMasks: map['loginNetworkMasks'] == null ? null : map['loginNetworkMasks'] as String,
    );
  }
}

