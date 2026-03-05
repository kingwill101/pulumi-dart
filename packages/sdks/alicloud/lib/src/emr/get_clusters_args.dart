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
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterTypeLists: (() { final guardedValue = map['clusterTypeLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createType: (() { final guardedValue = map['createType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultStatus: (() { final guardedValue = map['defaultStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      depositType: (() { final guardedValue = map['depositType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isDesc: (() { final guardedValue = map['isDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusLists: (() { final guardedValue = map['statusLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

