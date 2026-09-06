import 'package:pulumi/pulumi.dart' as pulumi;

/// Action that should be applied.
enum ActionType implements pulumi.PulumiEnum<String> {
  addActionGroups("AddActionGroups"),
  removeAllActionGroups("RemoveAllActionGroups");

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
