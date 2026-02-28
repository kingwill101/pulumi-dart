// ignore_for_file: unused_element, unnecessary_cast


class BareMetalAdminClusterNodeAccessConfig {
  /// LoginUser is the user name used to access node machines.
  /// It defaults to "root" if not set.
  final String? loginUser;

  /// Creates a new [BareMetalAdminClusterNodeAccessConfig].
  /// [loginUser] LoginUser is the user name used to access node machines.
  BareMetalAdminClusterNodeAccessConfig({
    this.loginUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginUser': ?loginUser,
    };
  }

  factory BareMetalAdminClusterNodeAccessConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterNodeAccessConfig(
      loginUser: map['loginUser'] == null ? null : map['loginUser'] as String,
    );
  }
}

