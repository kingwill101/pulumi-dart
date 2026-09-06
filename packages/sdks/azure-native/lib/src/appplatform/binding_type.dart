import 'package:pulumi/pulumi.dart' as pulumi;

/// Buildpack Binding Type
enum BindingType implements pulumi.PulumiEnum<String> {
  valueApplicationInsights("ApplicationInsights"),
  valueApacheSkyWalking("ApacheSkyWalking"),
  valueAppDynamics("AppDynamics"),
  valueDynatrace("Dynatrace"),
  valueNewRelic("NewRelic"),
  valueElasticAPM("ElasticAPM"),
  valueCACertificates("CACertificates");

  const BindingType(this.wireValue);
  @override
  final String wireValue;

  static BindingType fromValue(String value) {
    for (final item in BindingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BindingType value: $value');
  }
}
