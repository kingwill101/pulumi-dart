// ignore_for_file: unused_element, unnecessary_cast


class GetServerGroupsGroupStickySessionConfig {
  /// the cookie that is configured on the server.
  final String cookie;
  /// The timeout period of a cookie. The timeout period of a cookie.
  final int cookieTimeout;
  /// Indicates whether sticky session is enabled.
  final bool stickySessionEnabled;
  /// The method that is used to handle a cookie.
  final String stickySessionType;

  /// Creates a new [GetServerGroupsGroupStickySessionConfig].
  /// [cookie] the cookie that is configured on the server.
  /// [cookieTimeout] The timeout period of a cookie. The timeout period of a cookie.
  /// [stickySessionEnabled] Indicates whether sticky session is enabled.
  /// [stickySessionType] The method that is used to handle a cookie.
  GetServerGroupsGroupStickySessionConfig({
    required this.cookie,
    required this.cookieTimeout,
    required this.stickySessionEnabled,
    required this.stickySessionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookie': cookie,
      'cookieTimeout': cookieTimeout,
      'stickySessionEnabled': stickySessionEnabled,
      'stickySessionType': stickySessionType,
    };
  }

  factory GetServerGroupsGroupStickySessionConfig.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsGroupStickySessionConfig(
      cookie: map['cookie'] as String,
      cookieTimeout: map['cookieTimeout'] as int,
      stickySessionEnabled: map['stickySessionEnabled'] as bool,
      stickySessionType: map['stickySessionType'] as String,
    );
  }
}

