/// Specify what to do with extra properties when executing a request.
enum ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta {
  unknown("UNKNOWN"),
  include("INCLUDE"),
  ignore("IGNORE"),
  includeWithWarnings("INCLUDE_WITH_WARNINGS"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta(this.value);
  final String value;

  static ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta fromValue(String value) {
    for (final item in ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta value: $value');
  }
}

