import 'package:pulumi/pulumi.dart' as pulumi;

/// Format of the policy fragment content.
enum PolicyFragmentContentFormat implements pulumi.PulumiEnum<String> {
  valueXml("xml"),
  valueRawxml("rawxml");

  const PolicyFragmentContentFormat(this.wireValue);
  @override
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
