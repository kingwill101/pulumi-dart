import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
enum ItemScope implements pulumi.PulumiEnum<String> {
  shared("shared"),
  user("user");

  const ItemScope(this.wireValue);
  @override
  final String wireValue;

  static ItemScope fromValue(String value) {
    for (final item in ItemScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ItemScope value: $value');
  }
}
