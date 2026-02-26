// ignore_for_file: unused_element, unnecessary_cast

class BatchSparkBatch {
  /// HCFS URIs of archives to be extracted into the working directory of each executor.
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;

  /// The arguments to pass to the driver. Do not include arguments that can be set as batch
  /// properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  final List<String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  final List<String>? fileUris;

  /// HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  final List<String>? jarFileUris;

  /// The name of the driver main class. The jar file that contains the class must be in the
  /// classpath or specified in jarFileUris.
  final String? mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  final String? mainJarFileUri;

  BatchSparkBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainClass,
    this.mainJarFileUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final archiveUrisValue = archiveUris;
    if (archiveUrisValue != null) {
      map['archiveUris'] = archiveUrisValue;
    }
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final fileUrisValue = fileUris;
    if (fileUrisValue != null) {
      map['fileUris'] = fileUrisValue;
    }
    final jarFileUrisValue = jarFileUris;
    if (jarFileUrisValue != null) {
      map['jarFileUris'] = jarFileUrisValue;
    }
    final mainClassValue = mainClass;
    if (mainClassValue != null) {
      map['mainClass'] = mainClassValue;
    }
    final mainJarFileUriValue = mainJarFileUri;
    if (mainJarFileUriValue != null) {
      map['mainJarFileUri'] = mainJarFileUriValue;
    }
    return map;
  }

  factory BatchSparkBatch.fromMap(Map<String, dynamic> map) {
    return BatchSparkBatch(
      archiveUris: map['archiveUris'] == null
          ? null
          : (map['archiveUris'] as List).cast<String>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      fileUris: map['fileUris'] == null
          ? null
          : (map['fileUris'] as List).cast<String>(),
      jarFileUris: map['jarFileUris'] == null
          ? null
          : (map['jarFileUris'] as List).cast<String>(),
      mainClass: map['mainClass'] == null ? null : map['mainClass'] as String,
      mainJarFileUri: map['mainJarFileUri'] == null
          ? null
          : map['mainJarFileUri'] as String,
    );
  }
}
