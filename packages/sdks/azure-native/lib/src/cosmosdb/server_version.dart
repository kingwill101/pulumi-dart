/// Describes the version of the MongoDB account.
enum ServerVersion {
  value32("3.2"),
  value36("3.6"),
  value40("4.0"),
  value42("4.2"),
  value50("5.0"),
  value60("6.0"),
  value70("7.0");

  const ServerVersion(this.wireValue);
  final String wireValue;

  static ServerVersion fromValue(String value) {
    for (final item in ServerVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerVersion value: $value');
  }
}

