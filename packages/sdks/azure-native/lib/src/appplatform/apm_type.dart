/// Type of application performance monitoring
enum ApmType {
  valueApplicationInsights("ApplicationInsights"),
  valueAppDynamics("AppDynamics"),
  valueDynatrace("Dynatrace"),
  valueNewRelic("NewRelic"),
  valueElasticAPM("ElasticAPM");

  const ApmType(this.wireValue);
  final String wireValue;

  static ApmType fromValue(String value) {
    for (final item in ApmType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApmType value: $value');
  }
}
