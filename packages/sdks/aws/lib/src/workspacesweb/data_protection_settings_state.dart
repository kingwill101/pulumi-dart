// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_settings_inline_redaction_configuration.dart';

/// Input properties used for looking up and filtering DataProtectionSettings resources.
class DataProtectionSettingsState {
  /// Additional encryption context for the data protection settings.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// List of web portal ARNs that this data protection settings resource is associated with.
  final pulumi.Input<List<String>>? associatedPortalArns;
  /// ARN of the customer managed KMS key.
  final pulumi.Input<String>? customerManagedKey;
  /// ARN of the data protection settings resource.
  final pulumi.Input<String>? dataProtectionSettingsArn;
  /// The description of the data protection settings.
  final pulumi.Input<String>? description;
  /// The display name of the data protection settings.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? displayName;
  /// The inline redaction configuration of the data protection settings. Detailed below.
  final pulumi.Input<DataProtectionSettingsInlineRedactionConfiguration>? inlineRedactionConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DataProtectionSettingsState].
  /// [additionalEncryptionContext] Additional encryption context for the data protection settings.
  /// [associatedPortalArns] List of web portal ARNs that this data protection settings resource is associated with.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [dataProtectionSettingsArn] ARN of the data protection settings resource.
  /// [description] The description of the data protection settings.
  /// [displayName] The display name of the data protection settings.
  /// [inlineRedactionConfiguration] The inline redaction configuration of the data protection settings. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DataProtectionSettingsState({
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    pulumi.Output<List<String>>? associatedPortalArns,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<String>? dataProtectionSettingsArn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<DataProtectionSettingsInlineRedactionConfiguration>? inlineRedactionConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      associatedPortalArns = pulumi.Input.asOptionalInput<List<String>>(associatedPortalArns),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      dataProtectionSettingsArn = pulumi.Input.asOptionalInput<String>(dataProtectionSettingsArn),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      inlineRedactionConfiguration = pulumi.Input.asOptionalInput<DataProtectionSettingsInlineRedactionConfiguration>(inlineRedactionConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'associatedPortalArns': ?associatedPortalArns,
      'customerManagedKey': ?customerManagedKey,
      'dataProtectionSettingsArn': ?dataProtectionSettingsArn,
      'description': ?description,
      'displayName': ?displayName,
      'inlineRedactionConfiguration': ?pulumi.Input.mapOptionalInputValue<DataProtectionSettingsInlineRedactionConfiguration, Map<String, dynamic>>(inlineRedactionConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DataProtectionSettingsState.fromMap(Map<String, dynamic> map) {
    return DataProtectionSettingsState(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      associatedPortalArns: map['associatedPortalArns'] == null ? null : pulumi.Output.create<List<String>>((map['associatedPortalArns'] as List).cast<String>()),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      dataProtectionSettingsArn: map['dataProtectionSettingsArn'] == null ? null : pulumi.Output.create<String>(map['dataProtectionSettingsArn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      inlineRedactionConfiguration: map['inlineRedactionConfiguration'] == null ? null : pulumi.Output.create<DataProtectionSettingsInlineRedactionConfiguration>(DataProtectionSettingsInlineRedactionConfiguration.fromMap((map['inlineRedactionConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

