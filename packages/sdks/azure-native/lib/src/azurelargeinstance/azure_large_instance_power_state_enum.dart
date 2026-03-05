/// Resource power state
enum AzureLargeInstancePowerStateEnum {
  starting("starting"),
  started("started"),
  stopping("stopping"),
  stopped("stopped"),
  restarting("restarting"),
  unknown("unknown");

  const AzureLargeInstancePowerStateEnum(this.wireValue);
  final String wireValue;

  static AzureLargeInstancePowerStateEnum fromValue(String value) {
    for (final item in AzureLargeInstancePowerStateEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureLargeInstancePowerStateEnum value: $value');
  }
}

