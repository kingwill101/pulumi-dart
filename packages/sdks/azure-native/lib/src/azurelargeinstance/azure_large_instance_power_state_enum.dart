import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource power state
enum AzureLargeInstancePowerStateEnum implements pulumi.PulumiEnum<String> {
  starting("starting"),
  started("started"),
  stopping("stopping"),
  stopped("stopped"),
  restarting("restarting"),
  unknown("unknown");

  const AzureLargeInstancePowerStateEnum(this.wireValue);
  @override
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
