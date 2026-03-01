/// Configuration to use NNI for Infrastructure Management. Example: True/False.
enum IsManagementType {
  valueTrue("True"),
  valueFalse("False");

  const IsManagementType(this.value);
  final String value;

  static IsManagementType fromValue(String value) {
    for (final item in IsManagementType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsManagementType value: $value');
  }
}

