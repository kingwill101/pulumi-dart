/// Buildpack Binding Type
enum BindingType {
  valueApplicationInsights("ApplicationInsights"),
  valueApacheSkyWalking("ApacheSkyWalking"),
  valueAppDynamics("AppDynamics"),
  valueDynatrace("Dynatrace"),
  valueNewRelic("NewRelic"),
  valueElasticAPM("ElasticAPM"),
  valueCACertificates("CACertificates");

  const BindingType(this.value);
  final String value;

  static BindingType fromValue(String value) {
    for (final item in BindingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BindingType value: $value');
  }
}

