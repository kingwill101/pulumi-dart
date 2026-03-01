// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of the API Bridge.
class ApiBridgeProperties {
  /// The allowed source IP addresses or CIDR ranges for accessing the API Bridge
  final List<String>? allowedAddressPrefixes;
  /// The activation state of the API Bridge for this Communications Gateway
  final String? configureApiBridge;

  /// Creates a new [ApiBridgeProperties].
  /// [allowedAddressPrefixes] The allowed source IP addresses or CIDR ranges for accessing the API Bridge
  /// [configureApiBridge] The activation state of the API Bridge for this Communications Gateway
  ApiBridgeProperties({
    this.allowedAddressPrefixes,
    this.configureApiBridge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAddressPrefixes': ?allowedAddressPrefixes,
      'configureApiBridge': ?configureApiBridge,
    };
  }

  factory ApiBridgeProperties.fromMap(Map<String, dynamic> map) {
    return ApiBridgeProperties(
      allowedAddressPrefixes: map['allowedAddressPrefixes'] == null ? null : (map['allowedAddressPrefixes'] as List).cast<String>(),
      configureApiBridge: map['configureApiBridge'] == null ? null : map['configureApiBridge'] as String,
    );
  }
}

