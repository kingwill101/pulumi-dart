// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for the storage account.
class StorageAccountDetailsResponse {
  /// Account Type of the data to be transferred.
  /// Expected value is 'StorageAccount'.
  final pulumi.Input<String> dataAccountType;
  /// Storage Account Resource Id.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [StorageAccountDetailsResponse].
  /// [dataAccountType] Account Type of the data to be transferred.
  /// [storageAccountId] Storage Account Resource Id.
  StorageAccountDetailsResponse({
    required this.dataAccountType,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccountType': dataAccountType,
      'storageAccountId': storageAccountId,
    };
  }

  factory StorageAccountDetailsResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountDetailsResponse(
      dataAccountType: (map['dataAccountType'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
    );
  }
}

