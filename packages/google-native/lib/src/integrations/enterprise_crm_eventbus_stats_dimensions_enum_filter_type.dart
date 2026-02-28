/// Whether to include or exclude the enums matching the regex.
enum EnterpriseCrmEventbusStatsDimensionsEnumFilterType {
  defaultInclusive("DEFAULT_INCLUSIVE"),
  exclusive("EXCLUSIVE");

  const EnterpriseCrmEventbusStatsDimensionsEnumFilterType(this.value);
  final String value;

  static EnterpriseCrmEventbusStatsDimensionsEnumFilterType fromValue(
      String value) {
    for (final item
        in EnterpriseCrmEventbusStatsDimensionsEnumFilterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmEventbusStatsDimensionsEnumFilterType value: $value');
  }
}
