/// Resource power state
enum AzureBareMetalInstancePowerStateEnum {
  valueStarting("starting"),
  valueStarted("started"),
  valueStopping("stopping"),
  valueStopped("stopped"),
  valueRestarting("restarting"),
  valueUnknown("unknown");

  const AzureBareMetalInstancePowerStateEnum(this.wireValue);
  final String wireValue;

  static AzureBareMetalInstancePowerStateEnum fromValue(String value) {
    for (final item in AzureBareMetalInstancePowerStateEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AzureBareMetalInstancePowerStateEnum value: $value',
    );
  }
}
