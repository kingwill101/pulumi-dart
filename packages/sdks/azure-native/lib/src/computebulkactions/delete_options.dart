import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify what happens to the network interface when the VM is deleted
enum DeleteOptions implements pulumi.PulumiEnum<String> {
  delete("Delete"),
  detach("Detach");

  const DeleteOptions(this.wireValue);
  @override
  final String wireValue;

  static DeleteOptions fromValue(String value) {
    for (final item in DeleteOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteOptions value: $value');
  }
}
