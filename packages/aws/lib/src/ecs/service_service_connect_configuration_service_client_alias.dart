// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_service_client_alias_test_traffic_rule.dart';

class ServiceServiceConnectConfigurationServiceClientAlias {
  /// Name that you use in the applications of client tasks to connect to this service.
  final String? dnsName;

  /// Listening port number for the Service Connect proxy. This port is available inside of all of the tasks within the same namespace.
  final int port;

  /// Configuration block for test traffic routing rules. See below.
  final List<
    ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule
  >?
  testTrafficRules;

  /// Creates a new [ServiceServiceConnectConfigurationServiceClientAlias].
  /// [dnsName] Name that you use in the applications of client tasks to connect to this service.
  /// [port] Listening port number for the Service Connect proxy. This port is available inside of all of the tasks within the same namespace.
  /// [testTrafficRules] Configuration block for test traffic routing rules. See below.
  ServiceServiceConnectConfigurationServiceClientAlias({
    this.dnsName,
    required this.port,
    this.testTrafficRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'port': port,
      'testTrafficRules': ?testTrafficRules == null
          ? null
          : pulumi.Input.encodeList<
              ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule,
              Map<String, dynamic>
            >(testTrafficRules!, (value) => value.toMap()),
    };
  }

  factory ServiceServiceConnectConfigurationServiceClientAlias.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceServiceConnectConfigurationServiceClientAlias(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      port: map['port'] as int,
      testTrafficRules: map['testTrafficRules'] == null
          ? null
          : pulumi.Input.decodeList<
              ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule
            >(
              map['testTrafficRules'],
              (value) =>
                  ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
