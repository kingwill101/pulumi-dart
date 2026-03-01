// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_gateway_host_name_configuration_get_gateway_host_name_configuration_args_doc}
/// Arguments for getGatewayHostNameConfiguration.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_gateway_host_name_configuration_get_gateway_host_name_configuration_args_doc}
class GetGatewayHostNameConfigurationArgs {
  /// The ID of the API Management Service.
  final pulumi.Input<String> apiManagementId;
  /// The name of the API Management Gateway.
  /// *
  final pulumi.Input<String> gatewayName;
  /// The name of the API Management Gateway Host Name Configuration.
  final pulumi.Input<String> name;

  /// Creates a new [GetGatewayHostNameConfigurationArgs].
  /// [apiManagementId] The ID of the API Management Service.
  /// [gatewayName] The name of the API Management Gateway.
  /// [name] The name of the API Management Gateway Host Name Configuration.
  GetGatewayHostNameConfigurationArgs({
    required String apiManagementId,
    required String gatewayName,
    required String name,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'gatewayName': gatewayName,
      'name': name,
    };
  }

  factory GetGatewayHostNameConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayHostNameConfigurationArgs(
      apiManagementId: map['apiManagementId'] as String,
      gatewayName: map['gatewayName'] as String,
      name: map['name'] as String,
    );
  }
}

