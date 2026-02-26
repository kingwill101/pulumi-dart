// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_lineage_v1_entity_reference_response.dart';

/// A lineage between source and target entities.
class GoogleCloudDatacatalogLineageV1EventLinkResponse {
  /// Reference to the source entity
  final GoogleCloudDatacatalogLineageV1EntityReferenceResponse source;

  /// Reference to the target entity
  final GoogleCloudDatacatalogLineageV1EntityReferenceResponse target;

  GoogleCloudDatacatalogLineageV1EventLinkResponse({
    required this.source,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['source'] = source.toMap();
    map['target'] = target.toMap();
    return map;
  }

  factory GoogleCloudDatacatalogLineageV1EventLinkResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogLineageV1EventLinkResponse(
      source: GoogleCloudDatacatalogLineageV1EntityReferenceResponse.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
      target: GoogleCloudDatacatalogLineageV1EntityReferenceResponse.fromMap(
          (map['target'] as Map).cast<String, dynamic>()),
    );
  }
}
