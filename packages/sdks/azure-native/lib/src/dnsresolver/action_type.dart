import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action to take.
enum ActionType implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueAlert("Alert"),
  valueBlock("Block");

  const ActionType(this.wireValue);
  @override
  final String wireValue;

  static ActionType fromValue(String value) {
    for (final item in ActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionType value: $value');
  }
}
