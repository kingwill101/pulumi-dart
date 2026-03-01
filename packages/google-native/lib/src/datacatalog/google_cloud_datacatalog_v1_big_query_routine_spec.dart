// ignore_for_file: unused_element, unnecessary_cast

/// Fields specific for BigQuery routines.
class GoogleCloudDatacatalogV1BigQueryRoutineSpec {
  /// Paths of the imported libraries.
  final List<String>? importedLibraries;

  /// Creates a new [GoogleCloudDatacatalogV1BigQueryRoutineSpec].
  /// [importedLibraries] Paths of the imported libraries.
  GoogleCloudDatacatalogV1BigQueryRoutineSpec({this.importedLibraries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'importedLibraries': ?importedLibraries};
  }

  factory GoogleCloudDatacatalogV1BigQueryRoutineSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1BigQueryRoutineSpec(
      importedLibraries: map['importedLibraries'] == null
          ? null
          : (map['importedLibraries'] as List).cast<String>(),
    );
  }
}
