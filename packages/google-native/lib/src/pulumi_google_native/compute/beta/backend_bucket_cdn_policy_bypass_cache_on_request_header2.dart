// ignore_for_file: unused_element, unnecessary_cast

/// Bypass the cache when the specified request headers are present, e.g. Pragma or Authorization headers. Values are case insensitive. The presence of such a header overrides the cache_mode setting.
class BackendBucketCdnPolicyBypassCacheOnRequestHeader2 {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String? headerName;

  BackendBucketCdnPolicyBypassCacheOnRequestHeader2({
    this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerNameValue = headerName;
    if (headerNameValue != null) {
      map['headerName'] = headerNameValue;
    }
    return map;
  }

  factory BackendBucketCdnPolicyBypassCacheOnRequestHeader2.fromMap(
      Map<String, dynamic> map) {
    return BackendBucketCdnPolicyBypassCacheOnRequestHeader2(
      headerName:
          map['headerName'] == null ? null : map['headerName'] as String,
    );
  }
}
