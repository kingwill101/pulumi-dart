import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the status of private endpoints for this connection: 'Inactive', 'Active', or 'NotApplicable'.
enum ManagedPEStatus implements pulumi.PulumiEnum<String> {
  valueInactive("Inactive"),
  valueActive("Active"),
  valueNotApplicable("NotApplicable");

  const ManagedPEStatus(this.wireValue);
  @override
  final String wireValue;

  static ManagedPEStatus fromValue(String value) {
    for (final item in ManagedPEStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedPEStatus value: $value');
  }
}
