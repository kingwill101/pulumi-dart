enum ExportData {
  valueRawEvents("RawEvents");

  const ExportData(this.value);
  final String value;

  static ExportData fromValue(String value) {
    for (final item in ExportData.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExportData value: $value');
  }
}

