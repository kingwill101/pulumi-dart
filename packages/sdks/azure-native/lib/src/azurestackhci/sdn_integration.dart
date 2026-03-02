// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_controller.dart';

/// SDN Integration config to deploy AzureStackHCI Cluster.
class SdnIntegration {
  /// network controller config for SDN Integration to deploy AzureStackHCI Cluster.
  final pulumi.Input<NetworkController>? networkController;

  /// Creates a new [SdnIntegration].
  /// [networkController] network controller config for SDN Integration to deploy AzureStackHCI Cluster.
  SdnIntegration({
    this.networkController,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkController': ?pulumi.Input.mapOptionalInputValue<NetworkController, Map<String, dynamic>>(networkController, (value) => value.toMap()),
    };
  }

  factory SdnIntegration.fromMap(Map<String, dynamic> map) {
    return SdnIntegration(
      networkController: map['networkController'] == null ? null : (NetworkController.fromMap((map['networkController']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

