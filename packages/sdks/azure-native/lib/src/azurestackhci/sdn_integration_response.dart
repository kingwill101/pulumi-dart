// ignore_for_file: unused_element, unnecessary_cast

import 'network_controller_response.dart';

/// SDN Integration config to deploy AzureStackHCI Cluster.
class SdnIntegrationResponse {
  /// network controller config for SDN Integration to deploy AzureStackHCI Cluster.
  final NetworkControllerResponse? networkController;

  /// Creates a new [SdnIntegrationResponse].
  /// [networkController] network controller config for SDN Integration to deploy AzureStackHCI Cluster.
  SdnIntegrationResponse({
    this.networkController,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkController': ?networkController == null ? null : networkController!.toMap(),
    };
  }

  factory SdnIntegrationResponse.fromMap(Map<String, dynamic> map) {
    return SdnIntegrationResponse(
      networkController: map['networkController'] == null ? null : NetworkControllerResponse.fromMap((map['networkController'] as Map).cast<String, dynamic>()),
    );
  }
}

