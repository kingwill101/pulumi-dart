// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_multi_region_properties/cluster_multi_region_properties.dart';
import '../cluster_timeouts/cluster_timeouts.dart';

/// The set of arguments for Cluster.
class ClusterDsqlArgs {
  /// Whether deletion protection is enabled in this cluster.
  /// Default value is `false`.
  final pulumi.Input<bool>? deletionProtectionEnabled;

  /// Destroys cluster even if `deletion_protection_enabled` is set to `true`.
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

  ClusterDsqlArgs({
    this.deletionProtectionEnabled,
    this.forceDestroy,
    this.kmsEncryptionKey,
    this.multiRegionProperties,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final kmsEncryptionKeyValue = kmsEncryptionKey;
    if (kmsEncryptionKeyValue != null) {
      map['kmsEncryptionKey'] = kmsEncryptionKeyValue;
    }
    final multiRegionPropertiesValue = multiRegionProperties;
    if (multiRegionPropertiesValue != null) {
      map['multiRegionProperties'] = pulumi.Input.mapOptionalInputValue<
              ClusterMultiRegionProperties, Map<String, dynamic>>(
          multiRegionPropertiesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ClusterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterDsqlArgs.fromMap(Map<String, dynamic> map) {
    return ClusterDsqlArgs(
      deletionProtectionEnabled:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      kmsEncryptionKey:
          pulumi.Input.asOptionalInput<String>(map['kmsEncryptionKey']),
      multiRegionProperties:
          pulumi.Input.asOptionalInput<ClusterMultiRegionProperties>(
              map['multiRegionProperties']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ClusterTimeouts>(map['timeouts']),
    );
  }
}
