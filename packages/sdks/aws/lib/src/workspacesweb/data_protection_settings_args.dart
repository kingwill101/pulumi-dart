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
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<DataProtectionSettingsInlineRedactionConfiguration>? inlineRedactionConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      inlineRedactionConfiguration = pulumi.Input.asOptionalInput<DataProtectionSettingsInlineRedactionConfiguration>(inlineRedactionConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      inlineRedactionConfiguration: map['inlineRedactionConfiguration'] == null ? null : pulumi.Output.create<DataProtectionSettingsInlineRedactionConfiguration>(DataProtectionSettingsInlineRedactionConfiguration.fromMap((map['inlineRedactionConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

