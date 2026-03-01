/// Type of application performance monitoring
enum ApmType {
  valueApplicationInsights("ApplicationInsights"),
  valueAppDynamics("AppDynamics"),
  valueDynatrace("Dynatrace"),
  valueNewRelic("NewRelic"),
  valueElasticAPM("ElasticAPM");

  const ApmType(this.value);
  final String value;

  static ApmType fromValue(String value) {
    for (final item in ApmType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApmType value: $value');
  }
}

