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
  final pulumi.Input<AccessConfigResponse>? accessConfig;
  /// <p>The Amazon Resource Name (ARN) of the cluster.</p>
  final pulumi.Input<String>? arn;
  /// <p>The <code>certificate-authority-data</code> for your cluster.</p>
  final pulumi.Input<Certificate>? certificateAuthority;
  /// <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
  final pulumi.Input<String>? clientRequestToken;
  /// <p>The configuration used to connect to a cluster for registration.</p>
  final pulumi.Input<ConnectorConfigResponse>? connectorConfig;
  /// <p>The Unix epoch timestamp at object creation.</p>
  final pulumi.Input<String>? createdAt;
  /// <p>The encryption configuration for the cluster.</p>
  final pulumi.Input<List<EncryptionConfig>>? encryptionConfig;
  /// <p>The endpoint for your Kubernetes API server.</p>
  final pulumi.Input<String>? endpoint;
  /// <p>An object representing the health of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.</p>
  final pulumi.Input<ClusterHealth>? health;
  /// <p>The ID of your local Amazon EKS cluster on an Amazon Web Services Outpost. This property isn't available for an Amazon EKS cluster on the Amazon Web Services cloud.</p>
  final pulumi.Input<String>? id;
  /// <p>The identity provider information for the cluster.</p>
  final pulumi.Input<Identity>? identity;
  /// <p>The Kubernetes network configuration for the cluster.</p>
  final pulumi.Input<KubernetesNetworkConfigResponse>? kubernetesNetworkConfig;
  /// <p>The logging configuration for your cluster.</p>
  final pulumi.Input<Logging>? logging;
  /// <p>The name of your cluster.</p>
  final pulumi.Input<String>? name;
  /// <p>An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.</p>
  final pulumi.Input<OutpostConfigResponse>? outpostConfig;
  /// <p>The platform version of your Amazon EKS cluster. For more information about clusters deployed on the Amazon Web Services Cloud, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html'>Platform versions</a> in the <i> <i>Amazon EKS User Guide</i> </i>. For more information about local clusters deployed on an Outpost, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-platform-versions.html'>Amazon EKS local cluster platform versions</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>
  final pulumi.Input<String>? platformVersion;
  /// <p>The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html'>Cluster VPC considerations</a> and <a href='https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html'>Cluster security group considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
  final pulumi.Input<VpcConfigResponse>? resourcesVpcConfig;
  /// <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to Amazon Web Services API operations on your behalf.</p>
  final pulumi.Input<String>? roleArn;
  /// <p>The current status of the cluster.</p>
  final pulumi.Input<ClusterStatusEnumValue>? status;
  /// <p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other cluster or Amazon Web Services resources.</p>
  final pulumi.Input<Map<String, String>>? tags;
  /// <p>The Kubernetes server version for the cluster.</p>
  final pulumi.Input<String>? version;

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
      'accessConfig': ?pulumi.Input.mapOptionalInputValue<AccessConfigResponse, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'arn': ?arn,
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<Certificate, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
      'clientRequestToken': ?clientRequestToken,
      'connectorConfig': ?pulumi.Input.mapOptionalInputValue<ConnectorConfigResponse, Map<String, dynamic>>(connectorConfig, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<List<EncryptionConfig>, List<Map<String, dynamic>>>(encryptionConfig, (value) => pulumi.Input.encodeList<EncryptionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpoint': ?endpoint,
      'health': ?pulumi.Input.mapOptionalInputValue<ClusterHealth, Map<String, dynamic>>(health, (value) => value.toMap()),
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kubernetesNetworkConfig': ?pulumi.Input.mapOptionalInputValue<KubernetesNetworkConfigResponse, Map<String, dynamic>>(kubernetesNetworkConfig, (value) => value.toMap()),
      'logging': ?pulumi.Input.mapOptionalInputValue<Logging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'name': ?name,
      'outpostConfig': ?pulumi.Input.mapOptionalInputValue<OutpostConfigResponse, Map<String, dynamic>>(outpostConfig, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'resourcesVpcConfig': ?pulumi.Input.mapOptionalInputValue<VpcConfigResponse, Map<String, dynamic>>(resourcesVpcConfig, (value) => value.toMap()),
      'roleArn': ?roleArn,
      'status': ?pulumi.Input.mapOptionalInputValue<ClusterStatusEnumValue, Map<String, dynamic>>(status, (value) => value.toMap()),
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory AwsEksClusterProperties.fromMap(Map<String, dynamic> map) {
    return AwsEksClusterProperties(
      accessConfig: map['accessConfig'] == null ? null : (AccessConfigResponse.fromMap((map['accessConfig']! as Map).cast<String, dynamic>())).input(),
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      certificateAuthority: map['certificateAuthority'] == null ? null : (Certificate.fromMap((map['certificateAuthority']! as Map).cast<String, dynamic>())).input(),
      clientRequestToken: map['clientRequestToken'] == null ? null : (map['clientRequestToken']! as String).input(),
      connectorConfig: map['connectorConfig'] == null ? null : (ConnectorConfigResponse.fromMap((map['connectorConfig']! as Map).cast<String, dynamic>())).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (pulumi.Input.decodeList<EncryptionConfig>(map['encryptionConfig']!, (value) => EncryptionConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      health: map['health'] == null ? null : (ClusterHealth.fromMap((map['health']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kubernetesNetworkConfig: map['kubernetesNetworkConfig'] == null ? null : (KubernetesNetworkConfigResponse.fromMap((map['kubernetesNetworkConfig']! as Map).cast<String, dynamic>())).input(),
      logging: map['logging'] == null ? null : (Logging.fromMap((map['logging']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outpostConfig: map['outpostConfig'] == null ? null : (OutpostConfigResponse.fromMap((map['outpostConfig']! as Map).cast<String, dynamic>())).input(),
      platformVersion: map['platformVersion'] == null ? null : (map['platformVersion']! as String).input(),
      resourcesVpcConfig: map['resourcesVpcConfig'] == null ? null : (VpcConfigResponse.fromMap((map['resourcesVpcConfig']! as Map).cast<String, dynamic>())).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      status: map['status'] == null ? null : (ClusterStatusEnumValue.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

