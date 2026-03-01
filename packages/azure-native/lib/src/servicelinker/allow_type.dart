/// Allow caller client IP to access the target service if true. the property is used when connecting local application to target service.
enum AllowType {
  valueTrue("true"),
  valueFalse("false");

  const AllowType(this.value);
  final String value;

  static AllowType fromValue(String value) {
    for (final item in AllowType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowType value: $value');
  }
}

