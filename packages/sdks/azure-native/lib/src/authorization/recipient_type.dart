import 'package:pulumi/pulumi.dart' as pulumi;

/// The recipient type.
enum RecipientType implements pulumi.PulumiEnum<String> {
  requestor("Requestor"),
  approver("Approver"),
  admin("Admin");

  const RecipientType(this.wireValue);
  @override
  final String wireValue;

  static RecipientType fromValue(String value) {
    for (final item in RecipientType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecipientType value: $value');
  }
}
