import 'package:pulumi/pulumi.dart' as pulumi;

/// Property to set the failover mode of the availability group replica
enum ArcSqlServerFailoverMode implements pulumi.PulumiEnum<String> {
  valueAUTOMATIC("AUTOMATIC"),
  valueMANUAL("MANUAL"),
  valueEXTERNAL("EXTERNAL"),
  valueNONE("NONE");

  const ArcSqlServerFailoverMode(this.wireValue);
  @override
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
