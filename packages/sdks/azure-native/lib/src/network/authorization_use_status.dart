/// The authorization use status.
enum AuthorizationUseStatus {
  valueAvailable("Available"),
  valueInUse("InUse");

  const AuthorizationUseStatus(this.wireValue);
  final String wireValue;

  static AuthorizationUseStatus fromValue(String value) {
    for (final item in AuthorizationUseStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationUseStatus value: $value');
  }
}

