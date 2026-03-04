// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OriginGroupMember
class OriginGroupMemberResponse {
  /// The ID for an origin in an origin group.
  final pulumi.Input<String>? originId;

  /// Creates a new [OriginGroupMemberResponse].
  /// [originId] The ID for an origin in an origin group.
  OriginGroupMemberResponse({this.originId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'originId': ?originId};
  }

  factory OriginGroupMemberResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupMemberResponse(
      originId: (() {
        final guardedValue = map['originId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
