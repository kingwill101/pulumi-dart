/// The log type that this config enables.
enum AuditLogConfigLogTypeLookerV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeLookerV1(this.value);
  final String value;

  static AuditLogConfigLogTypeLookerV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeLookerV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeLookerV1 value: $value');
  }
}
