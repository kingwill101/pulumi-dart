/// The identity type
enum DatabaseIdentityType {
  valueNone("None"),
  valueUserAssigned("UserAssigned");

  const DatabaseIdentityType(this.value);
  final String value;

  static DatabaseIdentityType fromValue(String value) {
    for (final item in DatabaseIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseIdentityType value: $value');
  }
}

