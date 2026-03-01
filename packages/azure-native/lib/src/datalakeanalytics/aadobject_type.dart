/// The type of AAD object the object identifier refers to.
enum AADObjectType {
  valueUser("User"),
  valueGroup("Group"),
  valueServicePrincipal("ServicePrincipal");

  const AADObjectType(this.value);
  final String value;

  static AADObjectType fromValue(String value) {
    for (final item in AADObjectType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AADObjectType value: $value');
  }
}

