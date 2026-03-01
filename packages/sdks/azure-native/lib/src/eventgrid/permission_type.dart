/// The allowed permission.
enum PermissionType {
  valuePublisher("Publisher"),
  valueSubscriber("Subscriber");

  const PermissionType(this.value);
  final String value;

  static PermissionType fromValue(String value) {
    for (final item in PermissionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PermissionType value: $value');
  }
}

