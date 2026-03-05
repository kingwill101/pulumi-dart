/// Buildpack Binding Type
enum BindingType {
  valueApplicationInsights("ApplicationInsights"),
  valueApacheSkyWalking("ApacheSkyWalking"),
  valueAppDynamics("AppDynamics"),
  valueDynatrace("Dynatrace"),
  valueNewRelic("NewRelic"),
  valueElasticAPM("ElasticAPM"),
  valueCACertificates("CACertificates");

  const BindingType(this.wireValue);
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

