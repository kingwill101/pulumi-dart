// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_store_private_end_points_format_response.dart';

/// Result data returned by listArtifactStorePrivateEndPoints.
class ListArtifactStorePrivateEndPointsResult {
  /// The URI to get the next set of results.
  final String nextLink;
  /// A list of private endpoints.
  final List<ArtifactStorePrivateEndPointsFormatResponse>? value;

  /// Creates a new [ListArtifactStorePrivateEndPointsResult].
  /// [nextLink] The URI to get the next set of results.
  /// [value] A list of private endpoints.
  ListArtifactStorePrivateEndPointsResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<ArtifactStorePrivateEndPointsFormatResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListArtifactStorePrivateEndPointsResult.fromMap(Map<String, dynamic> map) {
    return ListArtifactStorePrivateEndPointsResult(
      nextLink: map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ArtifactStorePrivateEndPointsFormatResponse>(map['value']!, (value) => ArtifactStorePrivateEndPointsFormatResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

