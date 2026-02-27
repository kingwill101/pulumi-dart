// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_protection_settings_inline_redaction_configuration/data_protection_settings_inline_redaction_configuration.dart';

/// The set of arguments for DataProtectionSettings.
class DataProtectionSettingsArgs {
  /// Additional encryption context for the data protection settings.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;

  /// ARN of the customer managed KMS key.
  final pulumi.Input<String>? customerManagedKey;

  /// The description of the data protection settings.
  final pulumi.Input<String>? description;

  /// The display name of the data protection settings.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> displayName;

  /// The inline redaction configuration of the data protection settings. Detailed below.
  final pulumi.Input<DataProtectionSettingsInlineRedactionConfiguration>?
      inlineRedactionConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  DataProtectionSettingsArgs({
    this.additionalEncryptionContext,
    this.customerManagedKey,
    this.description,
    required this.displayName,
    this.inlineRedactionConfiguration,
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
    final inlineRedactionConfigurationValue = inlineRedactionConfiguration;
    if (inlineRedactionConfigurationValue != null) {
      map['inlineRedactionConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DataProtectionSettingsInlineRedactionConfiguration,
              Map<String, dynamic>>(
          inlineRedactionConfigurationValue, (value) => value.toMap());
    }
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

  factory DataProtectionSettingsArgs.fromMap(Map<String, dynamic> map) {
    return DataProtectionSettingsArgs(
      additionalEncryptionContext:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['additionalEncryptionContext']),
      customerManagedKey:
          pulumi.Input.asOptionalInput<String>(map['customerManagedKey']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      inlineRedactionConfiguration: pulumi.Input.asOptionalInput<
              DataProtectionSettingsInlineRedactionConfiguration>(
          map['inlineRedactionConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
