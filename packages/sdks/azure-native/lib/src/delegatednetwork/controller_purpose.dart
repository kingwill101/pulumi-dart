import 'package:pulumi/pulumi.dart' as pulumi;

/// The purpose of the dnc controller resource.
enum ControllerPurpose implements pulumi.PulumiEnum<String> {
  valueTest("test"),
  valueProd("prod");

  const ControllerPurpose(this.wireValue);
  @override
  final String wireValue;

  static ControllerPurpose fromValue(String value) {
    for (final item in ControllerPurpose.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControllerPurpose value: $value');
  }
}
