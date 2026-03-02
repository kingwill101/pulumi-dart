// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_custom_domain_properties.dart';

/// {@template pulumi_appplatform_gateway_custom_domain_args_doc}
/// The set of arguments for GatewayCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appplatform_gateway_custom_domain_args_doc}
class GatewayCustomDomainArgs {
  /// The name of the Spring Cloud Gateway custom domain.
  final pulumi.Input<String>? domainName;
  /// The name of Spring Cloud Gateway.
  final pulumi.Input<String> gatewayName;
  /// The properties of custom domain for Spring Cloud Gateway
  final pulumi.Input<GatewayCustomDomainProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GatewayCustomDomainArgs].
  /// [domainName] The name of the Spring Cloud Gateway custom domain.
  /// [gatewayName] The name of Spring Cloud Gateway.
  /// [properties] The properties of custom domain for Spring Cloud Gateway
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GatewayCustomDomainArgs({
    this.domainName,
    required this.gatewayName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'gatewayName': gatewayName,
      'properties': ?pulumi.Input.mapOptionalInputValue<GatewayCustomDomainProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GatewayCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GatewayCustomDomainArgs(
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      gatewayName: (map['gatewayName'] as String).input(),
      properties: map['properties'] == null ? null : (GatewayCustomDomainProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

