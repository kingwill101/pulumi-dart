// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservedInstanceOperationLock {
  /// The reason why the reserved instance was locked.
  final pulumi.Input<String>? lockReason;

  /// Creates a new [ReservedInstanceOperationLock].
  /// [lockReason] The reason why the reserved instance was locked.
  ReservedInstanceOperationLock({
    this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': ?lockReason,
    };
  }

  factory ReservedInstanceOperationLock.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceOperationLock(
      lockReason: map['lockReason'] == null ? null : (map['lockReason'] as String).input(),
    );
  }
}

