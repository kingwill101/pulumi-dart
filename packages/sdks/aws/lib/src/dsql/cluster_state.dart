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
    this.arn,
    this.deletionProtectionEnabled,
    this.encryptionDetails,
    this.forceDestroy,
    this.identifier,
    this.kmsEncryptionKey,
    this.multiRegionProperties,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcEndpointServiceName,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : ((map['deletionProtectionEnabled'] as bool).input()).input(),
      encryptionDetails: map['encryptionDetails'] == null ? null : ((pulumi.Input.decodeList<ClusterEncryptionDetail>(map['encryptionDetails']!, (value) => ClusterEncryptionDetail.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      identifier: map['identifier'] == null ? null : ((map['identifier'] as String).input()).input(),
      kmsEncryptionKey: map['kmsEncryptionKey'] == null ? null : ((map['kmsEncryptionKey'] as String).input()).input(),
      multiRegionProperties: map['multiRegionProperties'] == null ? null : ((ClusterMultiRegionProperties.fromMap((map['multiRegionProperties']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ClusterTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcEndpointServiceName: map['vpcEndpointServiceName'] == null ? null : ((map['vpcEndpointServiceName'] as String).input()).input(),
    );
  }
}

