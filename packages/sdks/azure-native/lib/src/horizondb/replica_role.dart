import 'package:pulumi/pulumi.dart' as pulumi;

/// Role of the replica.
enum ReplicaRole implements pulumi.PulumiEnum<String> {
  read("Read"),
  readWrite("ReadWrite");

  const ReplicaRole(this.wireValue);
  @override
  final String wireValue;

  static ReplicaRole fromValue(String value) {
    for (final item in ReplicaRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicaRole value: $value');
  }
}
