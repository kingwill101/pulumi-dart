// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String headerName;

  BackendServiceCdnPolicyBypassCacheOnRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    return map;
  }

  factory BackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceCdnPolicyBypassCacheOnRequestHeader(
      headerName: map['headerName'] as String,
    );
  }
}
