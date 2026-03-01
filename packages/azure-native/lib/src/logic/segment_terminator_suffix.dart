/// The segment terminator suffix.
enum SegmentTerminatorSuffix {
  valueNotSpecified("NotSpecified"),
  valueNone("None"),
  valueCR("CR"),
  valueLF("LF"),
  valueCRLF("CRLF");

  const SegmentTerminatorSuffix(this.value);
  final String value;

  static SegmentTerminatorSuffix fromValue(String value) {
    for (final item in SegmentTerminatorSuffix.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SegmentTerminatorSuffix value: $value');
  }
}

