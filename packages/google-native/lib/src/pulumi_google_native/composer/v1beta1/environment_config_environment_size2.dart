/// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
enum EnvironmentConfigEnvironmentSize2 {
  environmentSizeUnspecified("ENVIRONMENT_SIZE_UNSPECIFIED"),
  environmentSizeSmall("ENVIRONMENT_SIZE_SMALL"),
  environmentSizeMedium("ENVIRONMENT_SIZE_MEDIUM"),
  environmentSizeLarge("ENVIRONMENT_SIZE_LARGE");

  const EnvironmentConfigEnvironmentSize2(this.value);
  final String value;

  static EnvironmentConfigEnvironmentSize2 fromValue(String value) {
    for (final item in EnvironmentConfigEnvironmentSize2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnvironmentConfigEnvironmentSize2 value: $value');
  }
}
