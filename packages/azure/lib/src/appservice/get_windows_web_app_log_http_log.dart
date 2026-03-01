// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_log_http_log_azure_blob_storage.dart';
import 'get_windows_web_app_log_http_log_file_system.dart';

class GetWindowsWebAppLogHttpLog {
  /// A `azure_blob_storage` block as defined above.
  final List<GetWindowsWebAppLogHttpLogAzureBlobStorage> azureBlobStorages;
  /// A `file_system` block as defined above.
  final List<GetWindowsWebAppLogHttpLogFileSystem> fileSystems;

  /// Creates a new [GetWindowsWebAppLogHttpLog].
  /// [azureBlobStorages] A `azure_blob_storage` block as defined above.
  /// [fileSystems] A `file_system` block as defined above.
  GetWindowsWebAppLogHttpLog({
    required this.azureBlobStorages,
    required this.fileSystems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorages': pulumi.Input.encodeList<GetWindowsWebAppLogHttpLogAzureBlobStorage, Map<String, dynamic>>(azureBlobStorages, (value) => value.toMap()),
      'fileSystems': pulumi.Input.encodeList<GetWindowsWebAppLogHttpLogFileSystem, Map<String, dynamic>>(fileSystems, (value) => value.toMap()),
    };
  }

  factory GetWindowsWebAppLogHttpLog.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppLogHttpLog(
      azureBlobStorages: pulumi.Input.decodeList<GetWindowsWebAppLogHttpLogAzureBlobStorage>(map['azureBlobStorages'], (value) => GetWindowsWebAppLogHttpLogAzureBlobStorage.fromMap((value as Map).cast<String, dynamic>())),
      fileSystems: pulumi.Input.decodeList<GetWindowsWebAppLogHttpLogFileSystem>(map['fileSystems'], (value) => GetWindowsWebAppLogHttpLogFileSystem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

