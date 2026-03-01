// ignore_for_file: unused_element, unnecessary_cast


/// A database connection configuration file
class StaticSiteDatabaseConnectionConfigurationFileOverviewResponse {
  /// The Base64 encoding of the file contents.
  final String contents;
  /// The name of the configuration file.
  final String fileName;
  /// The type of configuration file.
  final String type;

  /// Creates a new [StaticSiteDatabaseConnectionConfigurationFileOverviewResponse].
  /// [contents] The Base64 encoding of the file contents.
  /// [fileName] The name of the configuration file.
  /// [type] The type of configuration file.
  StaticSiteDatabaseConnectionConfigurationFileOverviewResponse({
    required this.contents,
    required this.fileName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': contents,
      'fileName': fileName,
      'type': type,
    };
  }

  factory StaticSiteDatabaseConnectionConfigurationFileOverviewResponse.fromMap(Map<String, dynamic> map) {
    return StaticSiteDatabaseConnectionConfigurationFileOverviewResponse(
      contents: map['contents'] as String,
      fileName: map['fileName'] as String,
      type: map['type'] as String,
    );
  }
}

