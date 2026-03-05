/// Target for requests captured by this rule.
enum IpFilterTargetType {
  valueAll("all"),
  valueServiceApi("serviceApi"),
  valueDeviceApi("deviceApi");

  const IpFilterTargetType(this.wireValue);
  final String wireValue;

  static IpFilterTargetType fromValue(String value) {
    for (final item in IpFilterTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFilterTargetType value: $value');
  }
}

