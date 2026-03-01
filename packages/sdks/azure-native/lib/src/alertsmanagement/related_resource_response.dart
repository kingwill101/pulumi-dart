// ignore_for_file: unused_element, unnecessary_cast

import 'origin_response.dart';

/// Properties of a resource which is related to the issue
class RelatedResourceResponse {
  /// The time this relation was added to the issue (in UTC)
  final String addedAt;
  /// The resource ID
  final String id;
  /// The last update time of this relation (in UTC)
  final String lastModifiedAt;
  /// The source that related the resource to the issue
  final OriginResponse origin;
  /// The resource's relevance status
  final String relevance;

  /// Creates a new [RelatedResourceResponse].
  /// [addedAt] The time this relation was added to the issue (in UTC)
  /// [id] The resource ID
  /// [lastModifiedAt] The last update time of this relation (in UTC)
  /// [origin] The source that related the resource to the issue
  /// [relevance] The resource's relevance status
  RelatedResourceResponse({
    required this.addedAt,
    required this.id,
    required this.lastModifiedAt,
    required this.origin,
    required this.relevance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedAt': addedAt,
      'id': id,
      'lastModifiedAt': lastModifiedAt,
      'origin': origin.toMap(),
      'relevance': relevance,
    };
  }

  factory RelatedResourceResponse.fromMap(Map<String, dynamic> map) {
    return RelatedResourceResponse(
      addedAt: map['addedAt'] as String,
      id: map['id'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      origin: OriginResponse.fromMap((map['origin'] as Map).cast<String, dynamic>()),
      relevance: map['relevance'] as String,
    );
  }
}

