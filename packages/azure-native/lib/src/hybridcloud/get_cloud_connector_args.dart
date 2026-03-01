// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcloud_get_cloud_connector_args_doc}
/// Arguments for getCloudConnector.
/// {@endtemplate}
/// {@macro pulumi_hybridcloud_get_cloud_connector_args_doc}
class GetCloudConnectorArgs {
  /// The name of the cloud connector resource
  final pulumi.Input<String> cloudConnectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudConnectorArgs].
  /// [cloudConnectorName] The name of the cloud connector resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudConnectorArgs({
    required String cloudConnectorName,
    required String resourceGroupName,
  }) :
      cloudConnectorName = pulumi.Input.asInput<String>(cloudConnectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudConnectorName': cloudConnectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorArgs(
      cloudConnectorName: map['cloudConnectorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

