/// Indication for database routing information from the data connection, by default only database routing information is allowed
enum DatabaseRouting {
  valueSingle("Single"),
  valueMulti("Multi");

  const DatabaseRouting(this.value);
  final String value;

  static DatabaseRouting fromValue(String value) {
    for (final item in DatabaseRouting.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseRouting value: $value');
  }
}

