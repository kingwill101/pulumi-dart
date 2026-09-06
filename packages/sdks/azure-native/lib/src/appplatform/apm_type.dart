import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of application performance monitoring
enum ApmType implements pulumi.PulumiEnum<String> {
  valueApplicationInsights("ApplicationInsights"),
  valueAppDynamics("AppDynamics"),
  valueDynatrace("Dynatrace"),
  valueNewRelic("NewRelic"),
  valueElasticAPM("ElasticAPM");

  const ApmType(this.wireValue);
  @override
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
