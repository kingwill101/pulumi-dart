/// The log type that this config enables.
enum AuditLogConfigLogType26 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType26(this.value);
  final String value;

  static AuditLogConfigLogType26 fromValue(String value) {
    for (final item in AuditLogConfigLogType26.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType26 value: $value');
  }
}
