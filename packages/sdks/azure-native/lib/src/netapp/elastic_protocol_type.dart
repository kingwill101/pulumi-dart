import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol types for elastic volume
enum ElasticProtocolType implements pulumi.PulumiEnum<String> {
  nFSv3("NFSv3"),
  nFSv4("NFSv4"),
  sMB("SMB");

  const ElasticProtocolType(this.wireValue);
  @override
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
