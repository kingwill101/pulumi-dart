/// The type of identity used for the resource.
enum AmlFilesystemIdentityType {
  valueUserAssigned("UserAssigned"),
  valueNone("None");

  const AmlFilesystemIdentityType(this.value);
  final String value;

  static AmlFilesystemIdentityType fromValue(String value) {
    for (final item in AmlFilesystemIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmlFilesystemIdentityType value: $value');
  }
}

