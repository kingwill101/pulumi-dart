// ignore_for_file: unused_element, unnecessary_cast

import 'app_service_logs_application_logs_azure_blob_storage.dart';

class AppServiceLogsApplicationLogs {
  /// An `azure_blob_storage` block as defined below.
  final AppServiceLogsApplicationLogsAzureBlobStorage? azureBlobStorage;
  /// Log level for filesystem based logging. Supported values are `Error`, `Information`, `Verbose`, `Warning` and `Off`. Defaults to `Off`.
  final String? fileSystemLevel;

  /// Creates a new [AppServiceLogsApplicationLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystemLevel] Log level for filesystem based logging. Supported values are `Error`, `Information`, `Verbose`, `Warning` and `Off`. Defaults to `Off`.
  AppServiceLogsApplicationLogs({
    this.azureBlobStorage,
    this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystemLevel': ?fileSystemLevel,
    };
  }

  factory AppServiceLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return AppServiceLogsApplicationLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : AppServiceLogsApplicationLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystemLevel: map['fileSystemLevel'] == null ? null : map['fileSystemLevel'] as String,
    );
  }
}

