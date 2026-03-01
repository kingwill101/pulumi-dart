// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_static_cidr_args_doc}
/// Arguments for getStaticCidr.
/// {@endtemplate}
/// {@macro pulumi_network_get_static_cidr_args_doc}
class GetStaticCidrArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Pool resource name.
  final pulumi.Input<String> poolName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// StaticCidr resource name to retrieve.
  final pulumi.Input<String> staticCidrName;

  /// Creates a new [GetStaticCidrArgs].
  /// [networkManagerName] The name of the network manager.
  /// [poolName] Pool resource name.
  /// [resourceGroupName] The name of the resource group.
  /// [staticCidrName] StaticCidr resource name to retrieve.
  GetStaticCidrArgs({
    required String networkManagerName,
    required String poolName,
    required String resourceGroupName,
    required String staticCidrName,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      staticCidrName = pulumi.Input.asInput<String>(staticCidrName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'staticCidrName': staticCidrName,
    };
  }

  factory GetStaticCidrArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticCidrArgs(
      networkManagerName: map['networkManagerName'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      staticCidrName: map['staticCidrName'] as String,
    );
  }
}

