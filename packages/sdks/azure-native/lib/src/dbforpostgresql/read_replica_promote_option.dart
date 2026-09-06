import 'package:pulumi/pulumi.dart' as pulumi;

/// Data synchronization option to use when processing the operation specified in the promoteMode property. This property is write only.
enum ReadReplicaPromoteOption implements pulumi.PulumiEnum<String> {
  planned("Planned"),
  forced("Forced");

  const ReadReplicaPromoteOption(this.wireValue);
  @override
  final String wireValue;

  static ReadReplicaPromoteOption fromValue(String value) {
    for (final item in ReadReplicaPromoteOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadReplicaPromoteOption value: $value');
  }
}
