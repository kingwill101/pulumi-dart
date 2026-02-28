// ignore_for_file: unused_element, unnecessary_cast


/// Settings to manage association of Dataproc Metastore with a lake.
class GoogleCloudDataplexV1LakeMetastore {
  /// Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: projects/{project_id}/locations/{location_id}/services/{service_id}
  final String? service;

  /// Creates a new [GoogleCloudDataplexV1LakeMetastore].
  /// [service] Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: projects/{project_id}/locations/{location_id}/services/{service_id}
  GoogleCloudDataplexV1LakeMetastore({
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': ?service,
    };
  }

  factory GoogleCloudDataplexV1LakeMetastore.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1LakeMetastore(
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}

