// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target Location details for optional copy of backups
class TargetLocationResponse {
  /// Storage Account Key.
  final pulumi.Input<String>? accountKey;
  /// Resource Id of the storage account copying backups.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [TargetLocationResponse].
  /// [accountKey] Storage Account Key.
  /// [storageAccountResourceId] Resource Id of the storage account copying backups.
  TargetLocationResponse({
    this.accountKey,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory TargetLocationResponse.fromMap(Map<String, dynamic> map) {
    return TargetLocationResponse(
      accountKey: map['accountKey'] == null ? null : (map['accountKey'] as String).input(),
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : (map['storageAccountResourceId'] as String).input(),
    );
  }
}

