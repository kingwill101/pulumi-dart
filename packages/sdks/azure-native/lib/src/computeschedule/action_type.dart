import 'package:pulumi/pulumi.dart' as pulumi;

/// The action the scheduled action should perform in the resources
enum ActionType implements pulumi.PulumiEnum<String> {
  start("Start"),
  deallocate("Deallocate"),
  hibernate("Hibernate");

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
