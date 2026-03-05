/// Allows clients to access the volume with the NFSv3 protocol. Enable only for NFSv3 type volumes
enum ElasticNfsv3Access {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticNfsv3Access(this.wireValue);
  final String wireValue;

  static ElasticNfsv3Access fromValue(String value) {
    for (final item in ElasticNfsv3Access.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticNfsv3Access value: $value');
  }
}

