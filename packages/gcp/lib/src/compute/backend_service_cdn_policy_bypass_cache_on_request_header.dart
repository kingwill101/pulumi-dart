// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String headerName;

  /// Creates a new [BackendServiceCdnPolicyBypassCacheOnRequestHeader].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  BackendServiceCdnPolicyBypassCacheOnRequestHeader({required this.headerName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'headerName': headerName};
  }

  factory BackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceCdnPolicyBypassCacheOnRequestHeader(
      headerName: map['headerName'] as String,
    );
  }
}
