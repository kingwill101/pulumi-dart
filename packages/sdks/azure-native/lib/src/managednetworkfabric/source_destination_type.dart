/// IP Address type that needs to be matched.
enum SourceDestinationType {
  valueSourceIP("SourceIP"),
  valueDestinationIP("DestinationIP");

  const SourceDestinationType(this.value);
  final String value;

  static SourceDestinationType fromValue(String value) {
    for (final item in SourceDestinationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceDestinationType value: $value');
  }
}

