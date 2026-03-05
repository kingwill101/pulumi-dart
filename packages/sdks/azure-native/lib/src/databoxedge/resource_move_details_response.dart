// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fields for tracking resource move
class ResourceMoveDetailsResponse {
  /// Denotes whether move operation is in progress
  final pulumi.Input<String>? operationInProgress;
  /// Denotes the timeout of the operation to finish
  final pulumi.Input<String>? operationInProgressLockTimeoutInUTC;

  /// Creates a new [ResourceMoveDetailsResponse].
  /// [operationInProgress] Denotes whether move operation is in progress
  /// [operationInProgressLockTimeoutInUTC] Denotes the timeout of the operation to finish
  ResourceMoveDetailsResponse({
    this.operationInProgress,
    this.operationInProgressLockTimeoutInUTC,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationInProgress': ?operationInProgress,
      'operationInProgressLockTimeoutInUTC': ?operationInProgressLockTimeoutInUTC,
    };
  }

  factory ResourceMoveDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceMoveDetailsResponse(
      operationInProgress: (() { final guardedValue = map['operationInProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationInProgressLockTimeoutInUTC: (() { final guardedValue = map['operationInProgressLockTimeoutInUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

