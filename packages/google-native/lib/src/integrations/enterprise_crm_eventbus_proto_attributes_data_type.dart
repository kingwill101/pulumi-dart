/// Things like URL, Email, Currency, Timestamp (rather than string, int64...)
enum EnterpriseCrmEventbusProtoAttributesDataType {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  email("EMAIL"),
  url("URL"),
  currency("CURRENCY"),
  timestamp("TIMESTAMP"),
  domainName("DOMAIN_NAME");

  const EnterpriseCrmEventbusProtoAttributesDataType(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoAttributesDataType fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoAttributesDataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmEventbusProtoAttributesDataType value: $value',
    );
  }
}
