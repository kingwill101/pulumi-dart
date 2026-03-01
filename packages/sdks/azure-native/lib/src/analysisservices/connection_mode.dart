/// How the read-write server's participation in the query pool is controlled.<br/>It can have the following values: <ul><li>readOnly - indicates that the read-write server is intended not to participate in query operations</li><li>all - indicates that the read-write server can participate in query operations</li></ul>Specifying readOnly when capacity is 1 results in error.
enum ConnectionMode {
  valueAll("All"),
  valueReadOnly("ReadOnly");

  const ConnectionMode(this.value);
  final String value;

  static ConnectionMode fromValue(String value) {
    for (final item in ConnectionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionMode value: $value');
  }
}

