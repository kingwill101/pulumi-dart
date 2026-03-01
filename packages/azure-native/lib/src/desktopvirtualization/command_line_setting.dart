/// Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all.
enum CommandLineSetting {
  valueDoNotAllow("DoNotAllow"),
  valueAllow("Allow"),
  valueRequire("Require");

  const CommandLineSetting(this.value);
  final String value;

  static CommandLineSetting fromValue(String value) {
    for (final item in CommandLineSetting.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommandLineSetting value: $value');
  }
}

