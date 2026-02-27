// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ip_access_settings_ip_rule/ip_access_settings_ip_rule.dart';

/// The set of arguments for IpAccessSettings.
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

  IpAccessSettingsArgs({
    this.additionalEncryptionContext,
    this.customerManagedKey,
    this.description,
    required this.displayName,
    required this.ipRules,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalEncryptionContextValue = additionalEncryptionContext;
    if (additionalEncryptionContextValue != null) {
      map['additionalEncryptionContext'] = additionalEncryptionContextValue;
    }
    final customerManagedKeyValue = customerManagedKey;
    if (customerManagedKeyValue != null) {
      map['customerManagedKey'] = customerManagedKeyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    map['ipRules'] = pulumi.Input.mapInputValue<List<IpAccessSettingsIpRule>,
            List<Map<String, dynamic>>>(
        ipRules,
        (value) => pulumi.Input.encodeList<IpAccessSettingsIpRule,
            Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory IpAccessSettingsArgs.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsArgs(
      additionalEncryptionContext:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['additionalEncryptionContext']),
      customerManagedKey:
          pulumi.Input.asOptionalInput<String>(map['customerManagedKey']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      ipRules:
          pulumi.Input.asInput<List<IpAccessSettingsIpRule>>(map['ipRules']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
