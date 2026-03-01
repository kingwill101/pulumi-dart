// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of the API Bridge.
class ApiBridgePropertiesResponse {
  /// The allowed source IP addresses or CIDR ranges for accessing the API Bridge
  final List<String>? allowedAddressPrefixes;
  /// The activation state of the API Bridge for this Communications Gateway
  final String? configureApiBridge;
  /// FQDNs for sending requests to the API Bridge endpoint
  final List<String> endpointFqdns;

  /// Creates a new [ApiBridgePropertiesResponse].
  /// [allowedAddressPrefixes] The allowed source IP addresses or CIDR ranges for accessing the API Bridge
  /// [configureApiBridge] The activation state of the API Bridge for this Communications Gateway
  /// [endpointFqdns] FQDNs for sending requests to the API Bridge endpoint
  ApiBridgePropertiesResponse({
    this.allowedAddressPrefixes,
    this.configureApiBridge,
    required this.endpointFqdns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAddressPrefixes': ?allowedAddressPrefixes,
      'configureApiBridge': ?configureApiBridge,
      'endpointFqdns': endpointFqdns,
    };
  }

  factory ApiBridgePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiBridgePropertiesResponse(
      allowedAddressPrefixes: map['allowedAddressPrefixes'] == null ? null : (map['allowedAddressPrefixes'] as List).cast<String>(),
      configureApiBridge: map['configureApiBridge'] == null ? null : map['configureApiBridge'] as String,
      endpointFqdns: (map['endpointFqdns'] as List).cast<String>(),
    );
  }
}

