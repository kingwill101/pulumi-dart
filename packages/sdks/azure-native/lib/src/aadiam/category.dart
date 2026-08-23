/// Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
enum Category {
  valueAuditLogs("AuditLogs"),
  valueSignInLogs("SignInLogs");

  const Category(this.wireValue);
  final String wireValue;

  static Category fromValue(String value) {
    for (final item in Category.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Category value: $value');
  }
}
