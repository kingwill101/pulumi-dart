enum CompositeTypeStatus2 {
  unknownStatus("UNKNOWN_STATUS"),
  deprecated("DEPRECATED"),
  experimental("EXPERIMENTAL"),
  supported("SUPPORTED");

  const CompositeTypeStatus2(this.value);
  final String value;

  static CompositeTypeStatus2 fromValue(String value) {
    for (final item in CompositeTypeStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositeTypeStatus2 value: $value');
  }
}
