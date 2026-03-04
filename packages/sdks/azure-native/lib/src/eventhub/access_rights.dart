enum AccessRights {
  valueManage("Manage"),
  valueSend("Send"),
  valueListen("Listen");

  const AccessRights(this.wireValue);
  final String wireValue;

  static AccessRights fromValue(String value) {
    for (final item in AccessRights.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRights value: $value');
  }
}
