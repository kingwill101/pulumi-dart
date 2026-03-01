/// Format of the policy fragment content.
enum PolicyFragmentContentFormat {
  valueXml("xml"),
  valueRawxml("rawxml");

  const PolicyFragmentContentFormat(this.value);
  final String value;

  static PolicyFragmentContentFormat fromValue(String value) {
    for (final item in PolicyFragmentContentFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyFragmentContentFormat value: $value');
  }
}

