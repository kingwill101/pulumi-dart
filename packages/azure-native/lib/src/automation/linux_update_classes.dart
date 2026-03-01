/// Update classifications included in the software update configuration.
enum LinuxUpdateClasses {
  valueUnclassified("Unclassified"),
  valueCritical("Critical"),
  valueSecurity("Security"),
  valueOther("Other");

  const LinuxUpdateClasses(this.value);
  final String value;

  static LinuxUpdateClasses fromValue(String value) {
    for (final item in LinuxUpdateClasses.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxUpdateClasses value: $value');
  }
}

