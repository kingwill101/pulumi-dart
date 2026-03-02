// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emr_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_emr_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// The cluster name.
  final pulumi.Input<String>? clusterName;
  /// The cluster type list.
  final pulumi.Input<List<String>>? clusterTypeLists;
  /// How to create a cluster. Valid values: `ON-DEMAND`, `MANUAL`.
  final pulumi.Input<String>? createType;
  /// The default status.
  final pulumi.Input<bool>? defaultStatus;
  /// The hosting type of the cluster. Valid values: `HALF_MANAGED`, `MANAGED`.
  final pulumi.Input<String>? depositType;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Cluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// The is desc.
  final pulumi.Input<bool>? isDesc;
  /// The host type of the cluster. The default is ECS. Valid values: `DOCKER`, `ECS`, `PYHSICAL_MACHINE`, `ECS_FROM_ECM_HOSTPOOL`.
  final pulumi.Input<String>? machineType;
  /// A regex string to filter results by Cluster name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The Resource Group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The status list. Valid values: `ABNORMAL`, `CREATE_FAILED`, `CREATING`, `IDLE`, `RELEASED`, `RELEASE_FAILED`, `RELEASING`, `RUNNING`, `WAIT_FOR_PAY`.
  final pulumi.Input<List<String>>? statusLists;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetClustersArgs].
  /// [clusterName] The cluster name.
  /// [clusterTypeLists] The cluster type list.
  /// [createType] How to create a cluster. Valid values: `ON-DEMAND`, `MANUAL`.
  /// [defaultStatus] The default status.
  /// [depositType] The hosting type of the cluster. Valid values: `HALF_MANAGED`, `MANAGED`.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Cluster IDs.
  /// [isDesc] The is desc.
  /// [machineType] The host type of the cluster. The default is ECS. Valid values: `DOCKER`, `ECS`, `PYHSICAL_MACHINE`, `ECS_FROM_ECM_HOSTPOOL`.
  /// [nameRegex] A regex string to filter results by Cluster name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The Resource Group ID.
  /// [statusLists] The status list. Valid values: `ABNORMAL`, `CREATE_FAILED`, `CREATING`, `IDLE`, `RELEASED`, `RELEASE_FAILED`, `RELEASING`, `RUNNING`, `WAIT_FOR_PAY`.
  /// [vpcId] The VPC ID.
  GetClustersArgs({
    this.clusterName,
    this.clusterTypeLists,
    this.createType,
    this.defaultStatus,
    this.depositType,
    this.enableDetails,
    this.ids,
    this.isDesc,
    this.machineType,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.statusLists,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'clusterTypeLists': ?clusterTypeLists,
      'createType': ?createType,
      'defaultStatus': ?defaultStatus,
      'depositType': ?depositType,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'isDesc': ?isDesc,
      'machineType': ?machineType,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'statusLists': ?statusLists,
      'vpcId': ?vpcId,
    };
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      clusterTypeLists: map['clusterTypeLists'] == null ? null : ((map['clusterTypeLists']! as List).cast<String>()).input(),
      createType: map['createType'] == null ? null : (map['createType']! as String).input(),
      defaultStatus: map['defaultStatus'] == null ? null : (map['defaultStatus']! as bool).input(),
      depositType: map['depositType'] == null ? null : (map['depositType']! as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      isDesc: map['isDesc'] == null ? null : (map['isDesc']! as bool).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      statusLists: map['statusLists'] == null ? null : ((map['statusLists']! as List).cast<String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

