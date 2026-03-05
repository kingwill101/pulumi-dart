// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneUserInfo {
  /// The list of the region IDs.
  final pulumi.Input<List<String>>? regionIds;
  /// The user ID belonging to the region is used for cross-account synchronization scenarios.
  final pulumi.Input<String>? userId;

  /// Creates a new [ZoneUserInfo].
  /// [regionIds] The list of the region IDs.
  /// [userId] The user ID belonging to the region is used for cross-account synchronization scenarios.
  ZoneUserInfo({
    this.regionIds,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionIds': ?regionIds,
      'userId': ?userId,
    };
  }

  factory ZoneUserInfo.fromMap(Map<String, dynamic> map) {
    return ZoneUserInfo(
      regionIds: (() { final guardedValue = map['regionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

