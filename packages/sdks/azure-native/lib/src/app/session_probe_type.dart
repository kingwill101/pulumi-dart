/// Denotes the type of probe. Can be Liveness or Startup, Readiness probe is not supported in sessions. Type must be unique for each probe within the context of a list of probes (SessionProbes).
enum SessionProbeType {
  valueLiveness("Liveness"),
  valueStartup("Startup");

  const SessionProbeType(this.wireValue);
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
