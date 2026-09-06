import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of monitoring.
enum Status implements pulumi.PulumiEnum<String> {
  valueInProgress("InProgress"),
  valueActive("Active"),
  valueFailed("Failed"),
  valueDeleting("Deleting");

  const Status(this.wireValue);
  @override
  final String wireValue;

  static Status fromValue(String value) {
    for (final item in Status.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Status value: $value');
  }
}
