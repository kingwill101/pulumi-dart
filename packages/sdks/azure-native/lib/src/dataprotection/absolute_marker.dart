enum AbsoluteMarker {
  valueAllBackup("AllBackup"),
  valueFirstOfDay("FirstOfDay"),
  valueFirstOfMonth("FirstOfMonth"),
  valueFirstOfWeek("FirstOfWeek"),
  valueFirstOfYear("FirstOfYear");

  const AbsoluteMarker(this.value);
  final String value;

  static AbsoluteMarker fromValue(String value) {
    for (final item in AbsoluteMarker.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AbsoluteMarker value: $value');
  }
}

