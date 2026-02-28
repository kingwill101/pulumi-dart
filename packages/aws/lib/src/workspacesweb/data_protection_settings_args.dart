// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_settings_inline_redaction_configuration.dart';

/// {@template pulumi_workspacesweb_data_protection_settings_data_protection_settings_args_doc}
/// The set of arguments for DataProtectionSettings.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_data_protection_settings_data_protection_settings_args_doc}
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

  /// Creates a new [DataProtectionSettingsArgs].
  /// [additionalEncryptionContext] Additional encryption context for the data protection settings.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [description] The description of the data protection settings.
  /// [displayName] The display name of the data protection settings.
  /// [inlineRedactionConfiguration] The inline redaction configuration of the data protection settings. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DataProtectionSettingsArgs({
    Map<String, String>? additionalEncryptionContext,
    String? customerManagedKey,
    String? description,
    required String displayName,
    DataProtectionSettingsInlineRedactionConfiguration?
        inlineRedactionConfiguration,
    String? region,
    Map<String, String>? tags,
  })  : additionalEncryptionContext =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                additionalEncryptionContext),
        customerManagedKey =
            pulumi.Input.asOptionalInput<String>(customerManagedKey),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        inlineRedactionConfiguration = pulumi.Input.asOptionalInput<
                DataProtectionSettingsInlineRedactionConfiguration>(
            inlineRedactionConfiguration),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      additionalEncryptionContext: map['additionalEncryptionContext'] == null
          ? null
          : (map['additionalEncryptionContext'] as Map).cast<String, String>(),
      customerManagedKey: map['customerManagedKey'] == null
          ? null
          : map['customerManagedKey'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      inlineRedactionConfiguration: map['inlineRedactionConfiguration'] == null
          ? null
          : DataProtectionSettingsInlineRedactionConfiguration.fromMap(
              (map['inlineRedactionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
