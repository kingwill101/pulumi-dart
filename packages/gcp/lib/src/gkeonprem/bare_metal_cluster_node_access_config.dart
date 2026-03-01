// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterNodeAccessConfig {
  /// LoginUser is the user name used to access node machines.
  /// It defaults to "root" if not set.
  final String? loginUser;

  /// Creates a new [BareMetalClusterNodeAccessConfig].
  /// [loginUser] LoginUser is the user name used to access node machines.
  BareMetalClusterNodeAccessConfig({this.loginUser});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'loginUser': ?loginUser};
  }

  factory BareMetalClusterNodeAccessConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterNodeAccessConfig(
      loginUser: map['loginUser'] == null ? null : map['loginUser'] as String,
    );
  }
}
