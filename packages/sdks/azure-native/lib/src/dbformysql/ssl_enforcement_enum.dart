/// Enable ssl enforcement or not when connect to server.
enum SslEnforcementEnum {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SslEnforcementEnum(this.value);
  final String value;

  static SslEnforcementEnum fromValue(String value) {
    for (final item in SslEnforcementEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslEnforcementEnum value: $value');
  }
}

