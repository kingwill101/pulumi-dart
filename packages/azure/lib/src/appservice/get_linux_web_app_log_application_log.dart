// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_log_application_log_azure_blob_storage.dart';

class GetLinuxWebAppLogApplicationLog {
  /// A `azure_blob_storage` block as defined above.
  final List<GetLinuxWebAppLogApplicationLogAzureBlobStorage> azureBlobStorages;
  /// The logging level.
  final String fileSystemLevel;

  /// Creates a new [GetLinuxWebAppLogApplicationLog].
  /// [azureBlobStorages] A `azure_blob_storage` block as defined above.
  /// [fileSystemLevel] The logging level.
  GetLinuxWebAppLogApplicationLog({
    required this.azureBlobStorages,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorages': pulumi.Input.encodeList<GetLinuxWebAppLogApplicationLogAzureBlobStorage, Map<String, dynamic>>(azureBlobStorages, (value) => value.toMap()),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory GetLinuxWebAppLogApplicationLog.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppLogApplicationLog(
      azureBlobStorages: pulumi.Input.decodeList<GetLinuxWebAppLogApplicationLogAzureBlobStorage>(map['azureBlobStorages'], (value) => GetLinuxWebAppLogApplicationLogAzureBlobStorage.fromMap((value as Map).cast<String, dynamic>())),
      fileSystemLevel: map['fileSystemLevel'] as String,
    );
  }
}

