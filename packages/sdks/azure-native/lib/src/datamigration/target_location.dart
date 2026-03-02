// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target Location details for optional copy of backups
class TargetLocation {
  /// Storage Account Key.
  final pulumi.Input<String>? accountKey;
  /// Resource Id of the storage account copying backups.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [TargetLocation].
  /// [accountKey] Storage Account Key.
  /// [storageAccountResourceId] Resource Id of the storage account copying backups.
  TargetLocation({
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
      accountKey: map['accountKey'] == null ? null : (map['accountKey'] as String).input(),
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : (map['storageAccountResourceId'] as String).input(),
    );
  }
}

