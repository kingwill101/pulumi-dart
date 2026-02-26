// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupStickiness {
  /// Only used when the type is <span pulumi-lang-nodejs="`lbCookie`" pulumi-lang-dotnet="`LbCookie`" pulumi-lang-go="`lbCookie`" pulumi-lang-python="`lb_cookie`" pulumi-lang-yaml="`lbCookie`" pulumi-lang-java="`lbCookie`">`lb_cookie`</span>. The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).
  final int? cookieDuration;

  /// Name of the application based cookie. AWSALB, AWSALBAPP, and AWSALBTG prefixes are reserved and cannot be used. Only needed when type is <span pulumi-lang-nodejs="`appCookie`" pulumi-lang-dotnet="`AppCookie`" pulumi-lang-go="`appCookie`" pulumi-lang-python="`app_cookie`" pulumi-lang-yaml="`appCookie`" pulumi-lang-java="`appCookie`">`app_cookie`</span>.
  final String? cookieName;

  /// Boolean to enable / disable <span pulumi-lang-nodejs="`stickiness`" pulumi-lang-dotnet="`Stickiness`" pulumi-lang-go="`stickiness`" pulumi-lang-python="`stickiness`" pulumi-lang-yaml="`stickiness`" pulumi-lang-java="`stickiness`">`stickiness`</span>. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? enabled;

  /// The type of sticky sessions. The only current possible values are <span pulumi-lang-nodejs="`lbCookie`" pulumi-lang-dotnet="`LbCookie`" pulumi-lang-go="`lbCookie`" pulumi-lang-python="`lb_cookie`" pulumi-lang-yaml="`lbCookie`" pulumi-lang-java="`lbCookie`">`lb_cookie`</span>, <span pulumi-lang-nodejs="`appCookie`" pulumi-lang-dotnet="`AppCookie`" pulumi-lang-go="`appCookie`" pulumi-lang-python="`app_cookie`" pulumi-lang-yaml="`appCookie`" pulumi-lang-java="`appCookie`">`app_cookie`</span> for ALBs, <span pulumi-lang-nodejs="`sourceIp`" pulumi-lang-dotnet="`SourceIp`" pulumi-lang-go="`sourceIp`" pulumi-lang-python="`source_ip`" pulumi-lang-yaml="`sourceIp`" pulumi-lang-java="`sourceIp`">`source_ip`</span> for NLBs, and <span pulumi-lang-nodejs="`sourceIpDestIp`" pulumi-lang-dotnet="`SourceIpDestIp`" pulumi-lang-go="`sourceIpDestIp`" pulumi-lang-python="`source_ip_dest_ip`" pulumi-lang-yaml="`sourceIpDestIp`" pulumi-lang-java="`sourceIpDestIp`">`source_ip_dest_ip`</span>, <span pulumi-lang-nodejs="`sourceIpDestIpProto`" pulumi-lang-dotnet="`SourceIpDestIpProto`" pulumi-lang-go="`sourceIpDestIpProto`" pulumi-lang-python="`source_ip_dest_ip_proto`" pulumi-lang-yaml="`sourceIpDestIpProto`" pulumi-lang-java="`sourceIpDestIpProto`">`source_ip_dest_ip_proto`</span> for GWLBs.
  final String type;

  TargetGroupStickiness({
    this.cookieDuration,
    this.cookieName,
    this.enabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cookieDurationValue = cookieDuration;
    if (cookieDurationValue != null) {
      map['cookieDuration'] = cookieDurationValue;
    }
    final cookieNameValue = cookieName;
    if (cookieNameValue != null) {
      map['cookieName'] = cookieNameValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['type'] = type;
    return map;
  }

  factory TargetGroupStickiness.fromMap(Map<String, dynamic> map) {
    return TargetGroupStickiness(
      cookieDuration:
          map['cookieDuration'] == null ? null : map['cookieDuration'] as int,
      cookieName:
          map['cookieName'] == null ? null : map['cookieName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      type: map['type'] as String,
    );
  }
}
