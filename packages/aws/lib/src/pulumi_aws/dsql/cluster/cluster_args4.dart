// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_multi_region_properties/cluster_multi_region_properties.dart';
import '../cluster_timeouts/cluster_timeouts.dart';

/// The set of arguments for Cluster.
class ClusterArgs4 {
  /// Whether deletion protection is enabled in this cluster.
  /// Default value is `false`.
  final Input<bool>? deletionProtectionEnabled;

  /// Destroys cluster even if `deletion_protection_enabled` is set to `true`.
  /// Default value is `false`.
  final Input<bool>? forceDestroy;

  /// The ARN of the AWS KMS key that encrypts data in the DSQL Cluster, or `"AWS_OWNED_KMS_KEY"`.
  final Input<String>? kmsEncryptionKey;

  /// Multi-region properties of the DSQL Cluster.
  final Input<ClusterMultiRegionProperties>? multiRegionProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set of tags to be associated with the AWS DSQL Cluster resource.
  final Input<Map<String, String>>? tags;
  final Input<ClusterTimeouts>? timeouts;

  ClusterArgs4({
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
      map['multiRegionProperties'] = Input.mapOptionalInputValue<
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
      map['timeouts'] =
          Input.mapOptionalInputValue<ClusterTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterArgs4.fromMap(Map<String, dynamic> map) {
    return ClusterArgs4(
      deletionProtectionEnabled:
          Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      kmsEncryptionKey: Input.asOptionalInput<String>(map['kmsEncryptionKey']),
      multiRegionProperties:
          Input.asOptionalInput<ClusterMultiRegionProperties>(
              map['multiRegionProperties']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ClusterTimeouts>(map['timeouts']),
    );
  }
}
