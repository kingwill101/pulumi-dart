import 'package:pulumi/pulumi.dart' as pulumi;

enum ManagedPERequirement implements pulumi.PulumiEnum<String> {
  required("Required"),
  notRequired("NotRequired"),
  notApplicable("NotApplicable");

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
