import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of key signature.
enum UefiKeyType implements pulumi.PulumiEnum<String> {
  sha256("sha256"),
  x509("x509");

  const UefiKeyType(this.wireValue);
  @override
  final String wireValue;

  static UefiKeyType fromValue(String value) {
    for (final item in UefiKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UefiKeyType value: $value');
  }
}
