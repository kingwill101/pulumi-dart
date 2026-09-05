// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_settings_inline_redaction_configuration.dart';

/// {@template pulumi_workspacesweb_data_protection_settings_data_protection_settings_args_doc}
/// The set of arguments for DataProtectionSettings.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_data_protection_settings_data_protection_settings_args_doc}
class DataProtectionSettingsArgs {
  /// Additional encryption context for the data protection settings.
  final pulumi.Input<Map<String, String>?>? additionalEncryptionContext;
  /// ARN of the customer managed KMS key.
  final pulumi.Input<String?>? customerManagedKey;
  /// The description of the data protection settings.
  final pulumi.Input<String?>? description;
  /// The display name of the data protection settings.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> displayName;
  /// The inline redaction configuration of the data protection settings. Detailed below.
  final pulumi.Input<DataProtectionSettingsInlineRedactionConfiguration?>? inlineRedactionConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DataProtectionSettingsArgs].
  /// [additionalEncryptionContext] Additional encryption context for the data protection settings.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [description] The description of the data protection settings.
  /// [displayName] The display name of the data protection settings.
  /// [inlineRedactionConfiguration] The inline redaction configuration of the data protection settings. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DataProtectionSettingsArgs({
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
      additionalEncryptionContext: (() { final guardedValue = map['additionalEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      inlineRedactionConfiguration: (() { final guardedValue = map['inlineRedactionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProtectionSettingsInlineRedactionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
