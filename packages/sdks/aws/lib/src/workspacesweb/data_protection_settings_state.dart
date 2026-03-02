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
    this.additionalEncryptionContext,
    this.associatedPortalArns,
    this.customerManagedKey,
    this.dataProtectionSettingsArn,
    this.description,
    this.displayName,
    this.inlineRedactionConfiguration,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : (((map['additionalEncryptionContext'] as Map).cast<String, String>()).input()).input(),
      associatedPortalArns: map['associatedPortalArns'] == null ? null : (((map['associatedPortalArns'] as List).cast<String>()).input()).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : ((map['customerManagedKey'] as String).input()).input(),
      dataProtectionSettingsArn: map['dataProtectionSettingsArn'] == null ? null : ((map['dataProtectionSettingsArn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName'] as String).input()).input(),
      inlineRedactionConfiguration: map['inlineRedactionConfiguration'] == null ? null : ((DataProtectionSettingsInlineRedactionConfiguration.fromMap((map['inlineRedactionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

