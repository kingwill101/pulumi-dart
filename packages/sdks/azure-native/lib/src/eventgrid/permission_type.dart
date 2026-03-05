/// The allowed permission.
enum PermissionType {
  valuePublisher("Publisher"),
  valueSubscriber("Subscriber");

  const PermissionType(this.wireValue);
  final String wireValue;

  static PermissionType fromValue(String value) {
    for (final item in PermissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PermissionType value: $value');
  }
}

