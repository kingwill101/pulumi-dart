// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../distribution_cache_behavior/distribution_cache_behavior.dart';
import '../distribution_cache_behavior_settings/distribution_cache_behavior_settings.dart';
import '../distribution_default_cache_behavior/distribution_default_cache_behavior2.dart';
import '../distribution_origin/distribution_origin2.dart';

/// The set of arguments for Distribution.
class DistributionArgs2 {
  /// Bundle ID to use for the distribution.
  final Input<String> bundleId;

  /// Cache behavior settings of the distribution. See below.
  final Input<DistributionCacheBehaviorSettings>? cacheBehaviorSettings;

  /// Per-path cache behavior of the distribution. See below.
  final Input<List<DistributionCacheBehavior>>? cacheBehaviors;

  /// Name of the SSL/TLS certificate attached to the distribution.
  final Input<String>? certificateName;

  /// Default cache behavior of the distribution. See below.
  final Input<DistributionDefaultCacheBehavior2> defaultCacheBehavior;

  /// IP address type of the distribution. Valid values: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>. Default: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>.
  final Input<String>? ipAddressType;

  /// Whether the distribution is enabled. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? isEnabled;

  /// Name of the distribution.
  final Input<String>? name;

  /// Origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. See below.
  ///
  /// The following arguments are optional:
  final Input<DistributionOrigin2> origin;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags for the Lightsail Distribution. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DistributionArgs2({
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
      map['cacheBehaviorSettings'] = Input.mapOptionalInputValue<
              DistributionCacheBehaviorSettings, Map<String, dynamic>>(
          cacheBehaviorSettingsValue, (value) => value.toMap());
    }
    final cacheBehaviorsValue = cacheBehaviors;
    if (cacheBehaviorsValue != null) {
      map['cacheBehaviors'] = Input.mapOptionalInputValue<
              List<DistributionCacheBehavior>, List<Map<String, dynamic>>>(
          cacheBehaviorsValue,
          (value) =>
              Input.encodeList<DistributionCacheBehavior, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final certificateNameValue = certificateName;
    if (certificateNameValue != null) {
      map['certificateName'] = certificateNameValue;
    }
    map['defaultCacheBehavior'] = Input.mapInputValue<
        DistributionDefaultCacheBehavior2,
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
        Input.mapInputValue<DistributionOrigin2, Map<String, dynamic>>(
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

  factory DistributionArgs2.fromMap(Map<String, dynamic> map) {
    return DistributionArgs2(
      bundleId: Input.asInput<String>(map['bundleId']),
      cacheBehaviorSettings:
          Input.asOptionalInput<DistributionCacheBehaviorSettings>(
              map['cacheBehaviorSettings']),
      cacheBehaviors: Input.asOptionalInput<List<DistributionCacheBehavior>>(
          map['cacheBehaviors']),
      certificateName: Input.asOptionalInput<String>(map['certificateName']),
      defaultCacheBehavior: Input.asInput<DistributionDefaultCacheBehavior2>(
          map['defaultCacheBehavior']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      isEnabled: Input.asOptionalInput<bool>(map['isEnabled']),
      name: Input.asOptionalInput<String>(map['name']),
      origin: Input.asInput<DistributionOrigin2>(map['origin']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
