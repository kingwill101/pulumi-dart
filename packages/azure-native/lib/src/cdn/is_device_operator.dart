/// Describes operator to be matched
enum IsDeviceOperator {
  equal("Equal");

  const IsDeviceOperator(this.value);
  final String value;

  static IsDeviceOperator fromValue(String value) {
    for (final item in IsDeviceOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsDeviceOperator value: $value');
  }
}

