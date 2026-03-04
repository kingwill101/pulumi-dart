// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_management_gateway_sku_properties.dart';
import 'backend_configuration.dart';

/// {@template pulumi_apimanagement_api_gateway_args_doc}
/// The set of arguments for ApiGateway.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_gateway_args_doc}
class ApiGatewayArgs {
  /// Information regarding how the gateway should integrate with backend systems.
  final pulumi.Input<BackendConfiguration>? backend;

  /// The name of the API Management gateway.
  final pulumi.Input<String>? gatewayName;

  /// Resource location.
  final pulumi.Input<String>? location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// SKU properties of the API Management gateway.
  final pulumi.Input<ApiManagementGatewaySkuProperties> sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of VPN in which API Management gateway needs to be configured in.
  final pulumi.Input<String>? virtualNetworkType;

  /// Creates a new [ApiGatewayArgs].
  /// [backend] Information regarding how the gateway should integrate with backend systems.
  /// [gatewayName] The name of the API Management gateway.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU properties of the API Management gateway.
  /// [tags] Resource tags.
  /// [virtualNetworkType] The type of VPN in which API Management gateway needs to be configured in.
  ApiGatewayArgs({
    this.backend,
    this.gatewayName,
    this.location,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.virtualNetworkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend':
          ?pulumi.Input.mapOptionalInputValue<
            BackendConfiguration,
            Map<String, dynamic>
          >(backend, (value) => value.toMap()),
      'gatewayName': ?gatewayName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku':
          pulumi.Input.mapInputValue<
            ApiManagementGatewaySkuProperties,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkType': ?virtualNetworkType,
    };
  }

  factory ApiGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ApiGatewayArgs(
      backend: (() {
        final guardedValue = map['backend'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gatewayName: (() {
        final guardedValue = map['gatewayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: pulumi.Input.fromValue(
        ApiManagementGatewaySkuProperties.fromMap(
          (map['sku']! as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualNetworkType: (() {
        final guardedValue = map['virtualNetworkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
