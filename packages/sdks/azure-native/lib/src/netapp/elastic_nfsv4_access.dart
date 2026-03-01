/// Allows clients to access the volume with at least NFSv4.1 protocol.
enum ElasticNfsv4Access {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticNfsv4Access(this.value);
  final String value;

  static ElasticNfsv4Access fromValue(String value) {
    for (final item in ElasticNfsv4Access.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticNfsv4Access value: $value');
  }
}

