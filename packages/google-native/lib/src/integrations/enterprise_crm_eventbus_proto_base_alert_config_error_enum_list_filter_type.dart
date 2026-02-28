enum EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType {
  defaultInclusive("DEFAULT_INCLUSIVE"),
  exclusive("EXCLUSIVE");

  const EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType(
      this.value);
  final String value;

  static EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType
      fromValue(String value) {
    for (final item
        in EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType value: $value');
  }
}
