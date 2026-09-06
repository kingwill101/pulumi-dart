// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_store_private_end_points_format_response.dart';

/// Result data returned by listArtifactStorePrivateEndPoints.
class ListArtifactStorePrivateEndPointsResult {
  /// The URI to get the next set of results.
  final String? nextLink;
  /// A list of private endpoints.
  final List<ArtifactStorePrivateEndPointsFormatResponse>? value;

  /// Creates a new [ListArtifactStorePrivateEndPointsResult].
  /// [nextLink] The URI to get the next set of results.
  /// [value] A list of private endpoints.
  const ListArtifactStorePrivateEndPointsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ArtifactStorePrivateEndPointsFormatResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListArtifactStorePrivateEndPointsResult.fromMap(Map<String, dynamic> map) {
    return ListArtifactStorePrivateEndPointsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArtifactStorePrivateEndPointsFormatResponse>(guardedValue, (value) => ArtifactStorePrivateEndPointsFormatResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
