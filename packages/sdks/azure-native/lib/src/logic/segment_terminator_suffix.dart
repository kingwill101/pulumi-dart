import 'package:pulumi/pulumi.dart' as pulumi;

/// The segment terminator suffix.
enum SegmentTerminatorSuffix implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNone("None"),
  valueCR("CR"),
  valueLF("LF"),
  valueCRLF("CRLF");

  const SegmentTerminatorSuffix(this.wireValue);
  @override
  final String wireValue;

  static SegmentTerminatorSuffix fromValue(String value) {
    for (final item in SegmentTerminatorSuffix.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SegmentTerminatorSuffix value: $value');
  }
}
