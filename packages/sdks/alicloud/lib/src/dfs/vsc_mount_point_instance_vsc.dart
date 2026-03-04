// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VscMountPointInstanceVsc {
  /// VSC Channel primary key representation, used to retrieve the specified VSC Channel.
  final pulumi.Input<String>? vscId;

  /// VSC Mount status.
  final pulumi.Input<String>? vscStatus;

  /// The VSC type.
  final pulumi.Input<String>? vscType;

  /// Creates a new [VscMountPointInstanceVsc].
  /// [vscId] VSC Channel primary key representation, used to retrieve the specified VSC Channel.
  /// [vscStatus] VSC Mount status.
  /// [vscType] The VSC type.
  VscMountPointInstanceVsc({this.vscId, this.vscStatus, this.vscType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vscId': ?vscId,
      'vscStatus': ?vscStatus,
      'vscType': ?vscType,
    };
  }

  factory VscMountPointInstanceVsc.fromMap(Map<String, dynamic> map) {
    return VscMountPointInstanceVsc(
      vscId: (() {
        final guardedValue = map['vscId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vscStatus: (() {
        final guardedValue = map['vscStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vscType: (() {
        final guardedValue = map['vscType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
