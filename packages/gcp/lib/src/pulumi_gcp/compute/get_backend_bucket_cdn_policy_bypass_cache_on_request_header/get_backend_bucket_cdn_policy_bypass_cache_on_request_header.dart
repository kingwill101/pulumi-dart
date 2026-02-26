// ignore_for_file: unused_element, unnecessary_cast

class GetBackendBucketCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String headerName;

  GetBackendBucketCdnPolicyBypassCacheOnRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    return map;
  }

  factory GetBackendBucketCdnPolicyBypassCacheOnRequestHeader.fromMap(
      Map<String, dynamic> map) {
    return GetBackendBucketCdnPolicyBypassCacheOnRequestHeader(
      headerName: map['headerName'] as String,
    );
  }
}
