import 'package:pulumi/pulumi.dart' as pulumi;

/// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
enum CommunityActionTypes implements pulumi.PulumiEnum<String> {
  valuePermit("Permit"),
  valueDeny("Deny");

  const CommunityActionTypes(this.wireValue);
  @override
  final String wireValue;

  static CommunityActionTypes fromValue(String value) {
    for (final item in CommunityActionTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommunityActionTypes value: $value');
  }
}
