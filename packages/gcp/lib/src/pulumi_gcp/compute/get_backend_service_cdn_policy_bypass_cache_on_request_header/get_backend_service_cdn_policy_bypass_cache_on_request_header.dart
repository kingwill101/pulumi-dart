// ignore_for_file: unused_element, unnecessary_cast

class GetBackendServiceCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String headerName;

  GetBackendServiceCdnPolicyBypassCacheOnRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    return map;
  }

  factory GetBackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap(
      Map<String, dynamic> map) {
    return GetBackendServiceCdnPolicyBypassCacheOnRequestHeader(
      headerName: map['headerName'] as String,
    );
  }
}
