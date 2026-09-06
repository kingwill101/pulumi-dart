import 'package:pulumi/pulumi.dart' as pulumi;

/// The node type deployed in the node group.
enum NodeKind implements pulumi.PulumiEnum<String> {
  valueShard("Shard");

  const NodeKind(this.wireValue);
  @override
  final String wireValue;

  static NodeKind fromValue(String value) {
    for (final item in NodeKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeKind value: $value');
  }
}
