// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerServiceHttp {
  /// (list[int]) List of IDs from certificates which the Load Balancer has.
  final List<String> certificates;
  /// (int) Lifetime of the cookie for sticky session (in seconds).
  final int cookieLifetime;
  /// (string) Name of the cookie for sticky session.
  final String cookieName;
  /// (string) Determine if all requests from port 80 should be redirected to port 443.
  final bool redirectHttp;
  /// (string) Determine if sticky sessions are enabled or not.
  final bool stickySessions;

  /// Creates a new [GetLoadBalancerServiceHttp].
  /// [certificates] (list[int]) List of IDs from certificates which the Load Balancer has.
  /// [cookieLifetime] (int) Lifetime of the cookie for sticky session (in seconds).
  /// [cookieName] (string) Name of the cookie for sticky session.
  /// [redirectHttp] (string) Determine if all requests from port 80 should be redirected to port 443.
  /// [stickySessions] (string) Determine if sticky sessions are enabled or not.
  GetLoadBalancerServiceHttp({
    required this.certificates,
    required this.cookieLifetime,
    required this.cookieName,
    required this.redirectHttp,
    required this.stickySessions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': certificates,
      'cookieLifetime': cookieLifetime,
      'cookieName': cookieName,
      'redirectHttp': redirectHttp,
      'stickySessions': stickySessions,
    };
  }

  factory GetLoadBalancerServiceHttp.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerServiceHttp(
      certificates: (map['certificates'] as List).cast<String>(),
      cookieLifetime: map['cookieLifetime'] as int,
      cookieName: map['cookieName'] as String,
      redirectHttp: map['redirectHttp'] as bool,
      stickySessions: map['stickySessions'] as bool,
    );
  }
}

