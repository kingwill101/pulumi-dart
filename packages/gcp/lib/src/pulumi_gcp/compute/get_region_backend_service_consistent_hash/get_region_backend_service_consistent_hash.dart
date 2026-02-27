// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_backend_service_consistent_hash_http_cooky/get_region_backend_service_consistent_hash_http_cooky.dart';

class GetRegionBackendServiceConsistentHash {
  /// Hash is based on HTTP Cookie. This field describes a HTTP cookie
  /// that will be used as the hash key for the consistent hash load
  /// balancer. If the cookie is not present, it will be generated.
  /// This field is applicable if the sessionAffinity is set to HTTP_COOKIE.
  final List<GetRegionBackendServiceConsistentHashHttpCooky> httpCookies;

  /// The hash based on the value of the specified header field.
  /// This field is applicable if the sessionAffinity is set to HEADER_FIELD.
  final String httpHeaderName;

  /// The minimum number of virtual nodes to use for the hash ring.
  /// Larger ring sizes result in more granular load
  /// distributions. If the number of hosts in the load balancing pool
  /// is larger than the ring size, each host will be assigned a single
  /// virtual node.
  /// Defaults to 1024.
  final int minimumRingSize;

  GetRegionBackendServiceConsistentHash({
    required this.httpCookies,
    required this.httpHeaderName,
    required this.minimumRingSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpCookies'] = pulumi.Input.encodeList<
        GetRegionBackendServiceConsistentHashHttpCooky,
        Map<String, dynamic>>(httpCookies, (value) => value.toMap());
    map['httpHeaderName'] = httpHeaderName;
    map['minimumRingSize'] = minimumRingSize;
    return map;
  }

  factory GetRegionBackendServiceConsistentHash.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceConsistentHash(
      httpCookies: pulumi.Input.decodeList<
              GetRegionBackendServiceConsistentHashHttpCooky>(
          map['httpCookies'],
          (value) => GetRegionBackendServiceConsistentHashHttpCooky.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpHeaderName: map['httpHeaderName'] as String,
      minimumRingSize: map['minimumRingSize'] as int,
    );
  }
}
