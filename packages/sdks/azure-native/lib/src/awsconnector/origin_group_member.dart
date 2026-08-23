// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OriginGroupMember
class OriginGroupMember {
  /// The ID for an origin in an origin group.
  final pulumi.Input<String>? originId;

  /// Creates a new [OriginGroupMember].
  /// [originId] The ID for an origin in an origin group.
  const OriginGroupMember({
    this.originId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originId': ?originId,
    };
  }

  factory OriginGroupMember.fromMap(Map<String, dynamic> map) {
    return OriginGroupMember(
      originId: (() { final guardedValue = map['originId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
