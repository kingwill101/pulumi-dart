// ignore_for_file: unused_element, unnecessary_cast

import 'service_additional_location_virtual_network_configuration.dart';

class ServiceAdditionalLocation {
  /// The number of compute units in this region. Defaults to the capacity of the main region.
  final int? capacity;
  /// Only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
  final bool? gatewayDisabled;
  /// The URL of the Regional Gateway for the API Management Service in the specified region.
  final String? gatewayRegionalUrl;
  /// The name of the Azure Region in which the API Management Service should be expanded to.
  final String location;
  /// The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode.
  final List<String>? privateIpAddresses;
  /// ID of a standard SKU IPv4 Public IP.
  ///
  /// > **Note:** Availability zones and custom public IPs are only supported in the Premium tier.
  final String? publicIpAddressId;
  /// Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  final List<String>? publicIpAddresses;
  /// A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  final ServiceAdditionalLocationVirtualNetworkConfiguration? virtualNetworkConfiguration;
  /// A list of availability zones.
  final List<String>? zones;

  /// Creates a new [ServiceAdditionalLocation].
  /// [capacity] The number of compute units in this region. Defaults to the capacity of the main region.
  /// [gatewayDisabled] Only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
  /// [gatewayRegionalUrl] The URL of the Regional Gateway for the API Management Service in the specified region.
  /// [location] The name of the Azure Region in which the API Management Service should be expanded to.
  /// [privateIpAddresses] The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode.
  /// [publicIpAddressId] ID of a standard SKU IPv4 Public IP.
  /// [publicIpAddresses] Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  /// [virtualNetworkConfiguration] A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  /// [zones] A list of availability zones.
  ServiceAdditionalLocation({
    this.capacity,
    this.gatewayDisabled,
    this.gatewayRegionalUrl,
    required this.location,
    this.privateIpAddresses,
    this.publicIpAddressId,
    this.publicIpAddresses,
    this.virtualNetworkConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'gatewayDisabled': ?gatewayDisabled,
      'gatewayRegionalUrl': ?gatewayRegionalUrl,
      'location': location,
      'privateIpAddresses': ?privateIpAddresses,
      'publicIpAddressId': ?publicIpAddressId,
      'publicIpAddresses': ?publicIpAddresses,
      'virtualNetworkConfiguration': ?virtualNetworkConfiguration == null ? null : virtualNetworkConfiguration!.toMap(),
      'zones': ?zones,
    };
  }

  factory ServiceAdditionalLocation.fromMap(Map<String, dynamic> map) {
    return ServiceAdditionalLocation(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      gatewayDisabled: map['gatewayDisabled'] == null ? null : map['gatewayDisabled'] as bool,
      gatewayRegionalUrl: map['gatewayRegionalUrl'] == null ? null : map['gatewayRegionalUrl'] as String,
      location: map['location'] as String,
      privateIpAddresses: map['privateIpAddresses'] == null ? null : (map['privateIpAddresses'] as List).cast<String>(),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : map['publicIpAddressId'] as String,
      publicIpAddresses: map['publicIpAddresses'] == null ? null : (map['publicIpAddresses'] as List).cast<String>(),
      virtualNetworkConfiguration: map['virtualNetworkConfiguration'] == null ? null : ServiceAdditionalLocationVirtualNetworkConfiguration.fromMap((map['virtualNetworkConfiguration'] as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

