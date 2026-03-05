/// The type of health probe request that is made.
enum HealthProbeRequestType {
  valueNotSet("NotSet"),
  valueGET("GET"),
  valueHEAD("HEAD");

  const HealthProbeRequestType(this.wireValue);
  final String wireValue;

  static HealthProbeRequestType fromValue(String value) {
    for (final item in HealthProbeRequestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthProbeRequestType value: $value');
  }
}

