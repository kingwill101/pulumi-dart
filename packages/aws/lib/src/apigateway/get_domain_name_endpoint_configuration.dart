// ignore_for_file: unused_element, unnecessary_cast

class GetDomainNameEndpointConfiguration {
  /// The IP address types that can invoke an API (RestApi).
  final String ipAddressType;

  /// List of endpoint types.
  final List<String> types;

  /// Creates a new [GetDomainNameEndpointConfiguration].
  /// [ipAddressType] The IP address types that can invoke an API (RestApi).
  /// [types] List of endpoint types.
  GetDomainNameEndpointConfiguration({
    required this.ipAddressType,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddressType': ipAddressType, 'types': types};
  }

  factory GetDomainNameEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDomainNameEndpointConfiguration(
      ipAddressType: map['ipAddressType'] as String,
      types: (map['types'] as List).cast<String>(),
    );
  }
}
