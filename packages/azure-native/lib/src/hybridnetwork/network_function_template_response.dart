// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_function_role_configuration_response.dart';

/// The network function template.
class NetworkFunctionTemplateResponse {
  /// An array of network function role definitions.
  final List<NetworkFunctionRoleConfigurationResponse>? networkFunctionRoleConfigurations;

  /// Creates a new [NetworkFunctionTemplateResponse].
  /// [networkFunctionRoleConfigurations] An array of network function role definitions.
  NetworkFunctionTemplateResponse({
    this.networkFunctionRoleConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionRoleConfigurations': ?networkFunctionRoleConfigurations == null ? null : pulumi.Input.encodeList<NetworkFunctionRoleConfigurationResponse, Map<String, dynamic>>(networkFunctionRoleConfigurations!, (value) => value.toMap()),
    };
  }

  factory NetworkFunctionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionTemplateResponse(
      networkFunctionRoleConfigurations: map['networkFunctionRoleConfigurations'] == null ? null : pulumi.Input.decodeList<NetworkFunctionRoleConfigurationResponse>(map['networkFunctionRoleConfigurations'], (value) => NetworkFunctionRoleConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

