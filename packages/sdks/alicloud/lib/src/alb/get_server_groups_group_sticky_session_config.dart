// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerGroupsGroupStickySessionConfig {
  /// the cookie that is configured on the server.
  final pulumi.Input<String> cookie;
  /// The timeout period of a cookie. The timeout period of a cookie.
  final pulumi.Input<int> cookieTimeout;
  /// Indicates whether sticky session is enabled.
  final pulumi.Input<bool> stickySessionEnabled;
  /// The method that is used to handle a cookie.
  final pulumi.Input<String> stickySessionType;

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
      cookie: (map['cookie'] as String).input(),
      cookieTimeout: (map['cookieTimeout'] as int).input(),
      stickySessionEnabled: (map['stickySessionEnabled'] as bool).input(),
      stickySessionType: (map['stickySessionType'] as String).input(),
    );
  }
}

