import 'package:pulumi/pulumi.dart' as pulumi;

/// enable or disable decryption
enum DecryptionRuleTypeEnum implements pulumi.PulumiEnum<String> {
  valueSSLOutboundInspection("SSLOutboundInspection"),
  valueSSLInboundInspection("SSLInboundInspection"),
  valueNone("None");

  const DecryptionRuleTypeEnum(this.wireValue);
  @override
  final String wireValue;

  static DecryptionRuleTypeEnum fromValue(String value) {
    for (final item in DecryptionRuleTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DecryptionRuleTypeEnum value: $value');
  }
}
