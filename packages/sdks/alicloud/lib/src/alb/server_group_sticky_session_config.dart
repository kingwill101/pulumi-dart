// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupStickySessionConfig {
  /// The cookie to be configured on the server.
  ///
  /// The cookie must be 1 to 200 characters in length and can contain only ASCII characters and digits. It cannot contain commas (,), semicolons (;), or space characters. It cannot start with a dollar sign ($).
  ///
  /// &gt; **NOTE:**  This parameter takes effect when the `StickySessionEnabled` parameter is set to `true` and the `StickySessionType` parameter is set to `Server`.
  final pulumi.Input<String>? cookie;
  /// The maximum amount of time to wait before the session cookie expires. Unit: seconds.
  ///
  /// Valid values: `1` to `86400`.
  ///
  /// Default value: `1000`.
  ///
  /// &gt; **NOTE:**   This parameter takes effect only when `StickySessionEnabled` is set to `true` and `StickySessionType` is set to `Insert`.
  final pulumi.Input<int>? cookieTimeout;
  /// Specifies whether to enable session persistence. Valid values:
  final pulumi.Input<bool>? stickySessionEnabled;
  /// The method that is used to handle a cookie. Valid values:
  ///
  /// *   `Insert`: inserts a cookie.
  ///
  /// ALB inserts a cookie (SERVERID) into the first HTTP or HTTPS response packet that is sent to a client. The next request from the client contains this cookie and the listener forwards this request to the recorded backend server.
  ///
  /// *   `Server`: rewrites a cookie.
  ///
  /// When ALB detects a user-defined cookie, it overwrites the original cookie with the user-defined cookie. Subsequent requests to ALB carry this user-defined cookie, and ALB determines the destination servers of the requests based on the cookies.
  ///
  /// &gt; **NOTE:**  This parameter takes effect when the `StickySessionEnabled` parameter is set to `true` for the server group.
  final pulumi.Input<String>? stickySessionType;

  /// Creates a new [ServerGroupStickySessionConfig].
  /// [cookie] The cookie to be configured on the server.
  /// [cookieTimeout] The maximum amount of time to wait before the session cookie expires. Unit: seconds.
  /// [stickySessionEnabled] Specifies whether to enable session persistence. Valid values:
  /// [stickySessionType] The method that is used to handle a cookie. Valid values:
  const ServerGroupStickySessionConfig({
    this.cookie,
    this.cookieTimeout,
    this.stickySessionEnabled,
    this.stickySessionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookie': ?cookie,
      'cookieTimeout': ?cookieTimeout,
      'stickySessionEnabled': ?stickySessionEnabled,
      'stickySessionType': ?stickySessionType,
    };
  }

  factory ServerGroupStickySessionConfig.fromMap(Map<String, dynamic> map) {
    return ServerGroupStickySessionConfig(
      cookie: (() { final guardedValue = map['cookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cookieTimeout: (() { final guardedValue = map['cookieTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      stickySessionEnabled: (() { final guardedValue = map['stickySessionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stickySessionType: (() { final guardedValue = map['stickySessionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

