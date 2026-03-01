// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_metadata.dart';

/// {@template pulumi_securityinsights_file_import_args_doc}
/// The set of arguments for FileImport.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_file_import_args_doc}
class FileImportArgs {
  /// The content type of this file.
  final pulumi.Input<String> contentType;
  /// File import ID
  final pulumi.Input<String>? fileImportId;
  /// Represents the imported file.
  final pulumi.Input<FileMetadata> importFile;
  /// Describes how to ingest the records in the file.
  final pulumi.Input<String> ingestionMode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The source for the data in the file.
  final pulumi.Input<String> source;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FileImportArgs].
  /// [contentType] The content type of this file.
  /// [fileImportId] File import ID
  /// [importFile] Represents the imported file.
  /// [ingestionMode] Describes how to ingest the records in the file.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [source] The source for the data in the file.
  /// [workspaceName] The name of the workspace.
  FileImportArgs({
    required String contentType,
    String? fileImportId,
    required FileMetadata importFile,
    required String ingestionMode,
    required String resourceGroupName,
    required String source,
    required String workspaceName,
  }) :
      contentType = pulumi.Input.asInput<String>(contentType),
      fileImportId = pulumi.Input.asOptionalInput<String>(fileImportId),
      importFile = pulumi.Input.asInput<FileMetadata>(importFile),
      ingestionMode = pulumi.Input.asInput<String>(ingestionMode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asInput<String>(source),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'fileImportId': ?fileImportId,
      'importFile': pulumi.Input.mapInputValue<FileMetadata, Map<String, dynamic>>(importFile, (value) => value.toMap()),
      'ingestionMode': ingestionMode,
      'resourceGroupName': resourceGroupName,
      'source': source,
      'workspaceName': workspaceName,
    };
  }

  factory FileImportArgs.fromMap(Map<String, dynamic> map) {
    return FileImportArgs(
      contentType: map['contentType'] as String,
      fileImportId: map['fileImportId'] == null ? null : map['fileImportId'] as String,
      importFile: FileMetadata.fromMap((map['importFile'] as Map).cast<String, dynamic>()),
      ingestionMode: map['ingestionMode'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      source: map['source'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

