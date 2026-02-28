/// The type of the instance. Defaults to `PRODUCTION`.
enum InstanceType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  production("PRODUCTION"),
  development("DEVELOPMENT");

  const InstanceType(this.value);
  final String value;

  static InstanceType fromValue(String value) {
    for (final item in InstanceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceType value: $value');
  }
}

