// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for the storage account.
class StorageAccountDetails {
  /// Account Type of the data to be transferred.
  /// Expected value is 'StorageAccount'.
  final pulumi.Input<String> dataAccountType;
  /// Password for all the shares to be created on the device. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  final pulumi.Input<String?>? sharePassword;
  /// Storage Account Resource Id.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [StorageAccountDetails].
  /// [dataAccountType] Account Type of the data to be transferred.
  /// [sharePassword] Password for all the shares to be created on the device. Should not be passed for TransferType:ExportFromAzure jobs. If this is not passed, the service will generate password itself. This will not be returned in Get Call. Password Requirements :  Password must be minimum of 12 and maximum of 64 characters. Password must have at least one uppercase alphabet, one number and one special character. Password cannot have the following characters : IilLoO0 Password can have only alphabets, numbers and these characters : @#\-$%^!+=;:_()]+
  /// [storageAccountId] Storage Account Resource Id.
  StorageAccountDetails({
    pulumi.Input<String>? dataAccountType,
    this.sharePassword,
    required this.storageAccountId,
  }) : dataAccountType = dataAccountType ?? pulumi.Input.fromValue('StorageAccount');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccountType': dataAccountType,
      'sharePassword': ?sharePassword,
      'storageAccountId': storageAccountId,
    };
  }

  factory StorageAccountDetails.fromMap(Map<String, dynamic> map) {
    return StorageAccountDetails(
      dataAccountType: pulumi.Input.fromValue(map['dataAccountType'] as String),
      sharePassword: (() { final guardedValue = map['sharePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}
