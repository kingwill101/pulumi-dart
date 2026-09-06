import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Type of the Nodes value
enum NodesValueType implements pulumi.PulumiEnum<String> {
  all("All");

  const NodesValueType(this.wireValue);
  @override
  final String wireValue;

  static NodesValueType fromValue(String value) {
    for (final item in NodesValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodesValueType value: $value');
  }
}
