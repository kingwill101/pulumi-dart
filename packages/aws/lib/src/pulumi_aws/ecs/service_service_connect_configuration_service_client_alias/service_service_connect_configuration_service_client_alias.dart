// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_service_connect_configuration_service_client_alias_test_traffic_rule/service_service_connect_configuration_service_client_alias_test_traffic_rule.dart';

class ServiceServiceConnectConfigurationServiceClientAlias {
  /// Name that you use in the applications of client tasks to connect to this service.
  final String? dnsName;

  /// Listening port number for the Service Connect proxy. This port is available inside of all of the tasks within the same namespace.
  final int port;

  /// Configuration block for test traffic routing rules. See below.
  final List<
          ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule>?
      testTrafficRules;

  ServiceServiceConnectConfigurationServiceClientAlias({
    this.dnsName,
    required this.port,
    this.testTrafficRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsNameValue = dnsName;
    if (dnsNameValue != null) {
      map['dnsName'] = dnsNameValue;
    }
    map['port'] = port;
    final testTrafficRulesValue = testTrafficRules;
    if (testTrafficRulesValue != null) {
      map['testTrafficRules'] = Input.encodeList<
          ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule,
          Map<String,
              dynamic>>(testTrafficRulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceServiceConnectConfigurationServiceClientAlias.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceClientAlias(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      port: map['port'] as int,
      testTrafficRules: map['testTrafficRules'] == null
          ? null
          : Input.decodeList<
                  ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule>(
              map['testTrafficRules'],
              (value) =>
                  ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
