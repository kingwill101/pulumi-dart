// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parent resource information.
class ManagedByInfo {
  /// Resource ID of the resource managing the volume, this is a restricted field and can only be set for internal use.
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [ManagedByInfo].
  /// [resourceId] Resource ID of the resource managing the volume, this is a restricted field and can only be set for internal use.
  const ManagedByInfo({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ManagedByInfo.fromMap(Map<String, dynamic> map) {
    return ManagedByInfo(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
