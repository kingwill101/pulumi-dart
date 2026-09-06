import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag if need to remove current existing peerings.
enum DeleteExistingPeering implements pulumi.PulumiEnum<String> {
  valueFalse("False"),
  valueTrue("True");

  const DeleteExistingPeering(this.wireValue);
  @override
  final String wireValue;

  static DeleteExistingPeering fromValue(String value) {
    for (final item in DeleteExistingPeering.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteExistingPeering value: $value');
  }
}
