// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_application.dart';
import 'get_clusters_cluster_post_install_script.dart';

class GetClustersCluster {
  /// The server type of the account.
  final String accountType;
  /// A list of clustered applications.
  final List<GetClustersClusterApplication> applications;
  /// The version number of the client used by the cluster.
  final String clientVersion;
  /// The id of E-HPC Cluster.
  final String clusterId;
  /// The name of E-HPC cluster.
  final String clusterName;
  /// The number of compute nodes in the cluster.
  final int computeCount;
  /// Cluster compute node specifications.
  final String computeInstanceType;
  /// The creation time of the resource.
  final String createTime;
  /// Cluster deployment mode. Possible values:
  /// - Standard: separate deployment of account nodes, scheduling nodes, login nodes, and compute nodes.
  /// - Advanced:HA mode deployment.
  /// - Simple: the account node and the scheduling node are deployed on one node, and the login node and the compute node are deployed separately.
  /// - Tiny: account nodes, scheduling nodes, and login nodes are deployed on one node, and compute nodes are deployed separately.
  /// - OneBox: account node, scheduling node, login node and compute node are deployed on one node.
  final String deployMode;
  /// The description of E-HPC cluster.
  final String description;
  /// Whether to turn on high availability. > If high availability is enabled, each control role in the cluster will use two primary and secondary instances.
  final bool haEnable;
  /// The ID of the Cluster.
  final String id;
  /// The ID of the Image.
  final String imageId;
  /// The type of the image.
  final String imageOwnerAlias;
  /// The number of cluster login nodes. Only configuration 1 is supported.
  final int loginCount;
  /// Cluster login node specifications.
  final String loginInstanceType;
  /// The number of control nodes.
  final int managerCount;
  /// The instance type of manager nodes.
  final String managerInstanceType;
  /// The image tag of the operating system.
  final String osTag;
  /// List of post-installation scripts.
  final List<GetClustersClusterPostInstallScript> postInstallScripts;
  /// Mount the remote directory of the shared storage.
  final String remoteDirectory;
  /// The SccCluster ID used by the cluster. If the cluster is not an SCC model, it is empty.
  final String sccClusterId;
  /// Dispatch server type.
  final String schedulerType;
  /// The ID of the security group.
  final String securityGroupId;
  /// The status of the resource. Valid values:
  final String status;
  /// The ID of the NAS instance. Currently, you cannot automatically create an Alibaba Cloud NAS instance.
  final String volumeId;
  /// The mount target of the file system. Mount targets cannot be automatically created for NAS file systems.
  final String volumeMountpoint;
  /// The type of the protocol that is used by the file system.
  final String volumeProtocol;
  /// The type of the network shared storage. Valid value: NAS.
  final String volumeType;
  /// The ID of the VPC network.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// The available zone ID.
  final String zoneId;

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
      'applications': pulumi.Input.encodeList<GetClustersClusterApplication, Map<String, dynamic>>(applications, (value) => value.toMap()),
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
      'postInstallScripts': pulumi.Input.encodeList<GetClustersClusterPostInstallScript, Map<String, dynamic>>(postInstallScripts, (value) => value.toMap()),
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
      accountType: map['accountType'] as String,
      applications: pulumi.Input.decodeList<GetClustersClusterApplication>(map['applications'], (value) => GetClustersClusterApplication.fromMap((value as Map).cast<String, dynamic>())),
      clientVersion: map['clientVersion'] as String,
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      computeCount: map['computeCount'] as int,
      computeInstanceType: map['computeInstanceType'] as String,
      createTime: map['createTime'] as String,
      deployMode: map['deployMode'] as String,
      description: map['description'] as String,
      haEnable: map['haEnable'] as bool,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      imageOwnerAlias: map['imageOwnerAlias'] as String,
      loginCount: map['loginCount'] as int,
      loginInstanceType: map['loginInstanceType'] as String,
      managerCount: map['managerCount'] as int,
      managerInstanceType: map['managerInstanceType'] as String,
      osTag: map['osTag'] as String,
      postInstallScripts: pulumi.Input.decodeList<GetClustersClusterPostInstallScript>(map['postInstallScripts'], (value) => GetClustersClusterPostInstallScript.fromMap((value as Map).cast<String, dynamic>())),
      remoteDirectory: map['remoteDirectory'] as String,
      sccClusterId: map['sccClusterId'] as String,
      schedulerType: map['schedulerType'] as String,
      securityGroupId: map['securityGroupId'] as String,
      status: map['status'] as String,
      volumeId: map['volumeId'] as String,
      volumeMountpoint: map['volumeMountpoint'] as String,
      volumeProtocol: map['volumeProtocol'] as String,
      volumeType: map['volumeType'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

