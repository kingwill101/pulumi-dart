/// The consistency level specifies how many Cassandra servers must respond to a read request before returning data to the client application. Cassandra checks the specified number of Cassandra servers for data to satisfy the read request. Must be one of cassandraSourceReadConsistencyLevels. The default value is 'ONE'. It is case-insensitive.
enum CassandraSourceReadConsistencyLevels {
  valueALL("ALL"),
  valueEACHQUORUM("EACH_QUORUM"),
  valueQUORUM("QUORUM"),
  valueLOCALQUORUM("LOCAL_QUORUM"),
  valueONE("ONE"),
  valueTWO("TWO"),
  valueTHREE("THREE"),
  valueLOCALONE("LOCAL_ONE"),
  valueSERIAL("SERIAL"),
  valueLOCALSERIAL("LOCAL_SERIAL");

  const CassandraSourceReadConsistencyLevels(this.wireValue);
  final String wireValue;

  static CassandraSourceReadConsistencyLevels fromValue(String value) {
    for (final item in CassandraSourceReadConsistencyLevels.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CassandraSourceReadConsistencyLevels value: $value',
    );
  }
}
