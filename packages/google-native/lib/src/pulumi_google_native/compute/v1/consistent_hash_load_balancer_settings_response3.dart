// ignore_for_file: unused_element, unnecessary_cast

import 'consistent_hash_load_balancer_settings_http_cookie_response3.dart';

/// This message defines settings for a consistent hash style load balancer.
class ConsistentHashLoadBalancerSettingsResponse3 {
  /// Hash is based on HTTP Cookie. This field describes a HTTP cookie that will be used as the hash key for the consistent hash load balancer. If the cookie is not present, it will be generated. This field is applicable if the sessionAffinity is set to HTTP_COOKIE. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final ConsistentHashLoadBalancerSettingsHttpCookieResponse3 httpCookie;

  /// The hash based on the value of the specified header field. This field is applicable if the sessionAffinity is set to HEADER_FIELD.
  final String httpHeaderName;

  /// The minimum number of virtual nodes to use for the hash ring. Defaults to 1024. Larger ring sizes result in more granular load distributions. If the number of hosts in the load balancing pool is larger than the ring size, each host will be assigned a single virtual node.
  final String minimumRingSize;

  ConsistentHashLoadBalancerSettingsResponse3({
    required this.httpCookie,
    required this.httpHeaderName,
    required this.minimumRingSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpCookie'] = httpCookie.toMap();
    map['httpHeaderName'] = httpHeaderName;
    map['minimumRingSize'] = minimumRingSize;
    return map;
  }

  factory ConsistentHashLoadBalancerSettingsResponse3.fromMap(
      Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsResponse3(
      httpCookie: ConsistentHashLoadBalancerSettingsHttpCookieResponse3.fromMap(
          (map['httpCookie'] as Map).cast<String, dynamic>()),
      httpHeaderName: map['httpHeaderName'] as String,
      minimumRingSize: map['minimumRingSize'] as String,
    );
  }
}
