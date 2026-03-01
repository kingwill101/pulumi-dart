/// Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component.
enum FavoriteType {
  valueShared("shared"),
  valueUser("user");

  const FavoriteType(this.value);
  final String value;

  static FavoriteType fromValue(String value) {
    for (final item in FavoriteType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FavoriteType value: $value');
  }
}

