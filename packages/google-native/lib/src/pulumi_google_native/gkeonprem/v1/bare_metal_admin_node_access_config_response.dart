// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the node access related settings for the bare metal admin cluster.
class BareMetalAdminNodeAccessConfigResponse {
  /// LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  final String loginUser;

  BareMetalAdminNodeAccessConfigResponse({
    required this.loginUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loginUser'] = loginUser;
    return map;
  }

  factory BareMetalAdminNodeAccessConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminNodeAccessConfigResponse(
      loginUser: map['loginUser'] as String,
    );
  }
}
