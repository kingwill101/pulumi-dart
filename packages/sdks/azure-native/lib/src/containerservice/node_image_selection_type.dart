import 'package:pulumi/pulumi.dart' as pulumi;

/// The node image upgrade type.
enum NodeImageSelectionType implements pulumi.PulumiEnum<String> {
  latest("Latest"),
  consistent("Consistent"),
  custom("Custom");

  const NodeImageSelectionType(this.wireValue);
  @override
  final String wireValue;

  static NodeImageSelectionType fromValue(String value) {
    for (final item in NodeImageSelectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeImageSelectionType value: $value');
  }
}
