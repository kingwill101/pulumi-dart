// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsDisksDiskOperationLock {
  /// The reason why the disk was locked.
  final pulumi.Input<String> lockReason;

  /// Creates a new [GetEcsDisksDiskOperationLock].
  /// [lockReason] The reason why the disk was locked.
  GetEcsDisksDiskOperationLock({required this.lockReason});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'lockReason': lockReason};
  }

  factory GetEcsDisksDiskOperationLock.fromMap(Map<String, dynamic> map) {
    return GetEcsDisksDiskOperationLock(
      lockReason: pulumi.Input.fromValue(map['lockReason'] as String),
    );
  }
}
