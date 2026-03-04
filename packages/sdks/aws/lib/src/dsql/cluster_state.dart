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
      'encryptionDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterEncryptionDetail>,
            List<Map<String, dynamic>>
          >(
            encryptionDetails,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterEncryptionDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'forceDestroy': ?forceDestroy,
      'identifier': ?identifier,
      'kmsEncryptionKey': ?kmsEncryptionKey,
      'multiRegionProperties':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterMultiRegionProperties,
            Map<String, dynamic>
          >(multiRegionProperties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'vpcEndpointServiceName': ?vpcEndpointServiceName,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtectionEnabled: (() {
        final guardedValue = map['deletionProtectionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryptionDetails: (() {
        final guardedValue = map['encryptionDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterEncryptionDetail>(
            guardedValue,
            (value) => ClusterEncryptionDetail.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identifier: (() {
        final guardedValue = map['identifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsEncryptionKey: (() {
        final guardedValue = map['kmsEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiRegionProperties: (() {
        final guardedValue = map['multiRegionProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterMultiRegionProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vpcEndpointServiceName: (() {
        final guardedValue = map['vpcEndpointServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
