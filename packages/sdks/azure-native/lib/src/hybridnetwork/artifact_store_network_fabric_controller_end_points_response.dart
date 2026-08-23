// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';

/// List of network fabric controller ids.
class ArtifactStoreNetworkFabricControllerEndPointsResponse {
  /// list of network fabric controllers.
  final pulumi.Input<List<ReferencedResourceResponse>>? networkFabricControllerIds;

  /// Creates a new [ArtifactStoreNetworkFabricControllerEndPointsResponse].
  /// [networkFabricControllerIds] list of network fabric controllers.
  const ArtifactStoreNetworkFabricControllerEndPointsResponse({
    this.networkFabricControllerIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFabricControllerIds': ?pulumi.Input.mapOptionalInputValue<List<ReferencedResourceResponse>, List<Map<String, dynamic>>>(networkFabricControllerIds, (value) => pulumi.Input.encodeList<ReferencedResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ArtifactStoreNetworkFabricControllerEndPointsResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactStoreNetworkFabricControllerEndPointsResponse(
      networkFabricControllerIds: (() { final guardedValue = map['networkFabricControllerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReferencedResourceResponse>(guardedValue, (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
