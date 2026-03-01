// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataDiscoverySpecBigqueryPublishingConfig {
  /// The BigQuery connection used to create BigLake tables. Must be in the form `projects/{projectId}/locations/{locationId}/connections/{connection_id}`.
  final String? connection;

  /// The location of the BigQuery dataset to publish BigLake external or non-BigLake external tables to.
  final String? location;

  /// The project of the BigQuery dataset to publish BigLake external or non-BigLake external tables to. If not specified, the project of the Cloud Storage bucket will be used. The format is "projects/{project_id_or_number}".
  final String? project;

  /// Determines whether to publish discovered tables as BigLake external tables or non-BigLake external tables.
  /// Possible values are: `TABLE_TYPE_UNSPECIFIED`, `EXTERNAL`, `BIGLAKE`.
  final String? tableType;

  /// Creates a new [DatascanDataDiscoverySpecBigqueryPublishingConfig].
  /// [connection] The BigQuery connection used to create BigLake tables. Must be in the form `projects/{projectId}/locations/{locationId}/connections/{connection_id}`.
  /// [location] The location of the BigQuery dataset to publish BigLake external or non-BigLake external tables to.
  /// [project] The project of the BigQuery dataset to publish BigLake external or non-BigLake external tables to. If not specified, the project of the Cloud Storage bucket will be used. The format is "projects/{project_id_or_number}".
  /// [tableType] Determines whether to publish discovered tables as BigLake external tables or non-BigLake external tables.
  DatascanDataDiscoverySpecBigqueryPublishingConfig({
    this.connection,
    this.location,
    this.project,
    this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection,
      'location': ?location,
      'project': ?project,
      'tableType': ?tableType,
    };
  }

  factory DatascanDataDiscoverySpecBigqueryPublishingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanDataDiscoverySpecBigqueryPublishingConfig(
      connection: map['connection'] == null
          ? null
          : map['connection'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tableType: map['tableType'] == null ? null : map['tableType'] as String,
    );
  }
}
