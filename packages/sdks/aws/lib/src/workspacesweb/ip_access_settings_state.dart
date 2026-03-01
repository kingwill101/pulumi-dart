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
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    pulumi.Output<List<String>>? associatedPortalArns,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? ipAccessSettingsArn,
    pulumi.Output<List<IpAccessSettingsIpRule>>? ipRules,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      associatedPortalArns = pulumi.Input.asOptionalInput<List<String>>(associatedPortalArns),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      ipAccessSettingsArn = pulumi.Input.asOptionalInput<String>(ipAccessSettingsArn),
      ipRules = pulumi.Input.asOptionalInput<List<IpAccessSettingsIpRule>>(ipRules),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      associatedPortalArns: map['associatedPortalArns'] == null ? null : pulumi.Output.create<List<String>>((map['associatedPortalArns'] as List).cast<String>()),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      ipAccessSettingsArn: map['ipAccessSettingsArn'] == null ? null : pulumi.Output.create<String>(map['ipAccessSettingsArn'] as String),
      ipRules: map['ipRules'] == null ? null : pulumi.Output.create<List<IpAccessSettingsIpRule>>(pulumi.Input.decodeList<IpAccessSettingsIpRule>(map['ipRules'], (value) => IpAccessSettingsIpRule.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

