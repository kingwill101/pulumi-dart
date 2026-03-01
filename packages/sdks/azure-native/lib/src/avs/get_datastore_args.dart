// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_datastore_args_doc}
/// Arguments for getDatastore.
/// {@endtemplate}
/// {@macro pulumi_avs_get_datastore_args_doc}
class GetDatastoreArgs {
  /// Name of the cluster
  final pulumi.Input<String> clusterName;
  /// Name of the datastore
  final pulumi.Input<String> datastoreName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatastoreArgs].
  /// [clusterName] Name of the cluster
  /// [datastoreName] Name of the datastore
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDatastoreArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> datastoreName,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      datastoreName = pulumi.Input.asInput<String>(datastoreName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'datastoreName': datastoreName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDatastoreArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      datastoreName: pulumi.Output.create<String>(map['datastoreName'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

