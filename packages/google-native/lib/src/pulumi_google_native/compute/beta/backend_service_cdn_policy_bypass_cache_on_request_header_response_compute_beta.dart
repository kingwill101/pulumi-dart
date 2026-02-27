// ignore_for_file: unused_element, unnecessary_cast

/// Bypass the cache when the specified request headers are present, e.g. Pragma or Authorization headers. Values are case insensitive. The presence of such a header overrides the cache_mode setting.
class BackendServiceCdnPolicyBypassCacheOnRequestHeaderResponseComputeBeta {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String headerName;

  BackendServiceCdnPolicyBypassCacheOnRequestHeaderResponseComputeBeta({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    return map;
  }

  factory BackendServiceCdnPolicyBypassCacheOnRequestHeaderResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceCdnPolicyBypassCacheOnRequestHeaderResponseComputeBeta(
      headerName: map['headerName'] as String,
    );
  }
}
