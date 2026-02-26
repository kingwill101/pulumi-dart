// ignore_for_file: unused_element, unnecessary_cast

/// Bypass the cache when the specified request headers are present, e.g. Pragma or Authorization headers. Values are case insensitive. The presence of such a header overrides the cache_mode setting.
class BackendServiceCdnPolicyBypassCacheOnRequestHeaderResponse3 {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String headerName;

  BackendServiceCdnPolicyBypassCacheOnRequestHeaderResponse3({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    return map;
  }

  factory BackendServiceCdnPolicyBypassCacheOnRequestHeaderResponse3.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceCdnPolicyBypassCacheOnRequestHeaderResponse3(
      headerName: map['headerName'] as String,
    );
  }
}
