/// The type of administrator.
enum AdministratorType {
  valueActiveDirectory("ActiveDirectory");

  const AdministratorType(this.wireValue);
  final String wireValue;

  static AdministratorType fromValue(String value) {
    for (final item in AdministratorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdministratorType value: $value');
  }
}
