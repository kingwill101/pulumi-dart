/// Resource power state
enum AzureLargeInstancePowerStateEnum {
  starting("starting"),
  started("started"),
  stopping("stopping"),
  stopped("stopped"),
  restarting("restarting"),
  unknown("unknown");

  const AzureLargeInstancePowerStateEnum(this.value);
  final String value;

  static AzureLargeInstancePowerStateEnum fromValue(String value) {
    for (final item in AzureLargeInstancePowerStateEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureLargeInstancePowerStateEnum value: $value');
  }
}

