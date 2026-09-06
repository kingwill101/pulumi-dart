import 'package:pulumi/pulumi.dart' as pulumi;

/// Capabilities enum
enum Capabilities implements pulumi.PulumiEnum<String> {
  cAPABILITYAUTOEXPAND("CAPABILITY_AUTO_EXPAND"),
  cAPABILITYIAM("CAPABILITY_IAM"),
  cAPABILITYNAMEDIAM("CAPABILITY_NAMED_IAM");

  const Capabilities(this.wireValue);
  @override
  final String wireValue;

  static Capabilities fromValue(String value) {
    for (final item in Capabilities.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Capabilities value: $value');
  }
}
