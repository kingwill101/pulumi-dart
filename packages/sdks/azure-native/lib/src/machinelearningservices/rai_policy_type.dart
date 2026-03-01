/// Content Filters policy type.
enum RaiPolicyType {
  valueUserManaged("UserManaged"),
  valueSystemManaged("SystemManaged");

  const RaiPolicyType(this.value);
  final String value;

  static RaiPolicyType fromValue(String value) {
    for (final item in RaiPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiPolicyType value: $value');
  }
}

