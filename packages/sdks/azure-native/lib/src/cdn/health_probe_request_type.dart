import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of health probe request that is made.
enum HealthProbeRequestType implements pulumi.PulumiEnum<String> {
  valueNotSet("NotSet"),
  valueGET("GET"),
  valueHEAD("HEAD");

  const HealthProbeRequestType(this.wireValue);
  @override
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
