import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_protection_settings_inline_redaction_configuration/data_protection_settings_inline_redaction_configuration.dart';
import 'data_protection_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web Data Protection Settings resource. Once associated with a web portal, data protection settings control how sensitive information is redacted in streaming sessions.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Inline Redaction Configuration
///
///
///
/// ### Complete Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Data Protection Settings using the `data_protection_settings_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/dataProtectionSettings:DataProtectionSettings example arn:aws:workspaces-web:us-west-2:123456789012:dataprotectionsettings/abcdef12345
/// ```
class DataProtectionSettings extends pulumi.CustomResource {
  /// Additional encryption context for the data protection settings.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;

  /// List of web portal ARNs that this data protection settings resource is associated with.
  late final pulumi.Output<List<String>> associatedPortalArns;

  /// ARN of the customer managed KMS key.
  late final pulumi.Output<String?> customerManagedKey;

  /// ARN of the data protection settings resource.
  late final pulumi.Output<String> dataProtectionSettingsArn;

  /// The description of the data protection settings.
  late final pulumi.Output<String?> description;

  /// The display name of the data protection settings.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> displayName;

  /// The inline redaction configuration of the data protection settings. Detailed below.
  late final pulumi.Output<DataProtectionSettingsInlineRedactionConfiguration?>
      inlineRedactionConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DataProtectionSettings(
    String name, {
    DataProtectionSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/dataProtectionSettings:DataProtectionSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.dataProtectionSettingsArn =
        registerOutput<String>('dataProtectionSettingsArn');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.inlineRedactionConfiguration =
        registerOutput<DataProtectionSettingsInlineRedactionConfiguration?>(
            'inlineRedactionConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
