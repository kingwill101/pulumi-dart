// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_function_role_configuration.dart';

/// The network function template.
class NetworkFunctionTemplate {
  /// An array of network function role definitions.
  final List<NetworkFunctionRoleConfiguration>? networkFunctionRoleConfigurations;

  /// Creates a new [NetworkFunctionTemplate].
  /// [networkFunctionRoleConfigurations] An array of network function role definitions.
  NetworkFunctionTemplate({
    this.networkFunctionRoleConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionRoleConfigurations': ?networkFunctionRoleConfigurations == null ? null : pulumi.Input.encodeList<NetworkFunctionRoleConfiguration, Map<String, dynamic>>(networkFunctionRoleConfigurations!, (value) => value.toMap()),
    };
  }

  factory NetworkFunctionTemplate.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionTemplate(
      networkFunctionRoleConfigurations: map['networkFunctionRoleConfigurations'] == null ? null : pulumi.Input.decodeList<NetworkFunctionRoleConfiguration>(map['networkFunctionRoleConfigurations'], (value) => NetworkFunctionRoleConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

