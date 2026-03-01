/// Indicates the type of database account. This can only be set at database account creation.
enum DatabaseAccountKind {
  valueGlobalDocumentDB("GlobalDocumentDB"),
  valueMongoDB("MongoDB"),
  valueParse("Parse");

  const DatabaseAccountKind(this.value);
  final String value;

  static DatabaseAccountKind fromValue(String value) {
    for (final item in DatabaseAccountKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseAccountKind value: $value');
  }
}

