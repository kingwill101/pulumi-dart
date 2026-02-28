// ignore_for_file: unused_element, unnecessary_cast

class BackendBucketCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String? headerName;

  /// Creates a new [BackendBucketCdnPolicyBypassCacheOnRequestHeader].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  BackendBucketCdnPolicyBypassCacheOnRequestHeader({
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

  factory BackendBucketCdnPolicyBypassCacheOnRequestHeader.fromMap(
      Map<String, dynamic> map) {
    return BackendBucketCdnPolicyBypassCacheOnRequestHeader(
      headerName:
          map['headerName'] == null ? null : map['headerName'] as String,
    );
  }
}
