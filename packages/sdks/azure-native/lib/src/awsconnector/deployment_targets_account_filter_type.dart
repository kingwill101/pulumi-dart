/// The filter type you want to apply on organizational units and accounts.
enum DeploymentTargetsAccountFilterType {
  dIFFERENCE("DIFFERENCE"),
  iNTERSECTION("INTERSECTION"),
  nONE("NONE"),
  uNION("UNION");

  const DeploymentTargetsAccountFilterType(this.wireValue);
  final String wireValue;

  static DeploymentTargetsAccountFilterType fromValue(String value) {
    for (final item in DeploymentTargetsAccountFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DeploymentTargetsAccountFilterType value: $value',
    );
  }
}
