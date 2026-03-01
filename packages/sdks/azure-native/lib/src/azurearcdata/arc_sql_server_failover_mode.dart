/// Property to set the failover mode of the availability group replica
enum ArcSqlServerFailoverMode {
  valueAUTOMATIC("AUTOMATIC"),
  valueMANUAL("MANUAL"),
  valueEXTERNAL("EXTERNAL"),
  valueNONE("NONE");

  const ArcSqlServerFailoverMode(this.value);
  final String value;

  static ArcSqlServerFailoverMode fromValue(String value) {
    for (final item in ArcSqlServerFailoverMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArcSqlServerFailoverMode value: $value');
  }
}

