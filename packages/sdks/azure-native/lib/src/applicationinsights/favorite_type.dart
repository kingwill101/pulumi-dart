import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component.
enum FavoriteType implements pulumi.PulumiEnum<String> {
  shared("shared"),
  user("user");

  const FavoriteType(this.wireValue);
  @override
  final String wireValue;

  static FavoriteType fromValue(String value) {
    for (final item in FavoriteType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FavoriteType value: $value');
  }
}
