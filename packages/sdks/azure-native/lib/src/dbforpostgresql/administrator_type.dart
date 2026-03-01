/// The type of administrator.
enum AdministratorType {
  valueActiveDirectory("ActiveDirectory");

  const AdministratorType(this.value);
  final String value;

  static AdministratorType fromValue(String value) {
    for (final item in AdministratorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdministratorType value: $value');
  }
}

