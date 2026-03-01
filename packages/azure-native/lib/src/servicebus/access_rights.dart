enum AccessRights {
  valueManage("Manage"),
  valueSend("Send"),
  valueListen("Listen");

  const AccessRights(this.value);
  final String value;

  static AccessRights fromValue(String value) {
    for (final item in AccessRights.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRights value: $value');
  }
}

