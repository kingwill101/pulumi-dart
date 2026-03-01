// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_entry.dart';
import 'cluster_node_group_options.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;
import 'package:pulumi_aws/providers.dart' as pulumi_aws_providers;
import 'package:pulumi_kubernetes/core.dart' as pulumi_kubernetes_core;
import 'package:pulumi_kubernetes/providers.dart' as pulumi_kubernetes_providers;
import 'package:pulumi_kubernetes/storage_k8s_io.dart' as pulumi_kubernetes_storage_k8s_io;

/// Defines the core set of data associated with an EKS cluster, including the network in which it runs.
class CoreData {
  /// The access entries added to the cluster.
  final List<AccessEntry>? accessEntries;
  final pulumi_aws_providers.Aws? awsProvider;
  final pulumi_aws_eks.Cluster cluster;
  /// The IAM Role attached to the EKS Cluster
  final pulumi_aws_iam.Role clusterIamRole;
  final pulumi_aws_ec2.SecurityGroup? clusterSecurityGroup;
  final pulumi_kubernetes_core.ConfigMap? eksNodeAccess;
  final pulumi_aws_eks.ClusterEncryptionConfig? encryptionConfig;
  /// The EKS cluster's Kubernetes API server endpoint.
  final String endpoint;
  /// The Fargate profile used to manage which pods run on Fargate.
  final pulumi_aws_eks.FargateProfile? fargateProfile;
  /// The IAM instance roles for the cluster's nodes.
  final List<pulumi_aws_iam.Role> instanceRoles;
  /// The kubeconfig file for the cluster.
  final dynamic kubeconfig;
  /// The cluster's node group options.
  final ClusterNodeGroupOptions nodeGroupOptions;
  /// Tags attached to the security groups associated with the cluster's worker nodes.
  final Map<String, String>? nodeSecurityGroupTags;
  final pulumi_aws_iam.OpenIdConnectProvider? oidcProvider;
  /// List of subnet IDs for the private subnets.
  final List<String>? privateSubnetIds;
  final pulumi_kubernetes_providers.Kubernetes provider;
  /// List of subnet IDs for the public subnets.
  final List<String>? publicSubnetIds;
  /// The storage class used for persistent storage by the cluster.
  final Map<String, pulumi_kubernetes_storage_k8s_io.StorageClass>? storageClasses;
  /// List of subnet IDs for the EKS cluster.
  final List<String> subnetIds;
  /// A map of tags assigned to the EKS cluster.
  final Map<String, String>? tags;
  /// The VPC CNI for the cluster.
  final dynamic vpcCni;
  /// ID of the cluster's VPC.
  final String vpcId;

  /// Creates a new [CoreData].
  /// [accessEntries] The access entries added to the cluster.
  /// [awsProvider] Optional.
  /// [cluster] Required.
  /// [clusterIamRole] The IAM Role attached to the EKS Cluster
  /// [clusterSecurityGroup] Optional.
  /// [eksNodeAccess] Optional.
  /// [encryptionConfig] Optional.
  /// [endpoint] The EKS cluster's Kubernetes API server endpoint.
  /// [fargateProfile] The Fargate profile used to manage which pods run on Fargate.
  /// [instanceRoles] The IAM instance roles for the cluster's nodes.
  /// [kubeconfig] The kubeconfig file for the cluster.
  /// [nodeGroupOptions] The cluster's node group options.
  /// [nodeSecurityGroupTags] Tags attached to the security groups associated with the cluster's worker nodes.
  /// [oidcProvider] Optional.
  /// [privateSubnetIds] List of subnet IDs for the private subnets.
  /// [provider] Required.
  /// [publicSubnetIds] List of subnet IDs for the public subnets.
  /// [storageClasses] The storage class used for persistent storage by the cluster.
  /// [subnetIds] List of subnet IDs for the EKS cluster.
  /// [tags] A map of tags assigned to the EKS cluster.
  /// [vpcCni] The VPC CNI for the cluster.
  /// [vpcId] ID of the cluster's VPC.
  CoreData({
    this.accessEntries,
    this.awsProvider,
    required this.cluster,
    required this.clusterIamRole,
    this.clusterSecurityGroup,
    this.eksNodeAccess,
    this.encryptionConfig,
    required this.endpoint,
    this.fargateProfile,
    required this.instanceRoles,
    this.kubeconfig,
    required this.nodeGroupOptions,
    this.nodeSecurityGroupTags,
    this.oidcProvider,
    this.privateSubnetIds,
    required this.provider,
    this.publicSubnetIds,
    this.storageClasses,
    required this.subnetIds,
    this.tags,
    this.vpcCni,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEntries': ?accessEntries == null ? null : pulumi.Input.encodeList<AccessEntry, Map<String, dynamic>>(accessEntries!, (value) => value.toMap()),
      'awsProvider': ?awsProvider,
      'cluster': cluster,
      'clusterIamRole': clusterIamRole,
      'clusterSecurityGroup': ?clusterSecurityGroup,
      'eksNodeAccess': ?eksNodeAccess,
      'encryptionConfig': ?encryptionConfig == null ? null : encryptionConfig!.toMap(),
      'endpoint': endpoint,
      'fargateProfile': ?fargateProfile,
      'instanceRoles': instanceRoles,
      'kubeconfig': ?kubeconfig,
      'nodeGroupOptions': nodeGroupOptions.toMap(),
      'nodeSecurityGroupTags': ?nodeSecurityGroupTags,
      'oidcProvider': ?oidcProvider,
      'privateSubnetIds': ?privateSubnetIds,
      'provider': provider,
      'publicSubnetIds': ?publicSubnetIds,
      'storageClasses': ?storageClasses,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'vpcCni': ?vpcCni,
      'vpcId': vpcId,
    };
  }

  factory CoreData.fromMap(Map<String, dynamic> map) {
    return CoreData(
      accessEntries: map['accessEntries'] == null ? null : pulumi.Input.decodeList<AccessEntry>(map['accessEntries'], (value) => AccessEntry.fromMap((value as Map).cast<String, dynamic>())),
      awsProvider: map['awsProvider'] == null ? null : map['awsProvider'] as pulumi_aws_providers.Aws,
      cluster: map['cluster'] as pulumi_aws_eks.Cluster,
      clusterIamRole: map['clusterIamRole'] as pulumi_aws_iam.Role,
      clusterSecurityGroup: map['clusterSecurityGroup'] == null ? null : map['clusterSecurityGroup'] as pulumi_aws_ec2.SecurityGroup,
      eksNodeAccess: map['eksNodeAccess'] == null ? null : map['eksNodeAccess'] as pulumi_kubernetes_core.ConfigMap,
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi_aws_eks.ClusterEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
      fargateProfile: map['fargateProfile'] == null ? null : map['fargateProfile'] as pulumi_aws_eks.FargateProfile,
      instanceRoles: (map['instanceRoles'] as List).cast<pulumi_aws_iam.Role>(),
      kubeconfig: map['kubeconfig'] == null ? null : map['kubeconfig'],
      nodeGroupOptions: ClusterNodeGroupOptions.fromMap((map['nodeGroupOptions'] as Map).cast<String, dynamic>()),
      nodeSecurityGroupTags: map['nodeSecurityGroupTags'] == null ? null : (map['nodeSecurityGroupTags'] as Map).cast<String, String>(),
      oidcProvider: map['oidcProvider'] == null ? null : map['oidcProvider'] as pulumi_aws_iam.OpenIdConnectProvider,
      privateSubnetIds: map['privateSubnetIds'] == null ? null : (map['privateSubnetIds'] as List).cast<String>(),
      provider: map['provider'] as pulumi_kubernetes_providers.Kubernetes,
      publicSubnetIds: map['publicSubnetIds'] == null ? null : (map['publicSubnetIds'] as List).cast<String>(),
      storageClasses: map['storageClasses'] == null ? null : (map['storageClasses'] as Map).cast<String, pulumi_kubernetes_storage_k8s_io.StorageClass>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcCni: map['vpcCni'] == null ? null : map['vpcCni'],
      vpcId: map['vpcId'] as String,
    );
  }
}

