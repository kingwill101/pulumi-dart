// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_function_role_configuration.dart';

/// The network function template.
class NetworkFunctionTemplate {
  /// An array of network function role definitions.
  final pulumi.Input<List<NetworkFunctionRoleConfiguration>>?
  networkFunctionRoleConfigurations;

  /// Creates a new [NetworkFunctionTemplate].
  /// [networkFunctionRoleConfigurations] An array of network function role definitions.
  NetworkFunctionTemplate({this.networkFunctionRoleConfigurations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionRoleConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkFunctionRoleConfiguration>,
            List<Map<String, dynamic>>
          >(
            networkFunctionRoleConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkFunctionRoleConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkFunctionTemplate.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionTemplate(
      networkFunctionRoleConfigurations: (() {
        final guardedValue = map['networkFunctionRoleConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkFunctionRoleConfiguration>(
            guardedValue,
            (value) => NetworkFunctionRoleConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
