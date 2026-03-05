/// The type of AAD object the object identifier refers to.
enum AADObjectType {
  valueUser("User"),
  valueGroup("Group"),
  valueServicePrincipal("ServicePrincipal");

  const AADObjectType(this.wireValue);
  final String wireValue;

  static AADObjectType fromValue(String value) {
    for (final item in AADObjectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AADObjectType value: $value');
  }
}

