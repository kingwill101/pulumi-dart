/// Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component.
enum FavoriteType {
  valueShared("shared"),
  valueUser("user");

  const FavoriteType(this.wireValue);
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

