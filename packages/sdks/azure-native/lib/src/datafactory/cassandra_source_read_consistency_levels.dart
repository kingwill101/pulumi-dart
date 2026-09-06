import 'package:pulumi/pulumi.dart' as pulumi;

/// The consistency level specifies how many Cassandra servers must respond to a read request before returning data to the client application. Cassandra checks the specified number of Cassandra servers for data to satisfy the read request. Must be one of cassandraSourceReadConsistencyLevels. The default value is 'ONE'. It is case-insensitive.
enum CassandraSourceReadConsistencyLevels implements pulumi.PulumiEnum<String> {
  aLL("ALL"),
  eACHQUORUM("EACH_QUORUM"),
  qUORUM("QUORUM"),
  lOCALQUORUM("LOCAL_QUORUM"),
  oNE("ONE"),
  tWO("TWO"),
  tHREE("THREE"),
  lOCALONE("LOCAL_ONE"),
  sERIAL("SERIAL"),
  lOCALSERIAL("LOCAL_SERIAL");

  const CassandraSourceReadConsistencyLevels(this.wireValue);
  @override
  final String wireValue;

  static CassandraSourceReadConsistencyLevels fromValue(String value) {
    for (final item in CassandraSourceReadConsistencyLevels.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CassandraSourceReadConsistencyLevels value: $value');
  }
}
