import 'package:pulumi/pulumi.dart' as pulumi;

/// Denotes the type of probe. Can be Liveness or Startup, Readiness probe is not supported in sessions. Type must be unique for each probe within the context of a list of probes (SessionProbes).
enum SessionProbeType implements pulumi.PulumiEnum<String> {
  valueLiveness("Liveness"),
  valueStartup("Startup");

  const SessionProbeType(this.wireValue);
  @override
  final String wireValue;

  static SessionProbeType fromValue(String value) {
    for (final item in SessionProbeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionProbeType value: $value');
  }
}
