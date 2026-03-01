// ignore_for_file: unused_element, unnecessary_cast

class AutonomousDatabasePropertiesConnectionUrl {
  /// Oracle Application Express (APEX) URL.
  final String? apexUri;

  /// The URL of the Database Transforms for the Autonomous Database.
  final String? databaseTransformsUri;

  /// The URL of the Graph Studio for the Autonomous Database.
  final String? graphStudioUri;

  /// The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// Database.
  final String? machineLearningNotebookUri;

  /// The URL of Machine Learning user management the Autonomous Database.
  final String? machineLearningUserManagementUri;

  /// The URL of the MongoDB API for the Autonomous Database.
  final String? mongoDbUri;

  /// The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// Autonomous Database.
  final String? ordsUri;

  /// The URL of the Oracle SQL Developer Web for the Autonomous Database.
  final String? sqlDevWebUri;

  /// Creates a new [AutonomousDatabasePropertiesConnectionUrl].
  /// [apexUri] Oracle Application Express (APEX) URL.
  /// [databaseTransformsUri] The URL of the Database Transforms for the Autonomous Database.
  /// [graphStudioUri] The URL of the Graph Studio for the Autonomous Database.
  /// [machineLearningNotebookUri] The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// [machineLearningUserManagementUri] The URL of Machine Learning user management the Autonomous Database.
  /// [mongoDbUri] The URL of the MongoDB API for the Autonomous Database.
  /// [ordsUri] The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// [sqlDevWebUri] The URL of the Oracle SQL Developer Web for the Autonomous Database.
  AutonomousDatabasePropertiesConnectionUrl({
    this.apexUri,
    this.databaseTransformsUri,
    this.graphStudioUri,
    this.machineLearningNotebookUri,
    this.machineLearningUserManagementUri,
    this.mongoDbUri,
    this.ordsUri,
    this.sqlDevWebUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexUri': ?apexUri,
      'databaseTransformsUri': ?databaseTransformsUri,
      'graphStudioUri': ?graphStudioUri,
      'machineLearningNotebookUri': ?machineLearningNotebookUri,
      'machineLearningUserManagementUri': ?machineLearningUserManagementUri,
      'mongoDbUri': ?mongoDbUri,
      'ordsUri': ?ordsUri,
      'sqlDevWebUri': ?sqlDevWebUri,
    };
  }

  factory AutonomousDatabasePropertiesConnectionUrl.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutonomousDatabasePropertiesConnectionUrl(
      apexUri: map['apexUri'] == null ? null : map['apexUri'] as String,
      databaseTransformsUri: map['databaseTransformsUri'] == null
          ? null
          : map['databaseTransformsUri'] as String,
      graphStudioUri: map['graphStudioUri'] == null
          ? null
          : map['graphStudioUri'] as String,
      machineLearningNotebookUri: map['machineLearningNotebookUri'] == null
          ? null
          : map['machineLearningNotebookUri'] as String,
      machineLearningUserManagementUri:
          map['machineLearningUserManagementUri'] == null
          ? null
          : map['machineLearningUserManagementUri'] as String,
      mongoDbUri: map['mongoDbUri'] == null
          ? null
          : map['mongoDbUri'] as String,
      ordsUri: map['ordsUri'] == null ? null : map['ordsUri'] as String,
      sqlDevWebUri: map['sqlDevWebUri'] == null
          ? null
          : map['sqlDevWebUri'] as String,
    );
  }
}
