import 'package:pulumi/pulumi.dart' as pulumi;

/// Object representing RunningState for Managed CCF.
enum RunningState implements pulumi.PulumiEnum<String> {
  valueActive("Active"),
  valuePaused("Paused"),
  valueUnknown("Unknown"),
  valuePausing("Pausing"),
  valueResuming("Resuming");

  const RunningState(this.wireValue);
  @override
  final String wireValue;

  static RunningState fromValue(String value) {
    for (final item in RunningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RunningState value: $value');
  }
}
