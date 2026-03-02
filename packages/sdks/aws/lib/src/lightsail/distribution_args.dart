// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_cache_behavior.dart';
import 'distribution_cache_behavior_settings.dart';
import 'distribution_default_cache_behavior.dart';
import 'distribution_origin.dart';

/// {@template pulumi_lightsail_distribution_distribution_args_doc}
/// The set of arguments for Distribution.
/// {@endtemplate}
/// {@macro pulumi_lightsail_distribution_distribution_args_doc}
class DistributionArgs {
  /// Bundle ID to use for the distribution.
  final pulumi.Input<String> bundleId;
  /// Cache behavior settings of the distribution. See below.
  final pulumi.Input<DistributionCacheBehaviorSettings>? cacheBehaviorSettings;
  /// Per-path cache behavior of the distribution. See below.
  final pulumi.Input<List<DistributionCacheBehavior>>? cacheBehaviors;
  /// Name of the SSL/TLS certificate attached to the distribution.
  final pulumi.Input<String>? certificateName;
  /// Default cache behavior of the distribution. See below.
  final pulumi.Input<DistributionDefaultCacheBehavior> defaultCacheBehavior;
  /// IP address type of the distribution. Valid values: `dualstack`, `ipv4`. Default: `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// Whether the distribution is enabled. Default: `true`.
  final pulumi.Input<bool>? isEnabled;
  /// Name of the distribution.
  final pulumi.Input<String>? name;
  /// Origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<DistributionOrigin> origin;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags for the Lightsail Distribution. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DistributionArgs].
  /// [bundleId] Bundle ID to use for the distribution.
  /// [cacheBehaviorSettings] Cache behavior settings of the distribution. See below.
  /// [cacheBehaviors] Per-path cache behavior of the distribution. See below.
  /// [certificateName] Name of the SSL/TLS certificate attached to the distribution.
  /// [defaultCacheBehavior] Default cache behavior of the distribution. See below.
  /// [ipAddressType] IP address type of the distribution. Valid values: `dualstack`, `ipv4`. Default: `dualstack`.
  /// [isEnabled] Whether the distribution is enabled. Default: `true`.
  /// [name] Name of the distribution.
  /// [origin] Origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags for the Lightsail Distribution. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DistributionArgs({
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
    return <String, dynamic>{
      'bundleId': bundleId,
      'cacheBehaviorSettings': ?pulumi.Input.mapOptionalInputValue<DistributionCacheBehaviorSettings, Map<String, dynamic>>(cacheBehaviorSettings, (value) => value.toMap()),
      'cacheBehaviors': ?pulumi.Input.mapOptionalInputValue<List<DistributionCacheBehavior>, List<Map<String, dynamic>>>(cacheBehaviors, (value) => pulumi.Input.encodeList<DistributionCacheBehavior, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateName': ?certificateName,
      'defaultCacheBehavior': pulumi.Input.mapInputValue<DistributionDefaultCacheBehavior, Map<String, dynamic>>(defaultCacheBehavior, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'isEnabled': ?isEnabled,
      'name': ?name,
      'origin': pulumi.Input.mapInputValue<DistributionOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DistributionArgs.fromMap(Map<String, dynamic> map) {
    return DistributionArgs(
      bundleId: (map['bundleId'] as String).input(),
      cacheBehaviorSettings: map['cacheBehaviorSettings'] == null ? null : ((DistributionCacheBehaviorSettings.fromMap((map['cacheBehaviorSettings']! as Map).cast<String, dynamic>())).input()).input(),
      cacheBehaviors: map['cacheBehaviors'] == null ? null : ((pulumi.Input.decodeList<DistributionCacheBehavior>(map['cacheBehaviors']!, (value) => DistributionCacheBehavior.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      certificateName: map['certificateName'] == null ? null : ((map['certificateName'] as String).input()).input(),
      defaultCacheBehavior: (DistributionDefaultCacheBehavior.fromMap((map['defaultCacheBehavior']! as Map).cast<String, dynamic>())).input(),
      ipAddressType: map['ipAddressType'] == null ? null : ((map['ipAddressType'] as String).input()).input(),
      isEnabled: map['isEnabled'] == null ? null : ((map['isEnabled'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      origin: (DistributionOrigin.fromMap((map['origin']! as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

