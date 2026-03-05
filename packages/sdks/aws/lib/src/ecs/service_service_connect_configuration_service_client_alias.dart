// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_service_client_alias_test_traffic_rule.dart';

class ServiceServiceConnectConfigurationServiceClientAlias {
  /// Name that you use in the applications of client tasks to connect to this service.
  final pulumi.Input<String>? dnsName;
  /// Listening port number for the Service Connect proxy. This port is available inside of all of the tasks within the same namespace.
  final pulumi.Input<int> port;
  /// Configuration block for test traffic routing rules. See below.
  final pulumi.Input<List<ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule>>? testTrafficRules;

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
      'testTrafficRules': ?pulumi.Input.mapOptionalInputValue<List<ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule>, List<Map<String, dynamic>>>(testTrafficRules, (value) => pulumi.Input.encodeList<ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceServiceConnectConfigurationServiceClientAlias.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceClientAlias(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      testTrafficRules: (() { final guardedValue = map['testTrafficRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule>(guardedValue, (value) => ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

