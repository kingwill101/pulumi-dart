// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_config_response.dart';
import 'certificate.dart';
import 'cluster_health.dart';
import 'cluster_status_enum_value.dart';
import 'connector_config_response.dart';
import 'encryption_config.dart';
import 'identity.dart';
import 'kubernetes_network_config_response.dart';
import 'logging.dart';
import 'outpost_config_response.dart';
import 'vpc_config_response.dart';

/// Definition of awsEksCluster
class AwsEksClusterProperties {
  /// <p>The access configuration for the cluster.</p>
  final AccessConfigResponse? accessConfig;
  /// <p>The Amazon Resource Name (ARN) of the cluster.</p>
  final String? arn;
  /// <p>The <code>certificate-authority-data</code> for your cluster.</p>
  final Certificate? certificateAuthority;
  /// <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
  final String? clientRequestToken;
  /// <p>The configuration used to connect to a cluster for registration.</p>
  final ConnectorConfigResponse? connectorConfig;
  /// <p>The Unix epoch timestamp at object creation.</p>
  final String? createdAt;
  /// <p>The encryption configuration for the cluster.</p>
  final List<EncryptionConfig>? encryptionConfig;
  /// <p>The endpoint for your Kubernetes API server.</p>
  final String? endpoint;
  /// <p>An object representing the health of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.</p>
  final ClusterHealth? health;
  /// <p>The ID of your local Amazon EKS cluster on an Amazon Web Services Outpost. This property isn't available for an Amazon EKS cluster on the Amazon Web Services cloud.</p>
  final String? id;
  /// <p>The identity provider information for the cluster.</p>
  final Identity? identity;
  /// <p>The Kubernetes network configuration for the cluster.</p>
  final KubernetesNetworkConfigResponse? kubernetesNetworkConfig;
  /// <p>The logging configuration for your cluster.</p>
  final Logging? logging;
  /// <p>The name of your cluster.</p>
  final String? name;
  /// <p>An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.</p>
  final OutpostConfigResponse? outpostConfig;
  /// <p>The platform version of your Amazon EKS cluster. For more information about clusters deployed on the Amazon Web Services Cloud, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html'>Platform versions</a> in the <i> <i>Amazon EKS User Guide</i> </i>. For more information about local clusters deployed on an Outpost, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-platform-versions.html'>Amazon EKS local cluster platform versions</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>
  final String? platformVersion;
  /// <p>The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html'>Cluster VPC considerations</a> and <a href='https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html'>Cluster security group considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
  final VpcConfigResponse? resourcesVpcConfig;
  /// <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to Amazon Web Services API operations on your behalf.</p>
  final String? roleArn;
  /// <p>The current status of the cluster.</p>
  final ClusterStatusEnumValue? status;
  /// <p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other cluster or Amazon Web Services resources.</p>
  final Map<String, String>? tags;
  /// <p>The Kubernetes server version for the cluster.</p>
  final String? version;

  /// Creates a new [AwsEksClusterProperties].
  /// [accessConfig] <p>The access configuration for the cluster.</p>
  /// [arn] <p>The Amazon Resource Name (ARN) of the cluster.</p>
  /// [certificateAuthority] <p>The <code>certificate-authority-data</code> for your cluster.</p>
  /// [clientRequestToken] <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
  /// [connectorConfig] <p>The configuration used to connect to a cluster for registration.</p>
  /// [createdAt] <p>The Unix epoch timestamp at object creation.</p>
  /// [encryptionConfig] <p>The encryption configuration for the cluster.</p>
  /// [endpoint] <p>The endpoint for your Kubernetes API server.</p>
  /// [health] <p>An object representing the health of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.</p>
  /// [id] <p>The ID of your local Amazon EKS cluster on an Amazon Web Services Outpost. This property isn't available for an Amazon EKS cluster on the Amazon Web Services cloud.</p>
  /// [identity] <p>The identity provider information for the cluster.</p>
  /// [kubernetesNetworkConfig] <p>The Kubernetes network configuration for the cluster.</p>
  /// [logging] <p>The logging configuration for your cluster.</p>
  /// [name] <p>The name of your cluster.</p>
  /// [outpostConfig] <p>An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.</p>
  /// [platformVersion] <p>The platform version of your Amazon EKS cluster. For more information about clusters deployed on the Amazon Web Services Cloud, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html'>Platform versions</a> in the <i> <i>Amazon EKS User Guide</i> </i>. For more information about local clusters deployed on an Outpost, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-platform-versions.html'>Amazon EKS local cluster platform versions</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>
  /// [resourcesVpcConfig] <p>The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html'>Cluster VPC considerations</a> and <a href='https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html'>Cluster security group considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
  /// [roleArn] <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to Amazon Web Services API operations on your behalf.</p>
  /// [status] <p>The current status of the cluster.</p>
  /// [tags] <p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other cluster or Amazon Web Services resources.</p>
  /// [version] <p>The Kubernetes server version for the cluster.</p>
  AwsEksClusterProperties({
    this.accessConfig,
    this.arn,
    this.certificateAuthority,
    this.clientRequestToken,
    this.connectorConfig,
    this.createdAt,
    this.encryptionConfig,
    this.endpoint,
    this.health,
    this.id,
    this.identity,
    this.kubernetesNetworkConfig,
    this.logging,
    this.name,
    this.outpostConfig,
    this.platformVersion,
    this.resourcesVpcConfig,
    this.roleArn,
    this.status,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': ?accessConfig == null ? null : accessConfig!.toMap(),
      'arn': ?arn,
      'certificateAuthority': ?certificateAuthority == null ? null : certificateAuthority!.toMap(),
      'clientRequestToken': ?clientRequestToken,
      'connectorConfig': ?connectorConfig == null ? null : connectorConfig!.toMap(),
      'createdAt': ?createdAt,
      'encryptionConfig': ?encryptionConfig == null ? null : pulumi.Input.encodeList<EncryptionConfig, Map<String, dynamic>>(encryptionConfig!, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'health': ?health == null ? null : health!.toMap(),
      'id': ?id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kubernetesNetworkConfig': ?kubernetesNetworkConfig == null ? null : kubernetesNetworkConfig!.toMap(),
      'logging': ?logging == null ? null : logging!.toMap(),
      'name': ?name,
      'outpostConfig': ?outpostConfig == null ? null : outpostConfig!.toMap(),
      'platformVersion': ?platformVersion,
      'resourcesVpcConfig': ?resourcesVpcConfig == null ? null : resourcesVpcConfig!.toMap(),
      'roleArn': ?roleArn,
      'status': ?status == null ? null : status!.toMap(),
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory AwsEksClusterProperties.fromMap(Map<String, dynamic> map) {
    return AwsEksClusterProperties(
      accessConfig: map['accessConfig'] == null ? null : AccessConfigResponse.fromMap((map['accessConfig'] as Map).cast<String, dynamic>()),
      arn: map['arn'] == null ? null : map['arn'] as String,
      certificateAuthority: map['certificateAuthority'] == null ? null : Certificate.fromMap((map['certificateAuthority'] as Map).cast<String, dynamic>()),
      clientRequestToken: map['clientRequestToken'] == null ? null : map['clientRequestToken'] as String,
      connectorConfig: map['connectorConfig'] == null ? null : ConnectorConfigResponse.fromMap((map['connectorConfig'] as Map).cast<String, dynamic>()),
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Input.decodeList<EncryptionConfig>(map['encryptionConfig'], (value) => EncryptionConfig.fromMap((value as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      health: map['health'] == null ? null : ClusterHealth.fromMap((map['health'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      identity: map['identity'] == null ? null : Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kubernetesNetworkConfig: map['kubernetesNetworkConfig'] == null ? null : KubernetesNetworkConfigResponse.fromMap((map['kubernetesNetworkConfig'] as Map).cast<String, dynamic>()),
      logging: map['logging'] == null ? null : Logging.fromMap((map['logging'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      outpostConfig: map['outpostConfig'] == null ? null : OutpostConfigResponse.fromMap((map['outpostConfig'] as Map).cast<String, dynamic>()),
      platformVersion: map['platformVersion'] == null ? null : map['platformVersion'] as String,
      resourcesVpcConfig: map['resourcesVpcConfig'] == null ? null : VpcConfigResponse.fromMap((map['resourcesVpcConfig'] as Map).cast<String, dynamic>()),
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      status: map['status'] == null ? null : ClusterStatusEnumValue.fromMap((map['status'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

