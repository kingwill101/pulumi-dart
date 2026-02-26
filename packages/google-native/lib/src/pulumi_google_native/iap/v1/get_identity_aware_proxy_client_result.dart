// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIdentityAwareProxyClient.
class GetIdentityAwareProxyClientResult {
  /// Human-friendly name given to the OAuth client.
  final String displayName;

  /// Unique identifier of the OAuth client.
  final String name;

  /// Client secret of the OAuth client.
  final String secret;

  GetIdentityAwareProxyClientResult({
    required this.displayName,
    required this.name,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['name'] = name;
    map['secret'] = secret;
    return map;
  }

  factory GetIdentityAwareProxyClientResult.fromMap(Map<String, dynamic> map) {
    return GetIdentityAwareProxyClientResult(
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      secret: map['secret'] as String,
    );
  }
}
