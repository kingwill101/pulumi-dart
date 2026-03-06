// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listEndpointManagedProxyDetails.
class ListEndpointManagedProxyDetailsResult {
  /// The expiration time of short lived proxy name in unix epoch.
  final double expiresOn;
  /// The short lived proxy name.
  final String proxy;

  /// Creates a new [ListEndpointManagedProxyDetailsResult].
  /// [expiresOn] The expiration time of short lived proxy name in unix epoch.
  /// [proxy] The short lived proxy name.
  const ListEndpointManagedProxyDetailsResult({
    required this.expiresOn,
    required this.proxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiresOn': expiresOn,
      'proxy': proxy,
    };
  }

  factory ListEndpointManagedProxyDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListEndpointManagedProxyDetailsResult(
      expiresOn: map['expiresOn'] as double,
      proxy: map['proxy'] as String,
    );
  }
}

