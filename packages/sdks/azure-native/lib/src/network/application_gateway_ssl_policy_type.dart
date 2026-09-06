import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Ssl Policy.
enum ApplicationGatewaySslPolicyType implements pulumi.PulumiEnum<String> {
  valuePredefined("Predefined"),
  valueCustom("Custom"),
  valueCustomV2("CustomV2");

  const ApplicationGatewaySslPolicyType(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewaySslPolicyType fromValue(String value) {
    for (final item in ApplicationGatewaySslPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewaySslPolicyType value: $value');
  }
}
