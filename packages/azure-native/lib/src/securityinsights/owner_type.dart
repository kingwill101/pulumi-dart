/// The type of the owner the incident is assigned to.
enum OwnerType {
  valueUnknown("Unknown"),
  valueUser("User"),
  valueGroup("Group");

  const OwnerType(this.value);
  final String value;

  static OwnerType fromValue(String value) {
    for (final item in OwnerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwnerType value: $value');
  }
}

