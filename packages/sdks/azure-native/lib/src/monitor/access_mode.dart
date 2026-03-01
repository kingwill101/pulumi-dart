/// Specifies the default access mode of queries through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
enum AccessMode {
  valueOpen("Open"),
  valuePrivateOnly("PrivateOnly");

  const AccessMode(this.value);
  final String value;

  static AccessMode fromValue(String value) {
    for (final item in AccessMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessMode value: $value');
  }
}

