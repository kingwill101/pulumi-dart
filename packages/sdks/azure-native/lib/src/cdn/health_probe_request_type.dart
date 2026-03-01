/// The type of health probe request that is made.
enum HealthProbeRequestType {
  valueNotSet("NotSet"),
  valueGET("GET"),
  valueHEAD("HEAD");

  const HealthProbeRequestType(this.value);
  final String value;

  static HealthProbeRequestType fromValue(String value) {
    for (final item in HealthProbeRequestType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthProbeRequestType value: $value');
  }
}

