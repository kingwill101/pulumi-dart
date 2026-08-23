/// enable or disable decryption
enum DecryptionRuleTypeEnum {
  valueSSLOutboundInspection("SSLOutboundInspection"),
  valueSSLInboundInspection("SSLInboundInspection"),
  valueNone("None");

  const DecryptionRuleTypeEnum(this.wireValue);
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
