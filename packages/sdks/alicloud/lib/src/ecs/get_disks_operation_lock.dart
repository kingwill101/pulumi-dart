// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDisksOperationLock {
  final pulumi.Input<String>? lockReason;

  /// Creates a new [GetDisksOperationLock].
  /// [lockReason] Optional.
  GetDisksOperationLock({this.lockReason});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'lockReason': ?lockReason};
  }

  factory GetDisksOperationLock.fromMap(Map<String, dynamic> map) {
    return GetDisksOperationLock(
      lockReason: (() {
        final guardedValue = map['lockReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
