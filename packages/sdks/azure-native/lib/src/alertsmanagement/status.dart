import 'package:pulumi/pulumi.dart' as pulumi;

/// The issue status
enum Status implements pulumi.PulumiEnum<String> {
  new_("New"),
  inProgress("InProgress"),
  mitigated("Mitigated"),
  closed("Closed"),
  canceled("Canceled");

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
