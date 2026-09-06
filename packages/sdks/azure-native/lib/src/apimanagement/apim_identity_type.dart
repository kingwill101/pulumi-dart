import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
enum ApimIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned, UserAssigned"),
  valueNone("None");

  const ApimIdentityType(this.wireValue);
  @override
  final String wireValue;

  static ApimIdentityType fromValue(String value) {
    for (final item in ApimIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApimIdentityType value: $value');
  }
}
