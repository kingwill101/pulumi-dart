/// A class of status codes to accept.
enum ResponseStatusCodeStatusClass {
  statusClassUnspecified("STATUS_CLASS_UNSPECIFIED"),
  statusClass1xx("STATUS_CLASS_1XX"),
  statusClass2xx("STATUS_CLASS_2XX"),
  statusClass3xx("STATUS_CLASS_3XX"),
  statusClass4xx("STATUS_CLASS_4XX"),
  statusClass5xx("STATUS_CLASS_5XX"),
  statusClassAny("STATUS_CLASS_ANY");

  const ResponseStatusCodeStatusClass(this.value);
  final String value;

  static ResponseStatusCodeStatusClass fromValue(String value) {
    for (final item in ResponseStatusCodeStatusClass.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResponseStatusCodeStatusClass value: $value');
  }
}
