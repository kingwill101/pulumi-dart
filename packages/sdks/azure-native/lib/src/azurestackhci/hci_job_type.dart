/// Job Type to support polymorphic resource.
enum HciJobType {
  configureCVM("ConfigureCVM"),
  configureSdnIntegration("ConfigureSdnIntegration");

  const HciJobType(this.wireValue);
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
