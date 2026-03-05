/// How the read-write server's participation in the query pool is controlled.&lt;br/&gt;It can have the following values: &lt;ul&gt;&lt;li&gt;readOnly - indicates that the read-write server is intended not to participate in query operations&lt;/li&gt;&lt;li&gt;all - indicates that the read-write server can participate in query operations&lt;/li&gt;&lt;/ul&gt;Specifying readOnly when capacity is 1 results in error.
enum ConnectionMode {
  valueAll("All"),
  valueReadOnly("ReadOnly");

  const ConnectionMode(this.wireValue);
  final String wireValue;

  static ConnectionMode fromValue(String value) {
    for (final item in ConnectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionMode value: $value');
  }
}

