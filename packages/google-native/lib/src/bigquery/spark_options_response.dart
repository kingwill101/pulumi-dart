// ignore_for_file: unused_element, unnecessary_cast

/// Options for a user-defined Spark routine.
class SparkOptionsResponse {
  /// Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  final List<String> archiveUris;

  /// Fully qualified name of the user-provided Spark connection object. Format: ```"projects/{project_id}/locations/{location_id}/connections/{connection_id}"```
  final String connection;

  /// Custom container image for the runtime environment.
  final String containerImage;

  /// Files to be placed in the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  final List<String> fileUris;

  /// JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  final List<String> jarUris;

  /// The fully qualified name of a class in jar_uris, for example, com.example.wordcount. Exactly one of main_class and main_jar_uri field should be set for Java/Scala language type.
  final String mainClass;

  /// The main file/jar URI of the Spark application. Exactly one of the definition_body field and the main_file_uri field must be set for Python. Exactly one of main_class and main_file_uri field should be set for Java/Scala language type.
  final String mainFileUri;

  /// Configuration properties as a set of key/value pairs, which will be passed on to the Spark application. For more information, see [Apache Spark](https://spark.apache.org/docs/latest/index.html) and the [procedure option list](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list).
  final Map<String, String> properties;

  /// Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: `.py`, `.egg`, and `.zip`. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  final List<String> pyFileUris;

  /// Runtime version. If not specified, the default runtime version is used.
  final String runtimeVersion;

  /// Creates a new [SparkOptionsResponse].
  /// [archiveUris] Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  /// [connection] Fully qualified name of the user-provided Spark connection object. Format: ```"projects/{project_id}/locations/{location_id}/connections/{connection_id}"```
  /// [containerImage] Custom container image for the runtime environment.
  /// [fileUris] Files to be placed in the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  /// [jarUris] JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  /// [mainClass] The fully qualified name of a class in jar_uris, for example, com.example.wordcount. Exactly one of main_class and main_jar_uri field should be set for Java/Scala language type.
  /// [mainFileUri] The main file/jar URI of the Spark application. Exactly one of the definition_body field and the main_file_uri field must be set for Python. Exactly one of main_class and main_file_uri field should be set for Java/Scala language type.
  /// [properties] Configuration properties as a set of key/value pairs, which will be passed on to the Spark application. For more information, see [Apache Spark](https://spark.apache.org/docs/latest/index.html) and the [procedure option list](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list).
  /// [pyFileUris] Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: `.py`, `.egg`, and `.zip`. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
  /// [runtimeVersion] Runtime version. If not specified, the default runtime version is used.
  SparkOptionsResponse({
    required this.archiveUris,
    required this.connection,
    required this.containerImage,
    required this.fileUris,
    required this.jarUris,
    required this.mainClass,
    required this.mainFileUri,
    required this.properties,
    required this.pyFileUris,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': archiveUris,
      'connection': connection,
      'containerImage': containerImage,
      'fileUris': fileUris,
      'jarUris': jarUris,
      'mainClass': mainClass,
      'mainFileUri': mainFileUri,
      'properties': properties,
      'pyFileUris': pyFileUris,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory SparkOptionsResponse.fromMap(Map<String, dynamic> map) {
    return SparkOptionsResponse(
      archiveUris: (map['archiveUris'] as List).cast<String>(),
      connection: map['connection'] as String,
      containerImage: map['containerImage'] as String,
      fileUris: (map['fileUris'] as List).cast<String>(),
      jarUris: (map['jarUris'] as List).cast<String>(),
      mainClass: map['mainClass'] as String,
      mainFileUri: map['mainFileUri'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      pyFileUris: (map['pyFileUris'] as List).cast<String>(),
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}
