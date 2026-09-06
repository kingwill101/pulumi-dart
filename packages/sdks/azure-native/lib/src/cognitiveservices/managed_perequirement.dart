import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how private endpoints are used with this connection: 'Required', 'NotRequired', or 'NotApplicable'.
enum ManagedPERequirement implements pulumi.PulumiEnum<String> {
  valueRequired("Required"),
  valueNotRequired("NotRequired"),
  valueNotApplicable("NotApplicable");

  const ManagedPERequirement(this.wireValue);
  @override
  final String wireValue;

  static ManagedPERequirement fromValue(String value) {
    for (final item in ManagedPERequirement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedPERequirement value: $value');
  }
}
