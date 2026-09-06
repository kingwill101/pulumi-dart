// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target Location details for optional copy of backups
class TargetLocation {
  /// Storage Account Key.
  final pulumi.Input<String?>? accountKey;
  /// Resource Id of the storage account copying backups.
  final pulumi.Input<String?>? storageAccountResourceId;

  /// Creates a new [TargetLocation].
  /// [accountKey] Storage Account Key.
  /// [storageAccountResourceId] Resource Id of the storage account copying backups.
  const TargetLocation({
    this.accountKey,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory TargetLocation.fromMap(Map<String, dynamic> map) {
    return TargetLocation(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
