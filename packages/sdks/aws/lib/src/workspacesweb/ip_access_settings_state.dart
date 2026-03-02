// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_access_settings_ip_rule.dart';

/// Input properties used for looking up and filtering IpAccessSettings resources.
class IpAccessSettingsState {
  /// Additional encryption context for the IP access settings.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// List of web portal ARNs that this IP access settings resource is associated with.
  final pulumi.Input<List<String>>? associatedPortalArns;
  /// ARN of the customer managed KMS key.
  final pulumi.Input<String>? customerManagedKey;
  /// The description of the IP access settings.
  final pulumi.Input<String>? description;
  /// The display name of the IP access settings.
  final pulumi.Input<String>? displayName;
  /// ARN of the IP access settings resource.
  final pulumi.Input<String>? ipAccessSettingsArn;
  /// The IP rules of the IP access settings. See IP Rule below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<IpAccessSettingsIpRule>>? ipRules;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IpAccessSettingsState].
  /// [additionalEncryptionContext] Additional encryption context for the IP access settings.
  /// [associatedPortalArns] List of web portal ARNs that this IP access settings resource is associated with.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [description] The description of the IP access settings.
  /// [displayName] The display name of the IP access settings.
  /// [ipAccessSettingsArn] ARN of the IP access settings resource.
  /// [ipRules] The IP rules of the IP access settings. See IP Rule below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  IpAccessSettingsState({
    this.additionalEncryptionContext,
    this.associatedPortalArns,
    this.customerManagedKey,
    this.description,
    this.displayName,
    this.ipAccessSettingsArn,
    this.ipRules,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'associatedPortalArns': ?associatedPortalArns,
      'customerManagedKey': ?customerManagedKey,
      'description': ?description,
      'displayName': ?displayName,
      'ipAccessSettingsArn': ?ipAccessSettingsArn,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IpAccessSettingsIpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IpAccessSettingsIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IpAccessSettingsState.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsState(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : ((map['additionalEncryptionContext'] as Map).cast<String, String>()).input(),
      associatedPortalArns: map['associatedPortalArns'] == null ? null : ((map['associatedPortalArns'] as List).cast<String>()).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (map['customerManagedKey'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      ipAccessSettingsArn: map['ipAccessSettingsArn'] == null ? null : (map['ipAccessSettingsArn'] as String).input(),
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<IpAccessSettingsIpRule>(map['ipRules'], (value) => IpAccessSettingsIpRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

