// ignore_for_file: unused_element, unnecessary_cast

/// Fields specific for BigQuery routines.
class GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse {
  /// Paths of the imported libraries.
  final List<String> importedLibraries;

  GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse({
    required this.importedLibraries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['importedLibraries'] = importedLibraries;
    return map;
  }

  factory GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse(
      importedLibraries: (map['importedLibraries'] as List).cast<String>(),
    );
  }
}
