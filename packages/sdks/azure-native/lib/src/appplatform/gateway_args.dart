// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_properties.dart';
import 'sku.dart';

/// {@template pulumi_appplatform_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_appplatform_gateway_args_doc}
class GatewayArgs {
  /// The name of Spring Cloud Gateway.
  final pulumi.Input<String>? gatewayName;
  /// Spring Cloud Gateway properties payload
  final pulumi.Input<GatewayProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// Sku of the Spring Cloud Gateway resource
  final pulumi.Input<Sku>? sku;

  /// Creates a new [GatewayArgs].
  /// [gatewayName] The name of Spring Cloud Gateway.
  /// [properties] Spring Cloud Gateway properties payload
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [sku] Sku of the Spring Cloud Gateway resource
  GatewayArgs({
    this.gatewayName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': ?gatewayName,
      'properties': ?pulumi.Input.mapOptionalInputValue<GatewayProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      gatewayName: map['gatewayName'] == null ? null : (map['gatewayName']! as String).input(),
      properties: map['properties'] == null ? null : (GatewayProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

