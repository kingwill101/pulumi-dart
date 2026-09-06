import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Group Policy types
enum ApplicationGroupPolicyType implements pulumi.PulumiEnum<String> {
  valueThrottlingPolicy("ThrottlingPolicy");

  const ApplicationGroupPolicyType(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGroupPolicyType fromValue(String value) {
    for (final item in ApplicationGroupPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGroupPolicyType value: $value');
  }
}
