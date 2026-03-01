// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';

/// List of manual private endpoints.
class ArtifactStorePrivateEndPointsFormatResponse {
  /// list of private endpoints.
  final List<ReferencedResourceResponse>? manualPrivateEndPointConnections;

  /// Creates a new [ArtifactStorePrivateEndPointsFormatResponse].
  /// [manualPrivateEndPointConnections] list of private endpoints.
  ArtifactStorePrivateEndPointsFormatResponse({
    this.manualPrivateEndPointConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualPrivateEndPointConnections': ?manualPrivateEndPointConnections == null ? null : pulumi.Input.encodeList<ReferencedResourceResponse, Map<String, dynamic>>(manualPrivateEndPointConnections!, (value) => value.toMap()),
    };
  }

  factory ArtifactStorePrivateEndPointsFormatResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactStorePrivateEndPointsFormatResponse(
      manualPrivateEndPointConnections: map['manualPrivateEndPointConnections'] == null ? null : pulumi.Input.decodeList<ReferencedResourceResponse>(map['manualPrivateEndPointConnections'], (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

