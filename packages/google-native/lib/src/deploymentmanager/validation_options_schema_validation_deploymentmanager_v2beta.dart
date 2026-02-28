/// Customize how deployment manager will validate the resource against schema errors.
enum ValidationOptionsSchemaValidationDeploymentmanagerV2beta {
  unknown("UNKNOWN"),
  ignore("IGNORE"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsSchemaValidationDeploymentmanagerV2beta(this.value);
  final String value;

  static ValidationOptionsSchemaValidationDeploymentmanagerV2beta fromValue(
      String value) {
    for (final item
        in ValidationOptionsSchemaValidationDeploymentmanagerV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ValidationOptionsSchemaValidationDeploymentmanagerV2beta value: $value');
  }
}
