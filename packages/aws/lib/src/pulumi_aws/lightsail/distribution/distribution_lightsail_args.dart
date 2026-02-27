// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../distribution_cache_behavior/distribution_cache_behavior.dart';
import '../distribution_cache_behavior_settings/distribution_cache_behavior_settings.dart';
import '../distribution_default_cache_behavior/distribution_default_cache_behavior_lightsail.dart';
import '../distribution_origin/distribution_origin_lightsail.dart';

/// The set of arguments for Distribution.
class DistributionLightsailArgs {
  /// Bundle ID to use for the distribution.
  final pulumi.Input<String> bundleId;

  /// Cache behavior settings of the distribution. See below.
  final pulumi.Input<DistributionCacheBehaviorSettings>? cacheBehaviorSettings;

  /// Per-path cache behavior of the distribution. See below.
  final pulumi.Input<List<DistributionCacheBehavior>>? cacheBehaviors;

  /// Name of the SSL/TLS certificate attached to the distribution.
  final pulumi.Input<String>? certificateName;

  /// Default cache behavior of the distribution. See below.
  final pulumi.Input<DistributionDefaultCacheBehaviorLightsail>
      defaultCacheBehavior;

  /// IP address type of the distribution. Valid values: `dualstack`, `ipv4`. Default: `dualstack`.
  final pulumi.Input<String>? ipAddressType;

  /// Whether the distribution is enabled. Default: `true`.
  final pulumi.Input<bool>? isEnabled;

  /// Name of the distribution.
  final pulumi.Input<String>? name;

  /// Origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<DistributionOriginLightsail> origin;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags for the Lightsail Distribution. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  DistributionLightsailArgs({
    required this.bundleId,
    this.cacheBehaviorSettings,
    this.cacheBehaviors,
    this.certificateName,
    required this.defaultCacheBehavior,
    this.ipAddressType,
    this.isEnabled,
    this.name,
    required this.origin,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    final cacheBehaviorSettingsValue = cacheBehaviorSettings;
    if (cacheBehaviorSettingsValue != null) {
      map['cacheBehaviorSettings'] = pulumi.Input.mapOptionalInputValue<
              DistributionCacheBehaviorSettings, Map<String, dynamic>>(
          cacheBehaviorSettingsValue, (value) => value.toMap());
    }
    final cacheBehaviorsValue = cacheBehaviors;
    if (cacheBehaviorsValue != null) {
      map['cacheBehaviors'] = pulumi.Input.mapOptionalInputValue<
              List<DistributionCacheBehavior>, List<Map<String, dynamic>>>(
          cacheBehaviorsValue,
          (value) => pulumi.Input.encodeList<DistributionCacheBehavior,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final certificateNameValue = certificateName;
    if (certificateNameValue != null) {
      map['certificateName'] = certificateNameValue;
    }
    map['defaultCacheBehavior'] = pulumi.Input.mapInputValue<
        DistributionDefaultCacheBehaviorLightsail,
        Map<String, dynamic>>(defaultCacheBehavior, (value) => value.toMap());
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final isEnabledValue = isEnabled;
    if (isEnabledValue != null) {
      map['isEnabled'] = isEnabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['origin'] = pulumi.Input.mapInputValue<DistributionOriginLightsail,
        Map<String, dynamic>>(origin, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DistributionLightsailArgs.fromMap(Map<String, dynamic> map) {
    return DistributionLightsailArgs(
      bundleId: pulumi.Input.asInput<String>(map['bundleId']),
      cacheBehaviorSettings:
          pulumi.Input.asOptionalInput<DistributionCacheBehaviorSettings>(
              map['cacheBehaviorSettings']),
      cacheBehaviors:
          pulumi.Input.asOptionalInput<List<DistributionCacheBehavior>>(
              map['cacheBehaviors']),
      certificateName:
          pulumi.Input.asOptionalInput<String>(map['certificateName']),
      defaultCacheBehavior:
          pulumi.Input.asInput<DistributionDefaultCacheBehaviorLightsail>(
              map['defaultCacheBehavior']),
      ipAddressType: pulumi.Input.asOptionalInput<String>(map['ipAddressType']),
      isEnabled: pulumi.Input.asOptionalInput<bool>(map['isEnabled']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      origin: pulumi.Input.asInput<DistributionOriginLightsail>(map['origin']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
