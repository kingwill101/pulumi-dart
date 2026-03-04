/// Format of the policy fragment content.
enum PolicyFragmentContentFormat {
  valueXml("xml"),
  valueRawxml("rawxml");

  const PolicyFragmentContentFormat(this.wireValue);
  final String wireValue;

  static PolicyFragmentContentFormat fromValue(String value) {
    for (final item in PolicyFragmentContentFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyFragmentContentFormat value: $value');
  }
}
