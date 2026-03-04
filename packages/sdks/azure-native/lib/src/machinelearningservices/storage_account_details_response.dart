// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_created_storage_account_response.dart';

/// Details of storage account to be used for the Registry
class StorageAccountDetailsResponse {
  /// Details of system created storage account to be used for the registry
  final pulumi.Input<SystemCreatedStorageAccountResponse>?
  systemCreatedStorageAccount;

  /// Creates a new [StorageAccountDetailsResponse].
  /// [systemCreatedStorageAccount] Details of system created storage account to be used for the registry
  StorageAccountDetailsResponse({this.systemCreatedStorageAccount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemCreatedStorageAccount':
          ?pulumi.Input.mapOptionalInputValue<
            SystemCreatedStorageAccountResponse,
            Map<String, dynamic>
          >(systemCreatedStorageAccount, (value) => value.toMap()),
    };
  }

  factory StorageAccountDetailsResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountDetailsResponse(
      systemCreatedStorageAccount: (() {
        final guardedValue = map['systemCreatedStorageAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SystemCreatedStorageAccountResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
