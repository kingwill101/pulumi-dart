/// Content Filters policy type.
enum RaiPolicyType {
  valueUserManaged("UserManaged"),
  valueSystemManaged("SystemManaged");

  const RaiPolicyType(this.wireValue);
  final String wireValue;

  static RaiPolicyType fromValue(String value) {
    for (final item in RaiPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiPolicyType value: $value');
  }
}

