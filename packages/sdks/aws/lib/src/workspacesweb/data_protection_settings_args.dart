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
  final pulumi.Input<DataProtectionSettingsInlineRedactionConfiguration>? inlineRedactionConfiguration;
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
    this.additionalEncryptionContext,
    this.customerManagedKey,
    this.description,
    required this.displayName,
    this.inlineRedactionConfiguration,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'customerManagedKey': ?customerManagedKey,
      'description': ?description,
      'displayName': displayName,
      'inlineRedactionConfiguration': ?pulumi.Input.mapOptionalInputValue<DataProtectionSettingsInlineRedactionConfiguration, Map<String, dynamic>>(inlineRedactionConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DataProtectionSettingsArgs.fromMap(Map<String, dynamic> map) {
    return DataProtectionSettingsArgs(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : ((map['additionalEncryptionContext'] as Map).cast<String, String>()).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (map['customerManagedKey'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      inlineRedactionConfiguration: map['inlineRedactionConfiguration'] == null ? null : (DataProtectionSettingsInlineRedactionConfiguration.fromMap((map['inlineRedactionConfiguration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

