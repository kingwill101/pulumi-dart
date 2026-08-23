/// Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all.
enum CommandLineSetting {
  valueDoNotAllow("DoNotAllow"),
  valueAllow("Allow"),
  valueRequire("Require");

  const CommandLineSetting(this.wireValue);
  final String wireValue;

  static CommandLineSetting fromValue(String value) {
    for (final item in CommandLineSetting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommandLineSetting value: $value');
  }
}
