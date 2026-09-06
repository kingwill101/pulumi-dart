import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies when to stop hosts during ramp down period.
enum StopHostsWhen implements pulumi.PulumiEnum<String> {
  valueZeroSessions("ZeroSessions"),
  valueZeroActiveSessions("ZeroActiveSessions");

  const StopHostsWhen(this.wireValue);
  @override
  final String wireValue;

  static StopHostsWhen fromValue(String value) {
    for (final item in StopHostsWhen.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StopHostsWhen value: $value');
  }
}
