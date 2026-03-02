// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_gateway_custom_domain_args_doc}
/// Arguments for getGatewayCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_gateway_custom_domain_args_doc}
class GetGatewayCustomDomainArgs {
  /// The name of the Spring Cloud Gateway custom domain.
  final pulumi.Input<String> domainName;
  /// The name of Spring Cloud Gateway.
  final pulumi.Input<String> gatewayName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetGatewayCustomDomainArgs].
  /// [domainName] The name of the Spring Cloud Gateway custom domain.
  /// [gatewayName] The name of Spring Cloud Gateway.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetGatewayCustomDomainArgs({
    required this.domainName,
    required this.gatewayName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'gatewayName': gatewayName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetGatewayCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayCustomDomainArgs(
      domainName: (map['domainName'] as String).input(),
      gatewayName: (map['gatewayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

