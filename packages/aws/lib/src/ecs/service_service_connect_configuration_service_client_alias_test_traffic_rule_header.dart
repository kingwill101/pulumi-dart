// ignore_for_file: unused_element, unnecessary_cast

import 'service_service_connect_configuration_service_client_alias_test_traffic_rule_header_value.dart';

class ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader {
  /// Name of the HTTP header to match.
  final String name;

  /// Configuration block for header value matching criteria. See below.
  final ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue
      value;

  /// Creates a new [ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader].
  /// [name] Name of the HTTP header to match.
  /// [value] Configuration block for header value matching criteria. See below.
  ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value.toMap();
    return map;
  }

  factory ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader(
      name: map['name'] as String,
      value:
          ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue
              .fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
