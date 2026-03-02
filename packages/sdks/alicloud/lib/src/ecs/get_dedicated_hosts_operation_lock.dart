// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostsOperationLock {
  /// The reason why the dedicated host resource is locked.
  final pulumi.Input<String>? lockReason;

  /// Creates a new [GetDedicatedHostsOperationLock].
  /// [lockReason] The reason why the dedicated host resource is locked.
  GetDedicatedHostsOperationLock({
    this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': ?lockReason,
    };
  }

  factory GetDedicatedHostsOperationLock.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsOperationLock(
      lockReason: map['lockReason'] == null ? null : (map['lockReason'] as String).input(),
    );
  }
}

