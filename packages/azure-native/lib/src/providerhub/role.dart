/// The ownership role the application has on the resource types. The service owner role gives the application owner permissions. The limited owner role gives elevated permissions but does not allow all the permissions of a service owner, such as read/write on internal metadata.
enum Role {
  serviceOwner("ServiceOwner"),
  limitedOwner("LimitedOwner");

  const Role(this.value);
  final String value;

  static Role fromValue(String value) {
    for (final item in Role.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Role value: $value');
  }
}

