// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_response.dart';

/// Properties of a resource which is related to the issue
class RelatedResourceResponse {
  /// The time this relation was added to the issue (in UTC)
  final pulumi.Input<String> addedAt;
  /// The resource ID
  final pulumi.Input<String> id;
  /// The last update time of this relation (in UTC)
  final pulumi.Input<String> lastModifiedAt;
  /// The source that related the resource to the issue
  final pulumi.Input<OriginResponse> origin;
  /// The resource's relevance status
  final pulumi.Input<String> relevance;

  /// Creates a new [RelatedResourceResponse].
  /// [addedAt] The time this relation was added to the issue (in UTC)
  /// [id] The resource ID
  /// [lastModifiedAt] The last update time of this relation (in UTC)
  /// [origin] The source that related the resource to the issue
  /// [relevance] The resource's relevance status
  const RelatedResourceResponse({
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
      'origin': pulumi.Input.mapInputValue<OriginResponse, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'relevance': relevance,
    };
  }

  factory RelatedResourceResponse.fromMap(Map<String, dynamic> map) {
    return RelatedResourceResponse(
      addedAt: pulumi.Input.fromValue(map['addedAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastModifiedAt: pulumi.Input.fromValue(map['lastModifiedAt'] as String),
      origin: pulumi.Input.fromValue(OriginResponse.fromMap((map['origin']! as Map).cast<String, dynamic>())),
      relevance: pulumi.Input.fromValue(map['relevance'] as String),
    );
  }
}

