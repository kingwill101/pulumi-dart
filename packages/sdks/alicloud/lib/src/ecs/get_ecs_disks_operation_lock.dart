// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsDisksOperationLock {
  /// The reason why the disk was locked.
  final pulumi.Input<String>? lockReason;

  /// Creates a new [GetEcsDisksOperationLock].
  /// [lockReason] The reason why the disk was locked.
  GetEcsDisksOperationLock({
    this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': ?lockReason,
    };
  }

  factory GetEcsDisksOperationLock.fromMap(Map<String, dynamic> map) {
    return GetEcsDisksOperationLock(
      lockReason: map['lockReason'] == null ? null : (map['lockReason'] as String).input(),
    );
  }
}

