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

  /// Whether to turn on high availability. &gt; If high availability is enabled, each control role in the cluster will use two primary and secondary instances.
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
  final pulumi.Input<List<GetClustersClusterPostInstallScript>>
  postInstallScripts;

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
  /// [haEnable] Whether to turn on high availability. &gt; If high availability is enabled, each control role in the cluster will use two primary and secondary instances.
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
      'applications':
          pulumi.Input.mapInputValue<
            List<GetClustersClusterApplication>,
            List<Map<String, dynamic>>
          >(
            applications,
            (value) =>
                pulumi.Input.encodeList<
                  GetClustersClusterApplication,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'postInstallScripts':
          pulumi.Input.mapInputValue<
            List<GetClustersClusterPostInstallScript>,
            List<Map<String, dynamic>>
          >(
            postInstallScripts,
            (value) =>
                pulumi.Input.encodeList<
                  GetClustersClusterPostInstallScript,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      accountType: pulumi.Input.fromValue(map['accountType'] as String),
      applications: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetClustersClusterApplication>(
          map['applications']!,
          (value) => GetClustersClusterApplication.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      clientVersion: pulumi.Input.fromValue(map['clientVersion'] as String),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      computeCount: pulumi.Input.fromValue(map['computeCount'] as int),
      computeInstanceType: pulumi.Input.fromValue(
        map['computeInstanceType'] as String,
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deployMode: pulumi.Input.fromValue(map['deployMode'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      haEnable: pulumi.Input.fromValue(map['haEnable'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      imageOwnerAlias: pulumi.Input.fromValue(map['imageOwnerAlias'] as String),
      loginCount: pulumi.Input.fromValue(map['loginCount'] as int),
      loginInstanceType: pulumi.Input.fromValue(
        map['loginInstanceType'] as String,
      ),
      managerCount: pulumi.Input.fromValue(map['managerCount'] as int),
      managerInstanceType: pulumi.Input.fromValue(
        map['managerInstanceType'] as String,
      ),
      osTag: pulumi.Input.fromValue(map['osTag'] as String),
      postInstallScripts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetClustersClusterPostInstallScript>(
          map['postInstallScripts']!,
          (value) => GetClustersClusterPostInstallScript.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      remoteDirectory: pulumi.Input.fromValue(map['remoteDirectory'] as String),
      sccClusterId: pulumi.Input.fromValue(map['sccClusterId'] as String),
      schedulerType: pulumi.Input.fromValue(map['schedulerType'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
      volumeMountpoint: pulumi.Input.fromValue(
        map['volumeMountpoint'] as String,
      ),
      volumeProtocol: pulumi.Input.fromValue(map['volumeProtocol'] as String),
      volumeType: pulumi.Input.fromValue(map['volumeType'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
