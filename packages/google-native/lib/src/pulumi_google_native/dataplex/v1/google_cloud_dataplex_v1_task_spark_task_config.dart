// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_infrastructure_spec.dart';

/// User-specified config for running a Spark task.
class GoogleCloudDataplexV1TaskSparkTaskConfig {
  /// Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;

  /// Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.
  final List<String>? fileUris;

  /// Optional. Infrastructure specification for the execution.
  final GoogleCloudDataplexV1TaskInfrastructureSpec? infrastructureSpec;

  /// The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value).
  final String? mainClass;

  /// The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value).
  final String? mainJarFileUri;

  /// The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value).
  final String? pythonScriptFile;

  /// The query text. The execution args are used to declare a set of script variables (set key="value";).
  final String? sqlScript;

  /// A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key="value";).
  final String? sqlScriptFile;

  GoogleCloudDataplexV1TaskSparkTaskConfig({
    this.archiveUris,
    this.fileUris,
    this.infrastructureSpec,
    this.mainClass,
    this.mainJarFileUri,
    this.pythonScriptFile,
    this.sqlScript,
    this.sqlScriptFile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final archiveUrisValue = archiveUris;
    if (archiveUrisValue != null) {
      map['archiveUris'] = archiveUrisValue;
    }
    final fileUrisValue = fileUris;
    if (fileUrisValue != null) {
      map['fileUris'] = fileUrisValue;
    }
    final infrastructureSpecValue = infrastructureSpec;
    if (infrastructureSpecValue != null) {
      map['infrastructureSpec'] = infrastructureSpecValue.toMap();
    }
    final mainClassValue = mainClass;
    if (mainClassValue != null) {
      map['mainClass'] = mainClassValue;
    }
    final mainJarFileUriValue = mainJarFileUri;
    if (mainJarFileUriValue != null) {
      map['mainJarFileUri'] = mainJarFileUriValue;
    }
    final pythonScriptFileValue = pythonScriptFile;
    if (pythonScriptFileValue != null) {
      map['pythonScriptFile'] = pythonScriptFileValue;
    }
    final sqlScriptValue = sqlScript;
    if (sqlScriptValue != null) {
      map['sqlScript'] = sqlScriptValue;
    }
    final sqlScriptFileValue = sqlScriptFile;
    if (sqlScriptFileValue != null) {
      map['sqlScriptFile'] = sqlScriptFileValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1TaskSparkTaskConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskSparkTaskConfig(
      archiveUris: map['archiveUris'] == null
          ? null
          : (map['archiveUris'] as List).cast<String>(),
      fileUris: map['fileUris'] == null
          ? null
          : (map['fileUris'] as List).cast<String>(),
      infrastructureSpec: map['infrastructureSpec'] == null
          ? null
          : GoogleCloudDataplexV1TaskInfrastructureSpec.fromMap(
              (map['infrastructureSpec'] as Map).cast<String, dynamic>()),
      mainClass: map['mainClass'] == null ? null : map['mainClass'] as String,
      mainJarFileUri: map['mainJarFileUri'] == null
          ? null
          : map['mainJarFileUri'] as String,
      pythonScriptFile: map['pythonScriptFile'] == null
          ? null
          : map['pythonScriptFile'] as String,
      sqlScript: map['sqlScript'] == null ? null : map['sqlScript'] as String,
      sqlScriptFile:
          map['sqlScriptFile'] == null ? null : map['sqlScriptFile'] as String,
    );
  }
}
