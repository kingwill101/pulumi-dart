// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_encryption_detail.dart';
import 'cluster_multi_region_properties.dart';
import 'cluster_timeouts.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// ARN of the Cluster.
  final pulumi.Input<String>? arn;
  /// Whether deletion protection is enabled in this cluster.
  /// Default value is `false`.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Encryption configuration details for the DSQL Cluster.
  final pulumi.Input<List<ClusterEncryptionDetail>>? encryptionDetails;
  /// Destroys cluster even if `deletion_protection_enabled` is set to `true`.
  /// Default value is `false`.
  final pulumi.Input<bool>? forceDestroy;
  /// Cluster Identifier.
  final pulumi.Input<String>? identifier;
  /// The ARN of the AWS KMS key that encrypts data in the DSQL Cluster, or `"AWS_OWNED_KMS_KEY"`.
  final pulumi.Input<String>? kmsEncryptionKey;
  /// Multi-region properties of the DSQL Cluster.
  final pulumi.Input<ClusterMultiRegionProperties>? multiRegionProperties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of tags to be associated with the AWS DSQL Cluster resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ClusterTimeouts>? timeouts;
  /// The DSQL Cluster's VPC endpoint service name.
  final pulumi.Input<String>? vpcEndpointServiceName;

  /// Creates a new [ClusterState].
  /// [arn] ARN of the Cluster.
  /// [deletionProtectionEnabled] Whether deletion protection is enabled in this cluster.
  /// [encryptionDetails] Encryption configuration details for the DSQL Cluster.
  /// [forceDestroy] Destroys cluster even if `deletion_protection_enabled` is set to `true`.
  /// [identifier] Cluster Identifier.
  /// [kmsEncryptionKey] The ARN of the AWS KMS key that encrypts data in the DSQL Cluster, or `"AWS_OWNED_KMS_KEY"`.
  /// [multiRegionProperties] Multi-region properties of the DSQL Cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Set of tags to be associated with the AWS DSQL Cluster resource.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcEndpointServiceName] The DSQL Cluster's VPC endpoint service name.
  ClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? deletionProtectionEnabled,
    pulumi.Output<List<ClusterEncryptionDetail>>? encryptionDetails,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? kmsEncryptionKey,
    pulumi.Output<ClusterMultiRegionProperties>? multiRegionProperties,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ClusterTimeouts>? timeouts,
    pulumi.Output<String>? vpcEndpointServiceName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deletionProtectionEnabled = pulumi.Input.asOptionalInput<bool>(deletionProtectionEnabled),
      encryptionDetails = pulumi.Input.asOptionalInput<List<ClusterEncryptionDetail>>(encryptionDetails),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      kmsEncryptionKey = pulumi.Input.asOptionalInput<String>(kmsEncryptionKey),
      multiRegionProperties = pulumi.Input.asOptionalInput<ClusterMultiRegionProperties>(multiRegionProperties),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ClusterTimeouts>(timeouts),
      vpcEndpointServiceName = pulumi.Input.asOptionalInput<String>(vpcEndpointServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'encryptionDetails': ?pulumi.Input.mapOptionalInputValue<List<ClusterEncryptionDetail>, List<Map<String, dynamic>>>(encryptionDetails, (value) => pulumi.Input.encodeList<ClusterEncryptionDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'identifier': ?identifier,
      'kmsEncryptionKey': ?kmsEncryptionKey,
      'multiRegionProperties': ?pulumi.Input.mapOptionalInputValue<ClusterMultiRegionProperties, Map<String, dynamic>>(multiRegionProperties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcEndpointServiceName': ?vpcEndpointServiceName,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['deletionProtectionEnabled'] as bool),
      encryptionDetails: map['encryptionDetails'] == null ? null : pulumi.Output.create<List<ClusterEncryptionDetail>>(pulumi.Input.decodeList<ClusterEncryptionDetail>(map['encryptionDetails'], (value) => ClusterEncryptionDetail.fromMap((value as Map).cast<String, dynamic>()))),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      kmsEncryptionKey: map['kmsEncryptionKey'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptionKey'] as String),
      multiRegionProperties: map['multiRegionProperties'] == null ? null : pulumi.Output.create<ClusterMultiRegionProperties>(ClusterMultiRegionProperties.fromMap((map['multiRegionProperties'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ClusterTimeouts>(ClusterTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcEndpointServiceName: map['vpcEndpointServiceName'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointServiceName'] as String),
    );
  }
}

