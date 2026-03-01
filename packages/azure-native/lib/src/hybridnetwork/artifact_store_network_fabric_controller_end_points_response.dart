// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';

/// List of network fabric controller ids.
class ArtifactStoreNetworkFabricControllerEndPointsResponse {
  /// list of network fabric controllers.
  final List<ReferencedResourceResponse>? networkFabricControllerIds;

  /// Creates a new [ArtifactStoreNetworkFabricControllerEndPointsResponse].
  /// [networkFabricControllerIds] list of network fabric controllers.
  ArtifactStoreNetworkFabricControllerEndPointsResponse({
    this.networkFabricControllerIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFabricControllerIds': ?networkFabricControllerIds == null ? null : pulumi.Input.encodeList<ReferencedResourceResponse, Map<String, dynamic>>(networkFabricControllerIds!, (value) => value.toMap()),
    };
  }

  factory ArtifactStoreNetworkFabricControllerEndPointsResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactStoreNetworkFabricControllerEndPointsResponse(
      networkFabricControllerIds: map['networkFabricControllerIds'] == null ? null : pulumi.Input.decodeList<ReferencedResourceResponse>(map['networkFabricControllerIds'], (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

