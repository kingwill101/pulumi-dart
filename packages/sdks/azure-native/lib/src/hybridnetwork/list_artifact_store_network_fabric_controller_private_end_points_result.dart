// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_store_network_fabric_controller_end_points_response.dart';

/// Result data returned by listArtifactStoreNetworkFabricControllerPrivateEndPoints.
class ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult {
  /// The URI to get the next set of results.
  final String nextLink;
  /// A list of network fabric controllers.
  final List<ArtifactStoreNetworkFabricControllerEndPointsResponse>? value;

  /// Creates a new [ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult].
  /// [nextLink] The URI to get the next set of results.
  /// [value] A list of network fabric controllers.
  ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ArtifactStoreNetworkFabricControllerEndPointsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult.fromMap(Map<String, dynamic> map) {
    return ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult(
      nextLink: map['nextLink'] as String,
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArtifactStoreNetworkFabricControllerEndPointsResponse>(guardedValue, (value) => ArtifactStoreNetworkFabricControllerEndPointsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

