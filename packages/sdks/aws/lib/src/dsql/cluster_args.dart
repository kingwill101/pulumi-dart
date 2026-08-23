// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_multi_region_properties.dart';
import 'cluster_timeouts.dart';

/// {@template pulumi_dsql_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_dsql_cluster_cluster_args_doc}
class ClusterArgs {
  /// Whether deletion protection is enabled in this cluster.
  /// Default value is `false`.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Destroys cluster even if `deletionProtectionEnabled` is set to `true`.
  /// Default value is `false`.
  final pulumi.Input<bool>? forceDestroy;
  /// The ARN of the AWS KMS key that encrypts data in the DSQL Cluster, or `"AWS_OWNED_KMS_KEY"`.
  final pulumi.Input<String>? kmsEncryptionKey;
  /// Multi-region properties of the DSQL Cluster.
  final pulumi.Input<ClusterMultiRegionProperties>? multiRegionProperties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of tags to be associated with the AWS DSQL Cluster resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ClusterTimeouts>? timeouts;

  /// Creates a new [ClusterArgs].
  /// [deletionProtectionEnabled] Whether deletion protection is enabled in this cluster.
  /// [forceDestroy] Destroys cluster even if `deletionProtectionEnabled` is set to `true`.
  /// [kmsEncryptionKey] The ARN of the AWS KMS key that encrypts data in the DSQL Cluster, or `"AWS_OWNED_KMS_KEY"`.
  /// [multiRegionProperties] Multi-region properties of the DSQL Cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Set of tags to be associated with the AWS DSQL Cluster resource.
  /// [timeouts] Optional.
  const ClusterArgs({
    this.deletionProtectionEnabled,
    this.forceDestroy,
    this.kmsEncryptionKey,
    this.multiRegionProperties,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'forceDestroy': ?forceDestroy,
      'kmsEncryptionKey': ?kmsEncryptionKey,
      'multiRegionProperties': ?pulumi.Input.mapOptionalInputValue<ClusterMultiRegionProperties, Map<String, dynamic>>(multiRegionProperties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsEncryptionKey: (() { final guardedValue = map['kmsEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiRegionProperties: (() { final guardedValue = map['multiRegionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMultiRegionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
