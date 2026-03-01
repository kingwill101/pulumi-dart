/// The purpose of the dnc controller resource.
enum ControllerPurpose {
  valueTest("test"),
  valueProd("prod");

  const ControllerPurpose(this.value);
  final String value;

  static ControllerPurpose fromValue(String value) {
    for (final item in ControllerPurpose.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControllerPurpose value: $value');
  }
}

