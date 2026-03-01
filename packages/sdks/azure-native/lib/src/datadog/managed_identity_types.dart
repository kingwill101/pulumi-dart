/// Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.
enum ManagedIdentityTypes {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const ManagedIdentityTypes(this.value);
  final String value;

  static ManagedIdentityTypes fromValue(String value) {
    for (final item in ManagedIdentityTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityTypes value: $value');
  }
}

