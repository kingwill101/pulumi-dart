// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_management_service_sku_properties_response.dart';
import 'virtual_network_configuration_response.dart';

/// Description of an additional API Management resource location.
class AdditionalLocationResponse {
  /// Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
  final pulumi.Input<bool>? disableGateway;

  /// Gateway URL of the API Management service in the Region.
  final pulumi.Input<String> gatewayRegionalUrl;

  /// The location name of the additional region among Azure Data center regions.
  final pulumi.Input<String> location;

  /// Property can be used to enable NAT Gateway for this API Management service.
  final pulumi.Input<String>? natGatewayState;

  /// Outbound public IPV4 address prefixes associated with NAT Gateway deployed service. Available only for Premium SKU on stv2 platform.
  final pulumi.Input<List<String>> outboundPublicIPAddresses;

  /// Compute Platform Version running the service.
  final pulumi.Input<String> platformVersion;

  /// Private Static Load Balanced IP addresses of the API Management service which is deployed in an Internal Virtual Network in a particular additional location. Available only for Basic, Standard, Premium and Isolated SKU.
  final pulumi.Input<List<String>> privateIPAddresses;

  /// Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard, Premium and Isolated SKU.
  final pulumi.Input<List<String>> publicIPAddresses;

  /// Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the location. Supported only for Premium SKU being deployed in Virtual Network.
  final pulumi.Input<String>? publicIpAddressId;

  /// SKU properties of the API Management service.
  final pulumi.Input<ApiManagementServiceSkuPropertiesResponse> sku;

  /// Virtual network configuration for the location.
  final pulumi.Input<VirtualNetworkConfigurationResponse>?
  virtualNetworkConfiguration;

  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [AdditionalLocationResponse].
  /// [disableGateway] Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location.
  /// [gatewayRegionalUrl] Gateway URL of the API Management service in the Region.
  /// [location] The location name of the additional region among Azure Data center regions.
  /// [natGatewayState] Property can be used to enable NAT Gateway for this API Management service.
  /// [outboundPublicIPAddresses] Outbound public IPV4 address prefixes associated with NAT Gateway deployed service. Available only for Premium SKU on stv2 platform.
  /// [platformVersion] Compute Platform Version running the service.
  /// [privateIPAddresses] Private Static Load Balanced IP addresses of the API Management service which is deployed in an Internal Virtual Network in a particular additional location. Available only for Basic, Standard, Premium and Isolated SKU.
  /// [publicIPAddresses] Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard, Premium and Isolated SKU.
  /// [publicIpAddressId] Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the location. Supported only for Premium SKU being deployed in Virtual Network.
  /// [sku] SKU properties of the API Management service.
  /// [virtualNetworkConfiguration] Virtual network configuration for the location.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  AdditionalLocationResponse({
    this.disableGateway,
    required this.gatewayRegionalUrl,
    required this.location,
    this.natGatewayState,
    required this.outboundPublicIPAddresses,
    required this.platformVersion,
    required this.privateIPAddresses,
    required this.publicIPAddresses,
    this.publicIpAddressId,
    required this.sku,
    this.virtualNetworkConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableGateway': ?disableGateway,
      'gatewayRegionalUrl': gatewayRegionalUrl,
      'location': location,
      'natGatewayState': ?natGatewayState,
      'outboundPublicIPAddresses': outboundPublicIPAddresses,
      'platformVersion': platformVersion,
      'privateIPAddresses': privateIPAddresses,
      'publicIPAddresses': publicIPAddresses,
      'publicIpAddressId': ?publicIpAddressId,
      'sku':
          pulumi.Input.mapInputValue<
            ApiManagementServiceSkuPropertiesResponse,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'virtualNetworkConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNetworkConfigurationResponse,
            Map<String, dynamic>
          >(virtualNetworkConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory AdditionalLocationResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalLocationResponse(
      disableGateway: (() {
        final guardedValue = map['disableGateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gatewayRegionalUrl: pulumi.Input.fromValue(
        map['gatewayRegionalUrl'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      natGatewayState: (() {
        final guardedValue = map['natGatewayState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outboundPublicIPAddresses: pulumi.Input.fromValue(
        (map['outboundPublicIPAddresses'] as List).cast<String>(),
      ),
      platformVersion: pulumi.Input.fromValue(map['platformVersion'] as String),
      privateIPAddresses: pulumi.Input.fromValue(
        (map['privateIPAddresses'] as List).cast<String>(),
      ),
      publicIPAddresses: pulumi.Input.fromValue(
        (map['publicIPAddresses'] as List).cast<String>(),
      ),
      publicIpAddressId: (() {
        final guardedValue = map['publicIpAddressId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: pulumi.Input.fromValue(
        ApiManagementServiceSkuPropertiesResponse.fromMap(
          (map['sku']! as Map).cast<String, dynamic>(),
        ),
      ),
      virtualNetworkConfiguration: (() {
        final guardedValue = map['virtualNetworkConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNetworkConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
