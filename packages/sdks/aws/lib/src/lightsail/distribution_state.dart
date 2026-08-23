// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_cache_behavior.dart';
import 'distribution_cache_behavior_settings.dart';
import 'distribution_default_cache_behavior.dart';
import 'distribution_location.dart';
import 'distribution_origin.dart';

/// Input properties used for looking up and filtering Distribution resources.
class DistributionState {
  /// Alternate domain names of the distribution.
  final pulumi.Input<List<String>>? alternativeDomainNames;
  /// ARN of the distribution.
  final pulumi.Input<String>? arn;
  /// Bundle ID to use for the distribution.
  final pulumi.Input<String>? bundleId;
  /// Cache behavior settings of the distribution. See below.
  final pulumi.Input<DistributionCacheBehaviorSettings>? cacheBehaviorSettings;
  /// Per-path cache behavior of the distribution. See below.
  final pulumi.Input<List<DistributionCacheBehavior>>? cacheBehaviors;
  /// Name of the SSL/TLS certificate attached to the distribution.
  final pulumi.Input<String>? certificateName;
  /// Timestamp when the distribution was created.
  final pulumi.Input<String>? createdAt;
  /// Default cache behavior of the distribution. See below.
  final pulumi.Input<DistributionDefaultCacheBehavior>? defaultCacheBehavior;
  /// Domain name of the distribution.
  final pulumi.Input<String>? domainName;
  /// IP address type of the distribution. Valid values: `dualstack`, `ipv4`. Default: `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// Whether the distribution is enabled. Default: `true`.
  final pulumi.Input<bool>? isEnabled;
  /// Location of the distribution, such as the AWS Region and Availability Zone. See below.
  final pulumi.Input<List<DistributionLocation>>? locations;
  /// Name of the distribution.
  final pulumi.Input<String>? name;
  /// Origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<DistributionOrigin>? origin;
  /// Public DNS of the origin.
  /// * `origin[0].resource_type` - Resource type of the origin resource (e.g., Instance).
  final pulumi.Input<String>? originPublicDns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Lightsail resource type (e.g., Distribution).
  final pulumi.Input<String>? resourceType;
  /// Status of the distribution.
  final pulumi.Input<String>? status;
  /// Support code. Include this code in your email to support when you have questions about your Lightsail distribution. This code enables our support team to look up your Lightsail information more easily.
  final pulumi.Input<String>? supportCode;
  /// Map of tags for the Lightsail Distribution. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DistributionState].
  /// [alternativeDomainNames] Alternate domain names of the distribution.
  /// [arn] ARN of the distribution.
  /// [bundleId] Bundle ID to use for the distribution.
  /// [cacheBehaviorSettings] Cache behavior settings of the distribution. See below.
  /// [cacheBehaviors] Per-path cache behavior of the distribution. See below.
  /// [certificateName] Name of the SSL/TLS certificate attached to the distribution.
  /// [createdAt] Timestamp when the distribution was created.
  /// [defaultCacheBehavior] Default cache behavior of the distribution. See below.
  /// [domainName] Domain name of the distribution.
  /// [ipAddressType] IP address type of the distribution. Valid values: `dualstack`, `ipv4`. Default: `dualstack`.
  /// [isEnabled] Whether the distribution is enabled. Default: `true`.
  /// [locations] Location of the distribution, such as the AWS Region and Availability Zone. See below.
  /// [name] Name of the distribution.
  /// [origin] Origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. See below.
  /// [originPublicDns] Public DNS of the origin.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] Lightsail resource type (e.g., Distribution).
  /// [status] Status of the distribution.
  /// [supportCode] Support code. Include this code in your email to support when you have questions about your Lightsail distribution. This code enables our support team to look up your Lightsail information more easily.
  /// [tags] Map of tags for the Lightsail Distribution. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const DistributionState({
    this.alternativeDomainNames,
    this.arn,
    this.bundleId,
    this.cacheBehaviorSettings,
    this.cacheBehaviors,
    this.certificateName,
    this.createdAt,
    this.defaultCacheBehavior,
    this.domainName,
    this.ipAddressType,
    this.isEnabled,
    this.locations,
    this.name,
    this.origin,
    this.originPublicDns,
    this.region,
    this.resourceType,
    this.status,
    this.supportCode,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeDomainNames': ?alternativeDomainNames,
      'arn': ?arn,
      'bundleId': ?bundleId,
      'cacheBehaviorSettings': ?pulumi.Input.mapOptionalInputValue<DistributionCacheBehaviorSettings, Map<String, dynamic>>(cacheBehaviorSettings, (value) => value.toMap()),
      'cacheBehaviors': ?pulumi.Input.mapOptionalInputValue<List<DistributionCacheBehavior>, List<Map<String, dynamic>>>(cacheBehaviors, (value) => pulumi.Input.encodeList<DistributionCacheBehavior, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateName': ?certificateName,
      'createdAt': ?createdAt,
      'defaultCacheBehavior': ?pulumi.Input.mapOptionalInputValue<DistributionDefaultCacheBehavior, Map<String, dynamic>>(defaultCacheBehavior, (value) => value.toMap()),
      'domainName': ?domainName,
      'ipAddressType': ?ipAddressType,
      'isEnabled': ?isEnabled,
      'locations': ?pulumi.Input.mapOptionalInputValue<List<DistributionLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<DistributionLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'origin': ?pulumi.Input.mapOptionalInputValue<DistributionOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'originPublicDns': ?originPublicDns,
      'region': ?region,
      'resourceType': ?resourceType,
      'status': ?status,
      'supportCode': ?supportCode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DistributionState.fromMap(Map<String, dynamic> map) {
    return DistributionState(
      alternativeDomainNames: (() { final guardedValue = map['alternativeDomainNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheBehaviorSettings: (() { final guardedValue = map['cacheBehaviorSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionCacheBehaviorSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheBehaviors: (() { final guardedValue = map['cacheBehaviors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionCacheBehavior>(guardedValue, (value) => DistributionCacheBehavior.fromMap((value as Map).cast<String, dynamic>()))); })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultCacheBehavior: (() { final guardedValue = map['defaultCacheBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionLocation>(guardedValue, (value) => DistributionLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionOrigin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originPublicDns: (() { final guardedValue = map['originPublicDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportCode: (() { final guardedValue = map['supportCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
