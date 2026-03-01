// ignore_for_file: unused_element, unnecessary_cast

import 'region_backend_service_consistent_hash_http_cookie.dart';

class RegionBackendServiceConsistentHash {
  /// Hash is based on HTTP Cookie. This field describes a HTTP cookie
  /// that will be used as the hash key for the consistent hash load
  /// balancer. If the cookie is not present, it will be generated.
  /// This field is applicable if the sessionAffinity is set to HTTP_COOKIE.
  /// Structure is documented below.
  final RegionBackendServiceConsistentHashHttpCookie? httpCookie;
  /// The hash based on the value of the specified header field.
  /// This field is applicable if the sessionAffinity is set to HEADER_FIELD.
  final String? httpHeaderName;
  /// The minimum number of virtual nodes to use for the hash ring.
  /// Larger ring sizes result in more granular load
  /// distributions. If the number of hosts in the load balancing pool
  /// is larger than the ring size, each host will be assigned a single
  /// virtual node.
  /// Defaults to 1024.
  final int? minimumRingSize;

  /// Creates a new [RegionBackendServiceConsistentHash].
  /// [httpCookie] Hash is based on HTTP Cookie. This field describes a HTTP cookie
  /// [httpHeaderName] The hash based on the value of the specified header field.
  /// [minimumRingSize] The minimum number of virtual nodes to use for the hash ring.
  RegionBackendServiceConsistentHash({
    this.httpCookie,
    this.httpHeaderName,
    this.minimumRingSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpCookie': ?httpCookie == null ? null : httpCookie!.toMap(),
      'httpHeaderName': ?httpHeaderName,
      'minimumRingSize': ?minimumRingSize,
    };
  }

  factory RegionBackendServiceConsistentHash.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceConsistentHash(
      httpCookie: map['httpCookie'] == null ? null : RegionBackendServiceConsistentHashHttpCookie.fromMap((map['httpCookie'] as Map).cast<String, dynamic>()),
      httpHeaderName: map['httpHeaderName'] == null ? null : map['httpHeaderName'] as String,
      minimumRingSize: map['minimumRingSize'] == null ? null : map['minimumRingSize'] as int,
    );
  }
}

