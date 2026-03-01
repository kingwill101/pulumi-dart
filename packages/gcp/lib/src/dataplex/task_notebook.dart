// ignore_for_file: unused_element, unnecessary_cast

import 'task_notebook_infrastructure_spec.dart';

class TaskNotebook {
  /// Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;
  /// Cloud Storage URIs of files to be placed in the working directory of each executor.
  final List<String>? fileUris;
  /// Infrastructure specification for the execution.
  /// Structure is documented below.
  final TaskNotebookInfrastructureSpec? infrastructureSpec;
  /// Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  final String notebook;

  /// Creates a new [TaskNotebook].
  /// [archiveUris] Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [fileUris] Cloud Storage URIs of files to be placed in the working directory of each executor.
  /// [infrastructureSpec] Infrastructure specification for the execution.
  /// [notebook] Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  TaskNotebook({
    this.archiveUris,
    this.fileUris,
    this.infrastructureSpec,
    required this.notebook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'fileUris': ?fileUris,
      'infrastructureSpec': ?infrastructureSpec == null ? null : infrastructureSpec!.toMap(),
      'notebook': notebook,
    };
  }

  factory TaskNotebook.fromMap(Map<String, dynamic> map) {
    return TaskNotebook(
      archiveUris: map['archiveUris'] == null ? null : (map['archiveUris'] as List).cast<String>(),
      fileUris: map['fileUris'] == null ? null : (map['fileUris'] as List).cast<String>(),
      infrastructureSpec: map['infrastructureSpec'] == null ? null : TaskNotebookInfrastructureSpec.fromMap((map['infrastructureSpec'] as Map).cast<String, dynamic>()),
      notebook: map['notebook'] as String,
    );
  }
}

