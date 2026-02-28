// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_infrastructure_spec_response.dart';

/// Config for running scheduled notebooks.
class GoogleCloudDataplexV1TaskNotebookTaskConfigResponse {
  /// Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String> archiveUris;

  /// Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.
  final List<String> fileUris;

  /// Optional. Infrastructure specification for the execution.
  final GoogleCloudDataplexV1TaskInfrastructureSpecResponse infrastructureSpec;

  /// Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  final String notebook;

  /// Creates a new [GoogleCloudDataplexV1TaskNotebookTaskConfigResponse].
  /// [archiveUris] Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [fileUris] Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.
  /// [infrastructureSpec] Optional. Infrastructure specification for the execution.
  /// [notebook] Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  GoogleCloudDataplexV1TaskNotebookTaskConfigResponse({
    required this.archiveUris,
    required this.fileUris,
    required this.infrastructureSpec,
    required this.notebook,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveUris'] = archiveUris;
    map['fileUris'] = fileUris;
    map['infrastructureSpec'] = infrastructureSpec.toMap();
    map['notebook'] = notebook;
    return map;
  }

  factory GoogleCloudDataplexV1TaskNotebookTaskConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskNotebookTaskConfigResponse(
      archiveUris: (map['archiveUris'] as List).cast<String>(),
      fileUris: (map['fileUris'] as List).cast<String>(),
      infrastructureSpec:
          GoogleCloudDataplexV1TaskInfrastructureSpecResponse.fromMap(
              (map['infrastructureSpec'] as Map).cast<String, dynamic>()),
      notebook: map['notebook'] as String,
    );
  }
}
