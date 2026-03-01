// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwarecloudsimple_dedicated_cloud_service_args_doc}
/// The set of arguments for DedicatedCloudService.
/// {@endtemplate}
/// {@macro pulumi_vmwarecloudsimple_dedicated_cloud_service_args_doc}
class DedicatedCloudServiceArgs {
  /// dedicated cloud Service name
  final pulumi.Input<String>? dedicatedCloudServiceName;
  /// gateway Subnet for the account. It will collect the subnet address and always treat it as /28
  final pulumi.Input<String> gatewaySubnet;
  /// Azure region
  final pulumi.Input<String>? location;
  /// The name of the resource group
  final pulumi.Input<String> resourceGroupName;
  /// The list of tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DedicatedCloudServiceArgs].
  /// [dedicatedCloudServiceName] dedicated cloud Service name
  /// [gatewaySubnet] gateway Subnet for the account. It will collect the subnet address and always treat it as /28
  /// [location] Azure region
  /// [resourceGroupName] The name of the resource group
  /// [tags] The list of tags
  DedicatedCloudServiceArgs({
    String? dedicatedCloudServiceName,
    required String gatewaySubnet,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      dedicatedCloudServiceName = pulumi.Input.asOptionalInput<String>(dedicatedCloudServiceName),
      gatewaySubnet = pulumi.Input.asInput<String>(gatewaySubnet),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedCloudServiceName': ?dedicatedCloudServiceName,
      'gatewaySubnet': gatewaySubnet,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DedicatedCloudServiceArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedCloudServiceArgs(
      dedicatedCloudServiceName: map['dedicatedCloudServiceName'] == null ? null : map['dedicatedCloudServiceName'] as String,
      gatewaySubnet: map['gatewaySubnet'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

