import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule type.
enum ApplicationGatewayRequestRoutingRuleType implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valuePathBasedRouting("PathBasedRouting");

  const ApplicationGatewayRequestRoutingRuleType(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewayRequestRoutingRuleType fromValue(String value) {
    for (final item in ApplicationGatewayRequestRoutingRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayRequestRoutingRuleType value: $value');
  }
}
