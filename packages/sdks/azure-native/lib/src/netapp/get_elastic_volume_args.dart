// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_elastic_volume_args_doc}
/// Arguments for getElasticVolume.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_elastic_volume_args_doc}
class GetElasticVolumeArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the ElasticCapacityPool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the ElasticVolume
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetElasticVolumeArgs].
  /// [accountName] The name of the ElasticAccount
  /// [poolName] The name of the ElasticCapacityPool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeName] The name of the ElasticVolume
  GetElasticVolumeArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetElasticVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticVolumeArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

