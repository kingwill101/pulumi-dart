// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDisksDiskOperationLock {
  final pulumi.Input<String> lockReason;

  /// Creates a new [GetDisksDiskOperationLock].
  /// [lockReason] Required.
  const GetDisksDiskOperationLock({
    required this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': lockReason,
    };
  }

  factory GetDisksDiskOperationLock.fromMap(Map<String, dynamic> map) {
    return GetDisksDiskOperationLock(
      lockReason: pulumi.Input.fromValue(map['lockReason'] as String),
    );
  }
}

