import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if the specification should be imported along with metadata.
enum ImportSpecificationOptions implements pulumi.PulumiEnum<String> {
  never_("never"),
  onDemand("ondemand"),
  always("always");

  const ImportSpecificationOptions(this.wireValue);
  @override
  final String wireValue;

  static ImportSpecificationOptions fromValue(String value) {
    for (final item in ImportSpecificationOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportSpecificationOptions value: $value');
  }
}
