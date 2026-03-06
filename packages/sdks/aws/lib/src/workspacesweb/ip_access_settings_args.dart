// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_access_settings_ip_rule.dart';

/// {@template pulumi_workspacesweb_ip_access_settings_ip_access_settings_args_doc}
/// The set of arguments for IpAccessSettings.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_ip_access_settings_ip_access_settings_args_doc}
class IpAccessSettingsArgs {
  /// Additional encryption context for the IP access settings.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// ARN of the customer managed KMS key.
  final pulumi.Input<String>? customerManagedKey;
  /// The description of the IP access settings.
  final pulumi.Input<String>? description;
  /// The display name of the IP access settings.
  final pulumi.Input<String> displayName;
  /// The IP rules of the IP access settings. See IP Rule below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<IpAccessSettingsIpRule>> ipRules;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpAccessSettingsArgs].
  /// [additionalEncryptionContext] Additional encryption context for the IP access settings.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [description] The description of the IP access settings.
  /// [displayName] The display name of the IP access settings.
  /// [ipRules] The IP rules of the IP access settings. See IP Rule below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const IpAccessSettingsArgs({
    this.additionalEncryptionContext,
    this.customerManagedKey,
    this.description,
    required this.displayName,
    required this.ipRules,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'customerManagedKey': ?customerManagedKey,
      'description': ?description,
      'displayName': displayName,
      'ipRules': pulumi.Input.mapInputValue<List<IpAccessSettingsIpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IpAccessSettingsIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory IpAccessSettingsArgs.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsArgs(
      additionalEncryptionContext: (() { final guardedValue = map['additionalEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      ipRules: pulumi.Input.fromValue(pulumi.Input.decodeList<IpAccessSettingsIpRule>(map['ipRules']!, (value) => IpAccessSettingsIpRule.fromMap((value as Map).cast<String, dynamic>()))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

