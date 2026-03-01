// ignore_for_file: unused_element, unnecessary_cast

class GdcSparkApplicationSparkApplicationConfig {
  /// HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: `.jar`, `.tar`, `.tar.gz`, `.tgz`, and `.zip`.
  final List<String>? archiveUris;

  /// The arguments to pass to the driver. Do not include arguments that can be set as application properties, such as `--conf`, since a collision can occur that causes an incorrect application submission.
  final List<String>? args;

  /// HCFS URIs of files to be placed in the working directory of each executor.
  final List<String>? fileUris;

  /// HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  final List<String>? jarFileUris;

  /// The name of the driver main class. The jar file that contains the class must be in the classpath or specified in `jar_file_uris`.
  final String? mainClass;

  /// The HCFS URI of the jar file that contains the main class.
  final String? mainJarFileUri;

  /// Creates a new [GdcSparkApplicationSparkApplicationConfig].
  /// [archiveUris] HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: `.jar`, `.tar`, `.tar.gz`, `.tgz`, and `.zip`.
  /// [args] The arguments to pass to the driver. Do not include arguments that can be set as application properties, such as `--conf`, since a collision can occur that causes an incorrect application submission.
  /// [fileUris] HCFS URIs of files to be placed in the working directory of each executor.
  /// [jarFileUris] HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  /// [mainClass] The name of the driver main class. The jar file that contains the class must be in the classpath or specified in `jar_file_uris`.
  /// [mainJarFileUri] The HCFS URI of the jar file that contains the main class.
  GdcSparkApplicationSparkApplicationConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainClass,
    this.mainJarFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'jarFileUris': ?jarFileUris,
      'mainClass': ?mainClass,
      'mainJarFileUri': ?mainJarFileUri,
    };
  }

  factory GdcSparkApplicationSparkApplicationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GdcSparkApplicationSparkApplicationConfig(
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
