/// The type of access mode this instance.
enum RuntimeAccessConfigAccessType {
  runtimeAccessTypeUnspecified("RUNTIME_ACCESS_TYPE_UNSPECIFIED"),
  singleUser("SINGLE_USER"),
  serviceAccount("SERVICE_ACCOUNT");

  const RuntimeAccessConfigAccessType(this.value);
  final String value;

  static RuntimeAccessConfigAccessType fromValue(String value) {
    for (final item in RuntimeAccessConfigAccessType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuntimeAccessConfigAccessType value: $value');
  }
}
