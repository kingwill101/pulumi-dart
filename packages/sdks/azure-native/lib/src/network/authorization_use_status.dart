/// The authorization use status.
enum AuthorizationUseStatus {
  valueAvailable("Available"),
  valueInUse("InUse");

  const AuthorizationUseStatus(this.value);
  final String value;

  static AuthorizationUseStatus fromValue(String value) {
    for (final item in AuthorizationUseStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationUseStatus value: $value');
  }
}

