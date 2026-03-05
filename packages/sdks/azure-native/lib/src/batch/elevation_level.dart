/// nonAdmin - The auto user is a standard user without elevated access. admin - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
enum ElevationLevel {
  nonAdmin("NonAdmin"),
  admin("Admin");

  const ElevationLevel(this.wireValue);
  final String wireValue;

  static ElevationLevel fromValue(String value) {
    for (final item in ElevationLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElevationLevel value: $value');
  }
}

