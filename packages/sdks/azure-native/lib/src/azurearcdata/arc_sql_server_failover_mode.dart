/// Property to set the failover mode of the availability group replica
enum ArcSqlServerFailoverMode {
  valueAUTOMATIC("AUTOMATIC"),
  valueMANUAL("MANUAL"),
  valueEXTERNAL("EXTERNAL"),
  valueNONE("NONE");

  const ArcSqlServerFailoverMode(this.wireValue);
  final String wireValue;

  static ArcSqlServerFailoverMode fromValue(String value) {
    for (final item in ArcSqlServerFailoverMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArcSqlServerFailoverMode value: $value');
  }
}
