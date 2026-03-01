// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasePropertyConnectionUrl {
  /// Oracle Application Express (APEX) URL.
  final String apexUri;

  /// The URL of the Database Transforms for the Autonomous Database.
  final String databaseTransformsUri;

  /// The URL of the Graph Studio for the Autonomous Database.
  final String graphStudioUri;

  /// The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// Database.
  final String machineLearningNotebookUri;

  /// The URL of Machine Learning user management the Autonomous Database.
  final String machineLearningUserManagementUri;

  /// The URL of the MongoDB API for the Autonomous Database.
  final String mongoDbUri;

  /// The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// Autonomous Database.
  final String ordsUri;

  /// The URL of the Oracle SQL Developer Web for the Autonomous Database.
  final String sqlDevWebUri;

  /// Creates a new [GetAutonomousDatabasePropertyConnectionUrl].
  /// [apexUri] Oracle Application Express (APEX) URL.
  /// [databaseTransformsUri] The URL of the Database Transforms for the Autonomous Database.
  /// [graphStudioUri] The URL of the Graph Studio for the Autonomous Database.
  /// [machineLearningNotebookUri] The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// [machineLearningUserManagementUri] The URL of Machine Learning user management the Autonomous Database.
  /// [mongoDbUri] The URL of the MongoDB API for the Autonomous Database.
  /// [ordsUri] The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// [sqlDevWebUri] The URL of the Oracle SQL Developer Web for the Autonomous Database.
  GetAutonomousDatabasePropertyConnectionUrl({
    required this.apexUri,
    required this.databaseTransformsUri,
    required this.graphStudioUri,
    required this.machineLearningNotebookUri,
    required this.machineLearningUserManagementUri,
    required this.mongoDbUri,
    required this.ordsUri,
    required this.sqlDevWebUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexUri': apexUri,
      'databaseTransformsUri': databaseTransformsUri,
      'graphStudioUri': graphStudioUri,
      'machineLearningNotebookUri': machineLearningNotebookUri,
      'machineLearningUserManagementUri': machineLearningUserManagementUri,
      'mongoDbUri': mongoDbUri,
      'ordsUri': ordsUri,
      'sqlDevWebUri': sqlDevWebUri,
    };
  }

  factory GetAutonomousDatabasePropertyConnectionUrl.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAutonomousDatabasePropertyConnectionUrl(
      apexUri: map['apexUri'] as String,
      databaseTransformsUri: map['databaseTransformsUri'] as String,
      graphStudioUri: map['graphStudioUri'] as String,
      machineLearningNotebookUri: map['machineLearningNotebookUri'] as String,
      machineLearningUserManagementUri:
          map['machineLearningUserManagementUri'] as String,
      mongoDbUri: map['mongoDbUri'] as String,
      ordsUri: map['ordsUri'] as String,
      sqlDevWebUri: map['sqlDevWebUri'] as String,
    );
  }
}
