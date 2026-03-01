/// enable or disable decryption
enum DecryptionRuleTypeEnum {
  valueSSLOutboundInspection("SSLOutboundInspection"),
  valueSSLInboundInspection("SSLInboundInspection"),
  valueNone("None");

  const DecryptionRuleTypeEnum(this.value);
  final String value;

  static DecryptionRuleTypeEnum fromValue(String value) {
    for (final item in DecryptionRuleTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DecryptionRuleTypeEnum value: $value');
  }
}

