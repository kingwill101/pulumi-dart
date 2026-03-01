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
  /// Map of tags for the Lightsail Distribution. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Map of tags for the Lightsail Distribution. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DistributionState({
    pulumi.Output<List<String>>? alternativeDomainNames,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bundleId,
    pulumi.Output<DistributionCacheBehaviorSettings>? cacheBehaviorSettings,
    pulumi.Output<List<DistributionCacheBehavior>>? cacheBehaviors,
    pulumi.Output<String>? certificateName,
    pulumi.Output<String>? createdAt,
    pulumi.Output<DistributionDefaultCacheBehavior>? defaultCacheBehavior,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<bool>? isEnabled,
    pulumi.Output<List<DistributionLocation>>? locations,
    pulumi.Output<String>? name,
    pulumi.Output<DistributionOrigin>? origin,
    pulumi.Output<String>? originPublicDns,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? supportCode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      alternativeDomainNames = pulumi.Input.asOptionalInput<List<String>>(alternativeDomainNames),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
      cacheBehaviorSettings = pulumi.Input.asOptionalInput<DistributionCacheBehaviorSettings>(cacheBehaviorSettings),
      cacheBehaviors = pulumi.Input.asOptionalInput<List<DistributionCacheBehavior>>(cacheBehaviors),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      defaultCacheBehavior = pulumi.Input.asOptionalInput<DistributionDefaultCacheBehavior>(defaultCacheBehavior),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      locations = pulumi.Input.asOptionalInput<List<DistributionLocation>>(locations),
      name = pulumi.Input.asOptionalInput<String>(name),
      origin = pulumi.Input.asOptionalInput<DistributionOrigin>(origin),
      originPublicDns = pulumi.Input.asOptionalInput<String>(originPublicDns),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      supportCode = pulumi.Input.asOptionalInput<String>(supportCode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      alternativeDomainNames: map['alternativeDomainNames'] == null ? null : pulumi.Output.create<List<String>>((map['alternativeDomainNames'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bundleId: map['bundleId'] == null ? null : pulumi.Output.create<String>(map['bundleId'] as String),
      cacheBehaviorSettings: map['cacheBehaviorSettings'] == null ? null : pulumi.Output.create<DistributionCacheBehaviorSettings>(DistributionCacheBehaviorSettings.fromMap((map['cacheBehaviorSettings'] as Map).cast<String, dynamic>())),
      cacheBehaviors: map['cacheBehaviors'] == null ? null : pulumi.Output.create<List<DistributionCacheBehavior>>(pulumi.Input.decodeList<DistributionCacheBehavior>(map['cacheBehaviors'], (value) => DistributionCacheBehavior.fromMap((value as Map).cast<String, dynamic>()))),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      defaultCacheBehavior: map['defaultCacheBehavior'] == null ? null : pulumi.Output.create<DistributionDefaultCacheBehavior>(DistributionDefaultCacheBehavior.fromMap((map['defaultCacheBehavior'] as Map).cast<String, dynamic>())),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      isEnabled: map['isEnabled'] == null ? null : pulumi.Output.create<bool>(map['isEnabled'] as bool),
      locations: map['locations'] == null ? null : pulumi.Output.create<List<DistributionLocation>>(pulumi.Input.decodeList<DistributionLocation>(map['locations'], (value) => DistributionLocation.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      origin: map['origin'] == null ? null : pulumi.Output.create<DistributionOrigin>(DistributionOrigin.fromMap((map['origin'] as Map).cast<String, dynamic>())),
      originPublicDns: map['originPublicDns'] == null ? null : pulumi.Output.create<String>(map['originPublicDns'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      supportCode: map['supportCode'] == null ? null : pulumi.Output.create<String>(map['supportCode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

