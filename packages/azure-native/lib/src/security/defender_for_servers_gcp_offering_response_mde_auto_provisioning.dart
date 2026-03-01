// ignore_for_file: unused_element, unnecessary_cast


/// The Microsoft Defender for Endpoint autoprovisioning configuration
class DefenderForServersGcpOfferingResponseMdeAutoProvisioning {
  /// configuration for Microsoft Defender for Endpoint autoprovisioning
  final dynamic configuration;
  /// Is Microsoft Defender for Endpoint auto provisioning enabled
  final bool? enabled;

  /// Creates a new [DefenderForServersGcpOfferingResponseMdeAutoProvisioning].
  /// [configuration] configuration for Microsoft Defender for Endpoint autoprovisioning
  /// [enabled] Is Microsoft Defender for Endpoint auto provisioning enabled
  DefenderForServersGcpOfferingResponseMdeAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersGcpOfferingResponseMdeAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingResponseMdeAutoProvisioning(
      configuration: map['configuration'] == null ? null : map['configuration'],
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

