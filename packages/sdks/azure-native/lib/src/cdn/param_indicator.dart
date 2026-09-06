import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the purpose of the parameter
enum ParamIndicator implements pulumi.PulumiEnum<String> {
  expires("Expires"),
  keyId("KeyId"),
  signature("Signature");

  const ParamIndicator(this.wireValue);
  @override
  final String wireValue;

  static ParamIndicator fromValue(String value) {
    for (final item in ParamIndicator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParamIndicator value: $value');
  }
}
