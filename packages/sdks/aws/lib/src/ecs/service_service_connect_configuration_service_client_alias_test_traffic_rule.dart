// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_service_client_alias_test_traffic_rule_header.dart';

class ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule {
  /// Configuration block for header-based routing rules. See below.
  final pulumi.Input<ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader?>? header;

  /// Creates a new [ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule].
  /// [header] Configuration block for header-based routing rules. See below.
  const ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule({
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?pulumi.Input.mapOptionalInputValue<ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
    };
  }

  factory ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRule(
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
