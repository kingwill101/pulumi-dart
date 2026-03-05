// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';

/// List of manual private endpoints.
class ArtifactStorePrivateEndPointsFormatResponse {
  /// list of private endpoints.
  final pulumi.Input<List<ReferencedResourceResponse>>? manualPrivateEndPointConnections;

  /// Creates a new [ArtifactStorePrivateEndPointsFormatResponse].
  /// [manualPrivateEndPointConnections] list of private endpoints.
  ArtifactStorePrivateEndPointsFormatResponse({
    this.manualPrivateEndPointConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualPrivateEndPointConnections': ?pulumi.Input.mapOptionalInputValue<List<ReferencedResourceResponse>, List<Map<String, dynamic>>>(manualPrivateEndPointConnections, (value) => pulumi.Input.encodeList<ReferencedResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ArtifactStorePrivateEndPointsFormatResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactStorePrivateEndPointsFormatResponse(
      manualPrivateEndPointConnections: (() { final guardedValue = map['manualPrivateEndPointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReferencedResourceResponse>(guardedValue, (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

