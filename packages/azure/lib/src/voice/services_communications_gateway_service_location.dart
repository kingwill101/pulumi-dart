// ignore_for_file: unused_element, unnecessary_cast


class ServicesCommunicationsGatewayServiceLocation {
  /// Specifies the allowed source IP address or CIDR ranges for media.
  final List<String>? allowedMediaSourceAddressPrefixes;
  /// Specifies the allowed source IP address or CIDR ranges for signaling.
  final List<String>? allowedSignalingSourceAddressPrefixes;
  /// IP address to use to contact the ESRP from this region.
  ///
  /// !> **Note:** The `esrp_addresses` must be specified for each `service_location` when the`e911_type` is set to `DirectToEsrp`.  The `esrp_addresses` must not be specified for each `service_location` when the`e911_type` is set to `Standard`.
  final List<String>? esrpAddresses;
  /// Specifies the region in which the resources needed for Teams Calling will be deployed.
  final String location;
  /// IP address to use to contact the operator network from this region.
  final List<String> operatorAddresses;

  /// Creates a new [ServicesCommunicationsGatewayServiceLocation].
  /// [allowedMediaSourceAddressPrefixes] Specifies the allowed source IP address or CIDR ranges for media.
  /// [allowedSignalingSourceAddressPrefixes] Specifies the allowed source IP address or CIDR ranges for signaling.
  /// [esrpAddresses] IP address to use to contact the ESRP from this region.
  /// [location] Specifies the region in which the resources needed for Teams Calling will be deployed.
  /// [operatorAddresses] IP address to use to contact the operator network from this region.
  ServicesCommunicationsGatewayServiceLocation({
    this.allowedMediaSourceAddressPrefixes,
    this.allowedSignalingSourceAddressPrefixes,
    this.esrpAddresses,
    required this.location,
    required this.operatorAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMediaSourceAddressPrefixes': ?allowedMediaSourceAddressPrefixes,
      'allowedSignalingSourceAddressPrefixes': ?allowedSignalingSourceAddressPrefixes,
      'esrpAddresses': ?esrpAddresses,
      'location': location,
      'operatorAddresses': operatorAddresses,
    };
  }

  factory ServicesCommunicationsGatewayServiceLocation.fromMap(Map<String, dynamic> map) {
    return ServicesCommunicationsGatewayServiceLocation(
      allowedMediaSourceAddressPrefixes: map['allowedMediaSourceAddressPrefixes'] == null ? null : (map['allowedMediaSourceAddressPrefixes'] as List).cast<String>(),
      allowedSignalingSourceAddressPrefixes: map['allowedSignalingSourceAddressPrefixes'] == null ? null : (map['allowedSignalingSourceAddressPrefixes'] as List).cast<String>(),
      esrpAddresses: map['esrpAddresses'] == null ? null : (map['esrpAddresses'] as List).cast<String>(),
      location: map['location'] as String,
      operatorAddresses: (map['operatorAddresses'] as List).cast<String>(),
    );
  }
}

