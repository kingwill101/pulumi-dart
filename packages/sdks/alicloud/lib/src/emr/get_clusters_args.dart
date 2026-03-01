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
    pulumi.Output<String>? clusterName,
    pulumi.Output<List<String>>? clusterTypeLists,
    pulumi.Output<String>? createType,
    pulumi.Output<bool>? defaultStatus,
    pulumi.Output<String>? depositType,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? isDesc,
    pulumi.Output<String>? machineType,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? statusLists,
    pulumi.Output<String>? vpcId,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterTypeLists = pulumi.Input.asOptionalInput<List<String>>(clusterTypeLists),
      createType = pulumi.Input.asOptionalInput<String>(createType),
      defaultStatus = pulumi.Input.asOptionalInput<bool>(defaultStatus),
      depositType = pulumi.Input.asOptionalInput<String>(depositType),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      isDesc = pulumi.Input.asOptionalInput<bool>(isDesc),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      statusLists = pulumi.Input.asOptionalInput<List<String>>(statusLists),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterTypeLists: map['clusterTypeLists'] == null ? null : pulumi.Output.create<List<String>>((map['clusterTypeLists'] as List).cast<String>()),
      createType: map['createType'] == null ? null : pulumi.Output.create<String>(map['createType'] as String),
      defaultStatus: map['defaultStatus'] == null ? null : pulumi.Output.create<bool>(map['defaultStatus'] as bool),
      depositType: map['depositType'] == null ? null : pulumi.Output.create<String>(map['depositType'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      isDesc: map['isDesc'] == null ? null : pulumi.Output.create<bool>(map['isDesc'] as bool),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      statusLists: map['statusLists'] == null ? null : pulumi.Output.create<List<String>>((map['statusLists'] as List).cast<String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

