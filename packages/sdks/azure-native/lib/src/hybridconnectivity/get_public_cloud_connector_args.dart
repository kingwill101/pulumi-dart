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
  GetPublicCloudConnectorArgs({
    required pulumi.Output<String> publicCloudConnector,
    required pulumi.Output<String> resourceGroupName,
  }) :
      publicCloudConnector = pulumi.Input.asInput<String>(publicCloudConnector),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicCloudConnector': publicCloudConnector,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicCloudConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicCloudConnectorArgs(
      publicCloudConnector: pulumi.Output.create<String>(map['publicCloudConnector'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

