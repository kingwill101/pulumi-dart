import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource power state
enum AzureBareMetalInstancePowerStateEnum implements pulumi.PulumiEnum<String> {
  valueStarting("starting"),
  valueStarted("started"),
  valueStopping("stopping"),
  valueStopped("stopped"),
  valueRestarting("restarting"),
  valueUnknown("unknown");

  const AzureBareMetalInstancePowerStateEnum(this.wireValue);
  @override
  final String wireValue;

  static AzureBareMetalInstancePowerStateEnum fromValue(String value) {
    for (final item in AzureBareMetalInstancePowerStateEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureBareMetalInstancePowerStateEnum value: $value');
  }
}
