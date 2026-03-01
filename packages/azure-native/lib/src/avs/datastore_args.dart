// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_pool_volume.dart';
import 'elastic_san_volume.dart';
import 'net_app_volume.dart';

/// {@template pulumi_avs_datastore_args_doc}
/// The set of arguments for Datastore.
/// {@endtemplate}
/// {@macro pulumi_avs_datastore_args_doc}
class DatastoreArgs {
  /// Name of the cluster
  final pulumi.Input<String> clusterName;
  /// Name of the datastore
  final pulumi.Input<String>? datastoreName;
  /// An iSCSI volume
  final pulumi.Input<DiskPoolVolume>? diskPoolVolume;
  /// An Elastic SAN volume
  final pulumi.Input<ElasticSanVolume>? elasticSanVolume;
  /// An Azure NetApp Files volume
  final pulumi.Input<NetAppVolume>? netAppVolume;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatastoreArgs].
  /// [clusterName] Name of the cluster
  /// [datastoreName] Name of the datastore
  /// [diskPoolVolume] An iSCSI volume
  /// [elasticSanVolume] An Elastic SAN volume
  /// [netAppVolume] An Azure NetApp Files volume
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DatastoreArgs({
    required String clusterName,
    String? datastoreName,
    DiskPoolVolume? diskPoolVolume,
    ElasticSanVolume? elasticSanVolume,
    NetAppVolume? netAppVolume,
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      datastoreName = pulumi.Input.asOptionalInput<String>(datastoreName),
      diskPoolVolume = pulumi.Input.asOptionalInput<DiskPoolVolume>(diskPoolVolume),
      elasticSanVolume = pulumi.Input.asOptionalInput<ElasticSanVolume>(elasticSanVolume),
      netAppVolume = pulumi.Input.asOptionalInput<NetAppVolume>(netAppVolume),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'datastoreName': ?datastoreName,
      'diskPoolVolume': ?pulumi.Input.mapOptionalInputValue<DiskPoolVolume, Map<String, dynamic>>(diskPoolVolume, (value) => value.toMap()),
      'elasticSanVolume': ?pulumi.Input.mapOptionalInputValue<ElasticSanVolume, Map<String, dynamic>>(elasticSanVolume, (value) => value.toMap()),
      'netAppVolume': ?pulumi.Input.mapOptionalInputValue<NetAppVolume, Map<String, dynamic>>(netAppVolume, (value) => value.toMap()),
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      clusterName: map['clusterName'] as String,
      datastoreName: map['datastoreName'] == null ? null : map['datastoreName'] as String,
      diskPoolVolume: map['diskPoolVolume'] == null ? null : DiskPoolVolume.fromMap((map['diskPoolVolume'] as Map).cast<String, dynamic>()),
      elasticSanVolume: map['elasticSanVolume'] == null ? null : ElasticSanVolume.fromMap((map['elasticSanVolume'] as Map).cast<String, dynamic>()),
      netAppVolume: map['netAppVolume'] == null ? null : NetAppVolume.fromMap((map['netAppVolume'] as Map).cast<String, dynamic>()),
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

