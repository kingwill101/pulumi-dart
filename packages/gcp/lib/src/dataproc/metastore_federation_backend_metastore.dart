// ignore_for_file: unused_element, unnecessary_cast

class MetastoreFederationBackendMetastore {
  /// The type of the backend metastore.
  /// Possible values are: `METASTORE_TYPE_UNSPECIFIED`, `DATAPROC_METASTORE`, `BIGQUERY`.
  final String metastoreType;

  /// The relative resource name of the metastore that is being federated. The formats of the relative resource names for the currently supported metastores are listed below: Dataplex: projects/{projectId}/locations/{location}/lakes/{lake_id} BigQuery: projects/{projectId} Dataproc Metastore: projects/{projectId}/locations/{location}/services/{serviceId}
  final String name;

  /// The identifier for this object. Format specified above.
  final String rank;

  /// Creates a new [MetastoreFederationBackendMetastore].
  /// [metastoreType] The type of the backend metastore.
  /// [name] The relative resource name of the metastore that is being federated. The formats of the relative resource names for the currently supported metastores are listed below: Dataplex: projects/{projectId}/locations/{location}/lakes/{lake_id} BigQuery: projects/{projectId} Dataproc Metastore: projects/{projectId}/locations/{location}/services/{serviceId}
  /// [rank] The identifier for this object. Format specified above.
  MetastoreFederationBackendMetastore({
    required this.metastoreType,
    required this.name,
    required this.rank,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metastoreType'] = metastoreType;
    map['name'] = name;
    map['rank'] = rank;
    return map;
  }

  factory MetastoreFederationBackendMetastore.fromMap(
      Map<String, dynamic> map) {
    return MetastoreFederationBackendMetastore(
      metastoreType: map['metastoreType'] as String,
      name: map['name'] as String,
      rank: map['rank'] as String,
    );
  }
}
