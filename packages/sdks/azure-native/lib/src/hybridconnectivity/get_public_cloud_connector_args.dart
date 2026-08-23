// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_get_public_cloud_connector_args_doc}
/// Arguments for getPublicCloudConnector.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_get_public_cloud_connector_args_doc}
class GetPublicCloudConnectorArgs {
  /// Represent public cloud connectors resource.
  final pulumi.Input<String> publicCloudConnector;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublicCloudConnectorArgs].
  /// [publicCloudConnector] Represent public cloud connectors resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPublicCloudConnectorArgs({
    required this.publicCloudConnector,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicCloudConnector': publicCloudConnector,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicCloudConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicCloudConnectorArgs(
      publicCloudConnector: pulumi.Input.fromValue(map['publicCloudConnector'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
