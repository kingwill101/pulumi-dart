/// The type of user.
enum UserType {
  valueUser("User"),
  valueGroup("Group"),
  valueServicePrincipal("ServicePrincipal");

  const UserType(this.value);
  final String value;

  static UserType fromValue(String value) {
    for (final item in UserType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserType value: $value');
  }
}

