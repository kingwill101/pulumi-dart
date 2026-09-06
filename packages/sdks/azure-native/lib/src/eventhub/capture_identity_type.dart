import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Azure Active Directory Managed Identity.
enum CaptureIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const CaptureIdentityType(this.wireValue);
  @override
  final String wireValue;

  static CaptureIdentityType fromValue(String value) {
    for (final item in CaptureIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CaptureIdentityType value: $value');
  }
}
