// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Extended Community Id list properties.
class IpExtendedCommunityIdList {
  /// List of IP Extended Community resource IDs.
  final pulumi.Input<List<String>>? ipExtendedCommunityIds;

  /// Creates a new [IpExtendedCommunityIdList].
  /// [ipExtendedCommunityIds] List of IP Extended Community resource IDs.
  IpExtendedCommunityIdList({this.ipExtendedCommunityIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipExtendedCommunityIds': ?ipExtendedCommunityIds};
  }

  factory IpExtendedCommunityIdList.fromMap(Map<String, dynamic> map) {
    return IpExtendedCommunityIdList(
      ipExtendedCommunityIds: (() {
        final guardedValue = map['ipExtendedCommunityIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
