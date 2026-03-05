/// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
enum CommunityActionTypes {
  valuePermit("Permit"),
  valueDeny("Deny");

  const CommunityActionTypes(this.wireValue);
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

