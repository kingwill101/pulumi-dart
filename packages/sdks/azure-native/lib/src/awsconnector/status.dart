import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the account in the organization.
enum Status implements pulumi.PulumiEnum<String> {
  aCTIVE("ACTIVE"),
  pENDINGCLOSURE("PENDING_CLOSURE"),
  sUSPENDED("SUSPENDED");

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
