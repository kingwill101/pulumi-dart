import 'package:pulumi/pulumi.dart' as pulumi;

/// Job Type to support polymorphic resource.
enum HciJobType implements pulumi.PulumiEnum<String> {
  configureCVM("ConfigureCVM"),
  configureSdnIntegration("ConfigureSdnIntegration");

  const HciJobType(this.wireValue);
  @override
  final String wireValue;

  static HciJobType fromValue(String value) {
    for (final item in HciJobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HciJobType value: $value');
  }
}
