// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the node access related settings for the bare metal user cluster.
class BareMetalNodeAccessConfigResponse {
  /// LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  final String loginUser;

  BareMetalNodeAccessConfigResponse({
    required this.loginUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loginUser'] = loginUser;
    return map;
  }

  factory BareMetalNodeAccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalNodeAccessConfigResponse(
      loginUser: map['loginUser'] as String,
    );
  }
}
