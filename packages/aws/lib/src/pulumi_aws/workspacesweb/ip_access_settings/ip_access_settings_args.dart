// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ip_access_settings_ip_rule/ip_access_settings_ip_rule.dart';

/// The set of arguments for IpAccessSettings.
class IpAccessSettingsArgs {
  /// Additional encryption context for the IP access settings.
  final Input<Map<String, String>>? additionalEncryptionContext;

  /// ARN of the customer managed KMS key.
  final Input<String>? customerManagedKey;

  /// The description of the IP access settings.
  final Input<String>? description;

  /// The display name of the IP access settings.
  final Input<String> displayName;

  /// The IP rules of the IP access settings. See IP Rule below.
  ///
  /// The following arguments are optional:
  final Input<List<IpAccessSettingsIpRule>> ipRules;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    map['ipRules'] = Input.mapInputValue<List<IpAccessSettingsIpRule>,
            List<Map<String, dynamic>>>(
        ipRules,
        (value) =>
            Input.encodeList<IpAccessSettingsIpRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
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
      additionalEncryptionContext: Input.asOptionalInput<Map<String, String>>(
          map['additionalEncryptionContext']),
      customerManagedKey:
          Input.asOptionalInput<String>(map['customerManagedKey']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      ipRules: Input.asInput<List<IpAccessSettingsIpRule>>(map['ipRules']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
