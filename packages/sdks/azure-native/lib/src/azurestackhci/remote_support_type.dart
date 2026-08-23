/// Remote support type.
enum RemoteSupportType {
  enable("Enable"),
  revoke("Revoke");

  const RemoteSupportType(this.wireValue);
  final String wireValue;

  static RemoteSupportType fromValue(String value) {
    for (final item in RemoteSupportType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteSupportType value: $value');
  }
}
