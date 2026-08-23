/// Role of the replica.
enum ReplicaRole {
  read("Read"),
  readWrite("ReadWrite");

  const ReplicaRole(this.wireValue);
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
