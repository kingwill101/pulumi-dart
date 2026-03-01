enum PulumiOperation {
  valueUpdate("update"),
  valuePreview("preview"),
  valueRefresh("refresh"),
  valueDestroy("destroy");

  const PulumiOperation(this.value);
  final String value;

  static PulumiOperation fromValue(String value) {
    for (final item in PulumiOperation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PulumiOperation value: $value');
  }
}

