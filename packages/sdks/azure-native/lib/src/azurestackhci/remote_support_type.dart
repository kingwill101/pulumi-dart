/// Remote support type.
enum RemoteSupportType {
  enable("Enable"),
  revoke("Revoke");

  const RemoteSupportType(this.value);
  final String value;

  static RemoteSupportType fromValue(String value) {
    for (final item in RemoteSupportType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteSupportType value: $value');
  }
}

