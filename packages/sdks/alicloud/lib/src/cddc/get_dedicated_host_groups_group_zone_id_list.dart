// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostGroupsGroupZoneIdList {
  /// The ZoneIDList of the Dedicated Host Group.
  final pulumi.Input<List<String>> zoneIdLists;

  /// Creates a new [GetDedicatedHostGroupsGroupZoneIdList].
  /// [zoneIdLists] The ZoneIDList of the Dedicated Host Group.
  GetDedicatedHostGroupsGroupZoneIdList({
    required this.zoneIdLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneIdLists': zoneIdLists,
    };
  }

  factory GetDedicatedHostGroupsGroupZoneIdList.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupsGroupZoneIdList(
      zoneIdLists: ((map['zoneIdLists'] as List).cast<String>()).input(),
    );
  }
}

