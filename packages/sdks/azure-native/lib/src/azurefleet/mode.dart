/// Specifies the mode that ProxyAgent will execute on if the feature is enabled.
/// ProxyAgent will start to audit or monitor but not enforce access control over
/// requests to host endpoints in Audit mode, while in Enforce mode it will enforce
/// access control. The default value is Enforce mode.
enum Mode {
  audit("Audit"),
  enforce("Enforce");

  const Mode(this.value);
  final String value;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}

