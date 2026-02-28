// ignore_for_file: unused_element, unnecessary_cast

import 'service_service_connect_configuration_service_client_alias_test_traffic_rule_header.dart';

class ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule {
  /// Configuration block for header-based routing rules. See below.
  final ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader?
      header;

  /// Creates a new [ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule].
  /// [header] Configuration block for header-based routing rules. See below.
  ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule({
    this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerValue = header;
    if (headerValue != null) {
      map['header'] = headerValue.toMap();
    }
    return map;
  }

  factory ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule(
      header: map['header'] == null
          ? null
          : ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader
              .fromMap((map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
