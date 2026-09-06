// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_management_service_sku_properties.dart';
import 'virtual_network_configuration.dart';

/// Description of an additional API Management resource location.
class AdditionalLocation {
  /// Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
  final pulumi.Input<bool?>? disableGateway;
  /// The location name of the additional region among Azure Data center regions.
  final pulumi.Input<String> location;
  /// Property can be used to enable NAT Gateway for this API Management service.
  final pulumi.Input<dynamic>? natGatewayState;
  /// Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the location. Supported only for Premium SKU being deployed in Virtual Network.
  final pulumi.Input<String?>? publicIpAddressId;
  /// SKU properties of the API Management service.
  final pulumi.Input<ApiManagementServiceSkuProperties> sku;
  /// Virtual network configuration for the location.
  final pulumi.Input<VirtualNetworkConfiguration?>? virtualNetworkConfiguration;
  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [AdditionalLocation].
  /// [disableGateway] Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
  /// [location] The location name of the additional region among Azure Data center regions.
  /// [natGatewayState] Property can be used to enable NAT Gateway for this API Management service.
  /// [publicIpAddressId] Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the location. Supported only for Premium SKU being deployed in Virtual Network.
  /// [sku] SKU properties of the API Management service.
  /// [virtualNetworkConfiguration] Virtual network configuration for the location.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  AdditionalLocation({
    pulumi.Input<bool?>? disableGateway,
    required this.location,
    pulumi.Input<dynamic>? natGatewayState,
    this.publicIpAddressId,
    required this.sku,
    this.virtualNetworkConfiguration,
    this.zones,
  }) : disableGateway = disableGateway ?? pulumi.Input.fromValue(false), natGatewayState = natGatewayState ?? pulumi.Input.fromValue('Disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableGateway': ?disableGateway,
      'location': location,
      'natGatewayState': ?natGatewayState,
      'publicIpAddressId': ?publicIpAddressId,
      'sku': pulumi.Input.mapInputValue<ApiManagementServiceSkuProperties, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'virtualNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkConfiguration, Map<String, dynamic>>(virtualNetworkConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory AdditionalLocation.fromMap(Map<String, dynamic> map) {
    return AdditionalLocation(
      disableGateway: (() { final guardedValue = map['disableGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      natGatewayState: (() { final guardedValue = map['natGatewayState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(ApiManagementServiceSkuProperties.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      virtualNetworkConfiguration: (() { final guardedValue = map['virtualNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
