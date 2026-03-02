// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_gateway_hostname_configuration_args_doc}
/// Arguments for getGatewayHostnameConfiguration.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_gateway_hostname_configuration_args_doc}
class GetGatewayHostnameConfigurationArgs {
  /// Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  final pulumi.Input<String> gatewayId;
  /// Gateway hostname configuration identifier. Must be unique in the scope of parent Gateway entity.
  final pulumi.Input<String> hcId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetGatewayHostnameConfigurationArgs].
  /// [gatewayId] Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  /// [hcId] Gateway hostname configuration identifier. Must be unique in the scope of parent Gateway entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetGatewayHostnameConfigurationArgs({
    required this.gatewayId,
    required this.hcId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'hcId': hcId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetGatewayHostnameConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayHostnameConfigurationArgs(
      gatewayId: (map['gatewayId'] as String).input(),
      hcId: (map['hcId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

