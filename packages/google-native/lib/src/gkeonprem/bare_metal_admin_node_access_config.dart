// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the node access related settings for the bare metal admin cluster.
class BareMetalAdminNodeAccessConfig {
  /// LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  final String loginUser;

  /// Creates a new [BareMetalAdminNodeAccessConfig].
  /// [loginUser] LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  BareMetalAdminNodeAccessConfig({
    required this.loginUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loginUser'] = loginUser;
    return map;
  }

  factory BareMetalAdminNodeAccessConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminNodeAccessConfig(
      loginUser: map['loginUser'] as String,
    );
  }
}
