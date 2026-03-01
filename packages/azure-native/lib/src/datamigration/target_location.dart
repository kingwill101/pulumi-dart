// ignore_for_file: unused_element, unnecessary_cast


/// Target Location details for optional copy of backups
class TargetLocation {
  /// Storage Account Key.
  final String? accountKey;
  /// Resource Id of the storage account copying backups.
  final String? storageAccountResourceId;

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
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
    );
  }
}

