// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_lineage_v1_entity_reference_response.dart';

/// A lineage between source and target entities.
class GoogleCloudDatacatalogLineageV1EventLinkResponse {
  /// Reference to the source entity
  final GoogleCloudDatacatalogLineageV1EntityReferenceResponse source;

  /// Reference to the target entity
  final GoogleCloudDatacatalogLineageV1EntityReferenceResponse target;

  /// Creates a new [GoogleCloudDatacatalogLineageV1EventLinkResponse].
  /// [source] Reference to the source entity
  /// [target] Reference to the target entity
  GoogleCloudDatacatalogLineageV1EventLinkResponse({
    required this.source,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source.toMap(),
      'target': target.toMap(),
    };
  }

  factory GoogleCloudDatacatalogLineageV1EventLinkResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogLineageV1EventLinkResponse(
      source: GoogleCloudDatacatalogLineageV1EntityReferenceResponse.fromMap(
        (map['source'] as Map).cast<String, dynamic>(),
      ),
      target: GoogleCloudDatacatalogLineageV1EntityReferenceResponse.fromMap(
        (map['target'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
