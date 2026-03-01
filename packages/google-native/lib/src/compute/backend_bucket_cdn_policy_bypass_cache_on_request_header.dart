// ignore_for_file: unused_element, unnecessary_cast

/// Bypass the cache when the specified request headers are present, e.g. Pragma or Authorization headers. Values are case insensitive. The presence of such a header overrides the cache_mode setting.
class BackendBucketCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String? headerName;

  /// Creates a new [BackendBucketCdnPolicyBypassCacheOnRequestHeader].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  BackendBucketCdnPolicyBypassCacheOnRequestHeader({this.headerName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'headerName': ?headerName};
  }

  factory BackendBucketCdnPolicyBypassCacheOnRequestHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendBucketCdnPolicyBypassCacheOnRequestHeader(
      headerName: map['headerName'] == null
          ? null
          : map['headerName'] as String,
    );
  }
}
