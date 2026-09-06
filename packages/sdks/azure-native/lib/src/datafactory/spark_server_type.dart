import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of Spark server.
enum SparkServerType implements pulumi.PulumiEnum<String> {
  sharkServer("SharkServer"),
  sharkServer2("SharkServer2"),
  sparkThriftServer("SparkThriftServer");

  const SparkServerType(this.wireValue);
  @override
  final String wireValue;

  static SparkServerType fromValue(String value) {
    for (final item in SparkServerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkServerType value: $value');
  }
}
