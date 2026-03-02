// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_application.dart';
import 'get_clusters_cluster_post_install_script.dart';

class GetClustersCluster {
  /// The server type of the account.
  final pulumi.Input<String> accountType;
  /// A list of clustered applications.
  final pulumi.Input<List<GetClustersClusterApplication>> applications;
  /// The version number of the client used by the cluster.
  final pulumi.Input<String> clientVersion;
  /// The id of E-HPC Cluster.
  final pulumi.Input<String> clusterId;
  /// The name of E-HPC cluster.
  final pulumi.Input<String> clusterName;
  /// The number of compute nodes in the cluster.
  final pulumi.Input<int> computeCount;
  /// Cluster compute node specifications.
  final pulumi.Input<String> computeInstanceType;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// Cluster deployment mode. Possible values:
  /// - Standard: separate deployment of account nodes, scheduling nodes, login nodes, and compute nodes.
  /// - Advanced:HA mode deployment.
  /// - Simple: the account node and the scheduling node are deployed on one node, and the login node and the compute node are deployed separately.
  /// - Tiny: account nodes, scheduling nodes, and login nodes are deployed on one node, and compute nodes are deployed separately.
  /// - OneBox: account node, scheduling node, login node and compute node are deployed on one node.
  final pulumi.Input<String> deployMode;
  /// The description of E-HPC cluster.
  final pulumi.Input<String> description;
  /// Whether to turn on high availability. > If high availability is enabled, each control role in the cluster will use two primary and secondary instances.
  final pulumi.Input<bool> haEnable;
  /// The ID of the Cluster.
  final pulumi.Input<String> id;
  /// The ID of the Image.
  final pulumi.Input<String> imageId;
  /// The type of the image.
  final pulumi.Input<String> imageOwnerAlias;
  /// The number of cluster login nodes. Only configuration 1 is supported.
  final pulumi.Input<int> loginCount;
  /// Cluster login node specifications.
  final pulumi.Input<String> loginInstanceType;
  /// The number of control nodes.
  final pulumi.Input<int> managerCount;
  /// The instance type of manager nodes.
  final pulumi.Input<String> managerInstanceType;
  /// The image tag of the operating system.
  final pulumi.Input<String> osTag;
  /// List of post-installation scripts.
  final pulumi.Input<List<GetClustersClusterPostInstallScript>> postInstallScripts;
  /// Mount the remote directory of the shared storage.
  final pulumi.Input<String> remoteDirectory;
  /// The SccCluster ID used by the cluster. If the cluster is not an SCC model, it is empty.
  final pulumi.Input<String> sccClusterId;
  /// Dispatch server type.
  final pulumi.Input<String> schedulerType;
  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;
  /// The status of the resource. Valid values:
  final pulumi.Input<String> status;
  /// The ID of the NAS instance. Currently, you cannot automatically create an Alibaba Cloud NAS instance.
  final pulumi.Input<String> volumeId;
  /// The mount target of the file system. Mount targets cannot be automatically created for NAS file systems.
  final pulumi.Input<String> volumeMountpoint;
  /// The type of the protocol that is used by the file system.
  final pulumi.Input<String> volumeProtocol;
  /// The type of the network shared storage. Valid value: NAS.
  final pulumi.Input<String> volumeType;
  /// The ID of the VPC network.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The available zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetClustersCluster].
  /// [accountType] The server type of the account.
  /// [applications] A list of clustered applications.
  /// [clientVersion] The version number of the client used by the cluster.
  /// [clusterId] The id of E-HPC Cluster.
  /// [clusterName] The name of E-HPC cluster.
  /// [computeCount] The number of compute nodes in the cluster.
  /// [computeInstanceType] Cluster compute node specifications.
  /// [createTime] The creation time of the resource.
  /// [deployMode] Cluster deployment mode. Possible values:
  /// [description] The description of E-HPC cluster.
  /// [haEnable] Whether to turn on high availability. > If high availability is enabled, each control role in the cluster will use two primary and secondary instances.
  /// [id] The ID of the Cluster.
  /// [imageId] The ID of the Image.
  /// [imageOwnerAlias] The type of the image.
  /// [loginCount] The number of cluster login nodes. Only configuration 1 is supported.
  /// [loginInstanceType] Cluster login node specifications.
  /// [managerCount] The number of control nodes.
  /// [managerInstanceType] The instance type of manager nodes.
  /// [osTag] The image tag of the operating system.
  /// [postInstallScripts] List of post-installation scripts.
  /// [remoteDirectory] Mount the remote directory of the shared storage.
  /// [sccClusterId] The SccCluster ID used by the cluster. If the cluster is not an SCC model, it is empty.
  /// [schedulerType] Dispatch server type.
  /// [securityGroupId] The ID of the security group.
  /// [status] The status of the resource. Valid values:
  /// [volumeId] The ID of the NAS instance. Currently, you cannot automatically create an Alibaba Cloud NAS instance.
  /// [volumeMountpoint] The mount target of the file system. Mount targets cannot be automatically created for NAS file systems.
  /// [volumeProtocol] The type of the protocol that is used by the file system.
  /// [volumeType] The type of the network shared storage. Valid value: NAS.
  /// [vpcId] The ID of the VPC network.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The available zone ID.
  GetClustersCluster({
    required this.accountType,
    required this.applications,
    required this.clientVersion,
    required this.clusterId,
    required this.clusterName,
    required this.computeCount,
    required this.computeInstanceType,
    required this.createTime,
    required this.deployMode,
    required this.description,
    required this.haEnable,
    required this.id,
    required this.imageId,
    required this.imageOwnerAlias,
    required this.loginCount,
    required this.loginInstanceType,
    required this.managerCount,
    required this.managerInstanceType,
    required this.osTag,
    required this.postInstallScripts,
    required this.remoteDirectory,
    required this.sccClusterId,
    required this.schedulerType,
    required this.securityGroupId,
    required this.status,
    required this.volumeId,
    required this.volumeMountpoint,
    required this.volumeProtocol,
    required this.volumeType,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountType': accountType,
      'applications': pulumi.Input.mapInputValue<List<GetClustersClusterApplication>, List<Map<String, dynamic>>>(applications, (value) => pulumi.Input.encodeList<GetClustersClusterApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientVersion': clientVersion,
      'clusterId': clusterId,
      'clusterName': clusterName,
      'computeCount': computeCount,
      'computeInstanceType': computeInstanceType,
      'createTime': createTime,
      'deployMode': deployMode,
      'description': description,
      'haEnable': haEnable,
      'id': id,
      'imageId': imageId,
      'imageOwnerAlias': imageOwnerAlias,
      'loginCount': loginCount,
      'loginInstanceType': loginInstanceType,
      'managerCount': managerCount,
      'managerInstanceType': managerInstanceType,
      'osTag': osTag,
      'postInstallScripts': pulumi.Input.mapInputValue<List<GetClustersClusterPostInstallScript>, List<Map<String, dynamic>>>(postInstallScripts, (value) => pulumi.Input.encodeList<GetClustersClusterPostInstallScript, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteDirectory': remoteDirectory,
      'sccClusterId': sccClusterId,
      'schedulerType': schedulerType,
      'securityGroupId': securityGroupId,
      'status': status,
      'volumeId': volumeId,
      'volumeMountpoint': volumeMountpoint,
      'volumeProtocol': volumeProtocol,
      'volumeType': volumeType,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      accountType: (map['accountType'] as String).input(),
      applications: (pulumi.Input.decodeList<GetClustersClusterApplication>(map['applications'], (value) => GetClustersClusterApplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clientVersion: (map['clientVersion'] as String).input(),
      clusterId: (map['clusterId'] as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      computeCount: (map['computeCount'] as int).input(),
      computeInstanceType: (map['computeInstanceType'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      deployMode: (map['deployMode'] as String).input(),
      description: (map['description'] as String).input(),
      haEnable: (map['haEnable'] as bool).input(),
      id: (map['id'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      imageOwnerAlias: (map['imageOwnerAlias'] as String).input(),
      loginCount: (map['loginCount'] as int).input(),
      loginInstanceType: (map['loginInstanceType'] as String).input(),
      managerCount: (map['managerCount'] as int).input(),
      managerInstanceType: (map['managerInstanceType'] as String).input(),
      osTag: (map['osTag'] as String).input(),
      postInstallScripts: (pulumi.Input.decodeList<GetClustersClusterPostInstallScript>(map['postInstallScripts'], (value) => GetClustersClusterPostInstallScript.fromMap((value as Map).cast<String, dynamic>()))).input(),
      remoteDirectory: (map['remoteDirectory'] as String).input(),
      sccClusterId: (map['sccClusterId'] as String).input(),
      schedulerType: (map['schedulerType'] as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      status: (map['status'] as String).input(),
      volumeId: (map['volumeId'] as String).input(),
      volumeMountpoint: (map['volumeMountpoint'] as String).input(),
      volumeProtocol: (map['volumeProtocol'] as String).input(),
      volumeType: (map['volumeType'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

