/// Configuration to use NNI for Infrastructure Management. Example: True/False.
enum IsManagementType {
  valueTrue("True"),
  valueFalse("False");

  const IsManagementType(this.wireValue);
  final String wireValue;

  static IsManagementType fromValue(String value) {
    for (final item in IsManagementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsManagementType value: $value');
  }
}

