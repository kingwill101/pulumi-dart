/// Protocol types for elastic volume
enum ElasticProtocolType {
  nFSv3("NFSv3"),
  nFSv4("NFSv4"),
  sMB("SMB");

  const ElasticProtocolType(this.wireValue);
  final String wireValue;

  static ElasticProtocolType fromValue(String value) {
    for (final item in ElasticProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticProtocolType value: $value');
  }
}

