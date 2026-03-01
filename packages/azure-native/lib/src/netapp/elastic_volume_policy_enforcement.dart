/// The property to decide policy is enforced or not on the volume
enum ElasticVolumePolicyEnforcement {
  enforced("Enforced"),
  notEnforced("NotEnforced");

  const ElasticVolumePolicyEnforcement(this.value);
  final String value;

  static ElasticVolumePolicyEnforcement fromValue(String value) {
    for (final item in ElasticVolumePolicyEnforcement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticVolumePolicyEnforcement value: $value');
  }
}

