// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCapacityPoolVolumeGroupIdForLdapUser.
class GetCapacityPoolVolumeGroupIdForLdapUserResult {
  /// Group Id list
  final List<String>? groupIdsForLdapUser;

  /// Creates a new [GetCapacityPoolVolumeGroupIdForLdapUserResult].
  /// [groupIdsForLdapUser] Group Id list
  GetCapacityPoolVolumeGroupIdForLdapUserResult({this.groupIdsForLdapUser});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupIdsForLdapUser': ?groupIdsForLdapUser};
  }

  factory GetCapacityPoolVolumeGroupIdForLdapUserResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCapacityPoolVolumeGroupIdForLdapUserResult(
      groupIdsForLdapUser: (() {
        final guardedValue = map['groupIdsForLdapUser'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
