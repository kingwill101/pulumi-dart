import 'package:pulumi/pulumi.dart' as pulumi;

/// ReclaimPolicy defines what happens to the backend storage when StoragePool is deleted
enum ReclaimPolicy implements pulumi.PulumiEnum<String> {
  delete("Delete"),
  retain("Retain");

  const ReclaimPolicy(this.wireValue);
  @override
  final String wireValue;

  static ReclaimPolicy fromValue(String value) {
    for (final item in ReclaimPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReclaimPolicy value: $value');
  }
}
