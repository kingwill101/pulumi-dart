// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_service_client_alias_test_traffic_rule_header_value.dart';

class ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader {
  /// Name of the HTTP header to match.
  final pulumi.Input<String> name;
  /// Configuration block for header value matching criteria. See below.
  final pulumi.Input<ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue> value;

  /// Creates a new [ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader].
  /// [name] Name of the HTTP header to match.
  /// [value] Configuration block for header value matching criteria. See below.
  const ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': pulumi.Input.mapInputValue<ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}

