// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_function_role_configuration_response.dart';

/// The network function template.
class NetworkFunctionTemplateResponse {
  /// An array of network function role definitions.
  final pulumi.Input<List<NetworkFunctionRoleConfigurationResponse>>? networkFunctionRoleConfigurations;

  /// Creates a new [NetworkFunctionTemplateResponse].
  /// [networkFunctionRoleConfigurations] An array of network function role definitions.
  NetworkFunctionTemplateResponse({
    this.networkFunctionRoleConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionRoleConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkFunctionRoleConfigurationResponse>, List<Map<String, dynamic>>>(networkFunctionRoleConfigurations, (value) => pulumi.Input.encodeList<NetworkFunctionRoleConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkFunctionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionTemplateResponse(
      networkFunctionRoleConfigurations: (() { final guardedValue = map['networkFunctionRoleConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkFunctionRoleConfigurationResponse>(guardedValue, (value) => NetworkFunctionRoleConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

