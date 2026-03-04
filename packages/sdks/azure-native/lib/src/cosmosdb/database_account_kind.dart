/// Indicates the type of database account. This can only be set at database account creation.
enum DatabaseAccountKind {
  valueGlobalDocumentDB("GlobalDocumentDB"),
  valueMongoDB("MongoDB"),
  valueParse("Parse");

  const DatabaseAccountKind(this.wireValue);
  final String wireValue;

  static DatabaseAccountKind fromValue(String value) {
    for (final item in DatabaseAccountKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseAccountKind value: $value');
  }
}
