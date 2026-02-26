enum CompositeTypeStatus {
  unknownStatus("UNKNOWN_STATUS"),
  deprecated("DEPRECATED"),
  experimental("EXPERIMENTAL"),
  supported("SUPPORTED");

  const CompositeTypeStatus(this.value);
  final String value;

  static CompositeTypeStatus fromValue(String value) {
    for (final item in CompositeTypeStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositeTypeStatus value: $value');
  }
}
