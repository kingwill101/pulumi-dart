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
  /// &lt;p&gt;The access configuration for the cluster.&lt;/p&gt;
  final pulumi.Input<AccessConfigResponse>? accessConfig;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the cluster.&lt;/p&gt;
  final pulumi.Input<String>? arn;
  /// &lt;p&gt;The &lt;code&gt;certificate-authority-data&lt;/code&gt; for your cluster.&lt;/p&gt;
  final pulumi.Input<Certificate>? certificateAuthority;
  /// &lt;p&gt;A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.&lt;/p&gt;
  final pulumi.Input<String>? clientRequestToken;
  /// &lt;p&gt;The configuration used to connect to a cluster for registration.&lt;/p&gt;
  final pulumi.Input<ConnectorConfigResponse>? connectorConfig;
  /// &lt;p&gt;The Unix epoch timestamp at object creation.&lt;/p&gt;
  final pulumi.Input<String>? createdAt;
  /// &lt;p&gt;The encryption configuration for the cluster.&lt;/p&gt;
  final pulumi.Input<List<EncryptionConfig>>? encryptionConfig;
  /// &lt;p&gt;The endpoint for your Kubernetes API server.&lt;/p&gt;
  final pulumi.Input<String>? endpoint;
  /// &lt;p&gt;An object representing the health of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.&lt;/p&gt;
  final pulumi.Input<ClusterHealth>? health;
  /// &lt;p&gt;The ID of your local Amazon EKS cluster on an Amazon Web Services Outpost. This property isn't available for an Amazon EKS cluster on the Amazon Web Services cloud.&lt;/p&gt;
  final pulumi.Input<String>? id;
  /// &lt;p&gt;The identity provider information for the cluster.&lt;/p&gt;
  final pulumi.Input<Identity>? identity;
  /// &lt;p&gt;The Kubernetes network configuration for the cluster.&lt;/p&gt;
  final pulumi.Input<KubernetesNetworkConfigResponse>? kubernetesNetworkConfig;
  /// &lt;p&gt;The logging configuration for your cluster.&lt;/p&gt;
  final pulumi.Input<Logging>? logging;
  /// &lt;p&gt;The name of your cluster.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// &lt;p&gt;An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.&lt;/p&gt;
  final pulumi.Input<OutpostConfigResponse>? outpostConfig;
  /// &lt;p&gt;The platform version of your Amazon EKS cluster. For more information about clusters deployed on the Amazon Web Services Cloud, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html'&gt;Platform versions&lt;/a&gt; in the &lt;i&gt; &lt;i&gt;Amazon EKS User Guide&lt;/i&gt; &lt;/i&gt;. For more information about local clusters deployed on an Outpost, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-platform-versions.html'&gt;Amazon EKS local cluster platform versions&lt;/a&gt; in the &lt;i&gt; &lt;i&gt;Amazon EKS User Guide&lt;/i&gt; &lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String>? platformVersion;
  /// &lt;p&gt;The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html'&gt;Cluster VPC considerations&lt;/a&gt; and &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html'&gt;Cluster security group considerations&lt;/a&gt; in the &lt;i&gt;Amazon EKS User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<VpcConfigResponse>? resourcesVpcConfig;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to Amazon Web Services API operations on your behalf.&lt;/p&gt;
  final pulumi.Input<String>? roleArn;
  /// &lt;p&gt;The current status of the cluster.&lt;/p&gt;
  final pulumi.Input<ClusterStatusEnumValue>? status;
  /// &lt;p&gt;Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other cluster or Amazon Web Services resources.&lt;/p&gt;
  final pulumi.Input<Map<String, String>>? tags;
  /// &lt;p&gt;The Kubernetes server version for the cluster.&lt;/p&gt;
  final pulumi.Input<String>? version;

  /// Creates a new [AwsEksClusterProperties].
  /// [accessConfig] &lt;p&gt;The access configuration for the cluster.&lt;/p&gt;
  /// [arn] &lt;p&gt;The Amazon Resource Name (ARN) of the cluster.&lt;/p&gt;
  /// [certificateAuthority] &lt;p&gt;The &lt;code&gt;certificate-authority-data&lt;/code&gt; for your cluster.&lt;/p&gt;
  /// [clientRequestToken] &lt;p&gt;A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.&lt;/p&gt;
  /// [connectorConfig] &lt;p&gt;The configuration used to connect to a cluster for registration.&lt;/p&gt;
  /// [createdAt] &lt;p&gt;The Unix epoch timestamp at object creation.&lt;/p&gt;
  /// [encryptionConfig] &lt;p&gt;The encryption configuration for the cluster.&lt;/p&gt;
  /// [endpoint] &lt;p&gt;The endpoint for your Kubernetes API server.&lt;/p&gt;
  /// [health] &lt;p&gt;An object representing the health of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.&lt;/p&gt;
  /// [id] &lt;p&gt;The ID of your local Amazon EKS cluster on an Amazon Web Services Outpost. This property isn't available for an Amazon EKS cluster on the Amazon Web Services cloud.&lt;/p&gt;
  /// [identity] &lt;p&gt;The identity provider information for the cluster.&lt;/p&gt;
  /// [kubernetesNetworkConfig] &lt;p&gt;The Kubernetes network configuration for the cluster.&lt;/p&gt;
  /// [logging] &lt;p&gt;The logging configuration for your cluster.&lt;/p&gt;
  /// [name] &lt;p&gt;The name of your cluster.&lt;/p&gt;
  /// [outpostConfig] &lt;p&gt;An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services Outpost. This object isn't available for clusters on the Amazon Web Services cloud.&lt;/p&gt;
  /// [platformVersion] &lt;p&gt;The platform version of your Amazon EKS cluster. For more information about clusters deployed on the Amazon Web Services Cloud, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html'&gt;Platform versions&lt;/a&gt; in the &lt;i&gt; &lt;i&gt;Amazon EKS User Guide&lt;/i&gt; &lt;/i&gt;. For more information about local clusters deployed on an Outpost, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-platform-versions.html'&gt;Amazon EKS local cluster platform versions&lt;/a&gt; in the &lt;i&gt; &lt;i&gt;Amazon EKS User Guide&lt;/i&gt; &lt;/i&gt;.&lt;/p&gt;
  /// [resourcesVpcConfig] &lt;p&gt;The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html'&gt;Cluster VPC considerations&lt;/a&gt; and &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html'&gt;Cluster security group considerations&lt;/a&gt; in the &lt;i&gt;Amazon EKS User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [roleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to Amazon Web Services API operations on your behalf.&lt;/p&gt;
  /// [status] &lt;p&gt;The current status of the cluster.&lt;/p&gt;
  /// [tags] &lt;p&gt;Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other cluster or Amazon Web Services resources.&lt;/p&gt;
  /// [version] &lt;p&gt;The Kubernetes server version for the cluster.&lt;/p&gt;
  const AwsEksClusterProperties({
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
      accessConfig: (() { final guardedValue = map['accessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Certificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientRequestToken: (() { final guardedValue = map['clientRequestToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorConfig: (() { final guardedValue = map['connectorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EncryptionConfig>(guardedValue, (value) => EncryptionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterHealth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesNetworkConfig: (() { final guardedValue = map['kubernetesNetworkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesNetworkConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Logging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostConfig: (() { final guardedValue = map['outpostConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OutpostConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcesVpcConfig: (() { final guardedValue = map['resourcesVpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
