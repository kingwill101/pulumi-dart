/// Update classifications included in the software update configuration.
enum LinuxUpdateClasses {
  unclassified("Unclassified"),
  critical("Critical"),
  security("Security"),
  other("Other");

  const LinuxUpdateClasses(this.wireValue);
  final String wireValue;

  static LinuxUpdateClasses fromValue(String value) {
    for (final item in LinuxUpdateClasses.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxUpdateClasses value: $value');
  }
}
