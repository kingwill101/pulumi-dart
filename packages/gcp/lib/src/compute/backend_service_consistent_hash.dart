// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_consistent_hash_http_cookie.dart';

class BackendServiceConsistentHash {
  /// Hash is based on HTTP Cookie. This field describes a HTTP cookie
  /// that will be used as the hash key for the consistent hash load
  /// balancer. If the cookie is not present, it will be generated.
  /// This field is applicable if the sessionAffinity is set to HTTP_COOKIE.
  /// Structure is documented below.
  final BackendServiceConsistentHashHttpCookie? httpCookie;
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

  /// Creates a new [BackendServiceConsistentHash].
  /// [httpCookie] Hash is based on HTTP Cookie. This field describes a HTTP cookie
  /// [httpHeaderName] The hash based on the value of the specified header field.
  /// [minimumRingSize] The minimum number of virtual nodes to use for the hash ring.
  BackendServiceConsistentHash({
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

  factory BackendServiceConsistentHash.fromMap(Map<String, dynamic> map) {
    return BackendServiceConsistentHash(
      httpCookie: map['httpCookie'] == null ? null : BackendServiceConsistentHashHttpCookie.fromMap((map['httpCookie'] as Map).cast<String, dynamic>()),
      httpHeaderName: map['httpHeaderName'] == null ? null : map['httpHeaderName'] as String,
      minimumRingSize: map['minimumRingSize'] == null ? null : map['minimumRingSize'] as int,
    );
  }
}

