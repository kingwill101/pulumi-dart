import 'package:pulumi/pulumi.dart' as pulumi;

/// Access mode on the association.
enum AssociationAccessMode implements pulumi.PulumiEnum<String> {
  valueLearning("Learning"),
  valueEnforced("Enforced"),
  valueAudit("Audit");

  const AssociationAccessMode(this.wireValue);
  @override
  final String wireValue;

  static AssociationAccessMode fromValue(String value) {
    for (final item in AssociationAccessMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssociationAccessMode value: $value');
  }
}
