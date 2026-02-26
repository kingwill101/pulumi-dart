// ignore_for_file: unused_element, unnecessary_cast

/// Fields specific for BigQuery routines.
class GoogleCloudDatacatalogV1BigQueryRoutineSpec {
  /// Paths of the imported libraries.
  final List<String>? importedLibraries;

  GoogleCloudDatacatalogV1BigQueryRoutineSpec({
    this.importedLibraries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final importedLibrariesValue = importedLibraries;
    if (importedLibrariesValue != null) {
      map['importedLibraries'] = importedLibrariesValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1BigQueryRoutineSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BigQueryRoutineSpec(
      importedLibraries: map['importedLibraries'] == null
          ? null
          : (map['importedLibraries'] as List).cast<String>(),
    );
  }
}
