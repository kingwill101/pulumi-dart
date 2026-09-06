import 'package:pulumi/pulumi.dart' as pulumi;

/// Format of the policyContent.
enum PolicyContentFormat implements pulumi.PulumiEnum<String> {
  valueXml("xml"),
  valueXmlLink("xml-link"),
  valueRawxml("rawxml"),
  valueRawxmlLink("rawxml-link");

  const PolicyContentFormat(this.wireValue);
  @override
  final String wireValue;

  static PolicyContentFormat fromValue(String value) {
    for (final item in PolicyContentFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyContentFormat value: $value');
  }
}
