// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the node access related settings for the bare metal user cluster.
class BareMetalNodeAccessConfig {
  /// LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  final String? loginUser;

  BareMetalNodeAccessConfig({
    this.loginUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final loginUserValue = loginUser;
    if (loginUserValue != null) {
      map['loginUser'] = loginUserValue;
    }
    return map;
  }

  factory BareMetalNodeAccessConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNodeAccessConfig(
      loginUser: map['loginUser'] == null ? null : map['loginUser'] as String,
    );
  }
}
