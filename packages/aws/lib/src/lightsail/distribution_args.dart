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
    required String bundleId,
    DistributionCacheBehaviorSettings? cacheBehaviorSettings,
    List<DistributionCacheBehavior>? cacheBehaviors,
    String? certificateName,
    required DistributionDefaultCacheBehavior defaultCacheBehavior,
    String? ipAddressType,
    bool? isEnabled,
    String? name,
    required DistributionOrigin origin,
    String? region,
    Map<String, String>? tags,
  })  : bundleId = pulumi.Input.asInput<String>(bundleId),
        cacheBehaviorSettings =
            pulumi.Input.asOptionalInput<DistributionCacheBehaviorSettings>(
                cacheBehaviorSettings),
        cacheBehaviors =
            pulumi.Input.asOptionalInput<List<DistributionCacheBehavior>>(
                cacheBehaviors),
        certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
        defaultCacheBehavior =
            pulumi.Input.asInput<DistributionDefaultCacheBehavior>(
                defaultCacheBehavior),
        ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
        isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
        name = pulumi.Input.asOptionalInput<String>(name),
        origin = pulumi.Input.asInput<DistributionOrigin>(origin),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
        DistributionDefaultCacheBehavior,
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
    map['origin'] =
        pulumi.Input.mapInputValue<DistributionOrigin, Map<String, dynamic>>(
            origin, (value) => value.toMap());
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

  factory DistributionArgs.fromMap(Map<String, dynamic> map) {
    return DistributionArgs(
      bundleId: map['bundleId'] as String,
      cacheBehaviorSettings: map['cacheBehaviorSettings'] == null
          ? null
          : DistributionCacheBehaviorSettings.fromMap(
              (map['cacheBehaviorSettings'] as Map).cast<String, dynamic>()),
      cacheBehaviors: map['cacheBehaviors'] == null
          ? null
          : pulumi.Input.decodeList<DistributionCacheBehavior>(
              map['cacheBehaviors'],
              (value) => DistributionCacheBehavior.fromMap(
                  (value as Map).cast<String, dynamic>())),
      certificateName: map['certificateName'] == null
          ? null
          : map['certificateName'] as String,
      defaultCacheBehavior: DistributionDefaultCacheBehavior.fromMap(
          (map['defaultCacheBehavior'] as Map).cast<String, dynamic>()),
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      origin: DistributionOrigin.fromMap(
          (map['origin'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
