// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetGroupStickiness {
  /// Only used when the type is `lb_cookie`. The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).
  final pulumi.Input<int>? cookieDuration;

  /// Name of the application based cookie. AWSALB, AWSALBAPP, and AWSALBTG prefixes are reserved and cannot be used. Only needed when type is `app_cookie`.
  final pulumi.Input<String>? cookieName;

  /// Boolean to enable / disable `stickiness`. Default is `true`.
  final pulumi.Input<bool>? enabled;

  /// The type of sticky sessions. The only current possible values are `lb_cookie`, `app_cookie` for ALBs, `source_ip` for NLBs, and `source_ip_dest_ip`, `source_ip_dest_ip_proto` for GWLBs.
  final pulumi.Input<String> type;

  /// Creates a new [TargetGroupStickiness].
  /// [cookieDuration] Only used when the type is `lb_cookie`. The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).
  /// [cookieName] Name of the application based cookie. AWSALB, AWSALBAPP, and AWSALBTG prefixes are reserved and cannot be used. Only needed when type is `app_cookie`.
  /// [enabled] Boolean to enable / disable `stickiness`. Default is `true`.
  /// [type] The type of sticky sessions. The only current possible values are `lb_cookie`, `app_cookie` for ALBs, `source_ip` for NLBs, and `source_ip_dest_ip`, `source_ip_dest_ip_proto` for GWLBs.
  TargetGroupStickiness({
    this.cookieDuration,
    this.cookieName,
    this.enabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieDuration': ?cookieDuration,
      'cookieName': ?cookieName,
      'enabled': ?enabled,
      'type': type,
    };
  }

  factory TargetGroupStickiness.fromMap(Map<String, dynamic> map) {
    return TargetGroupStickiness(
      cookieDuration: (() {
        final guardedValue = map['cookieDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cookieName: (() {
        final guardedValue = map['cookieName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
