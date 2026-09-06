import 'package:pulumi/pulumi.dart' as pulumi;

/// Link type.
enum LinkTypes implements pulumi.PulumiEnum<String> {
  valueUpdateAlways("UpdateAlways"),
  valueCopyIfNull("CopyIfNull");

  const LinkTypes(this.wireValue);
  @override
  final String wireValue;

  static LinkTypes fromValue(String value) {
    for (final item in LinkTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkTypes value: $value');
  }
}
