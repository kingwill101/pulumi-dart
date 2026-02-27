import 'package:pulumi/pulumi.dart';
import 'browser_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web Browser Settings resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With All Arguments
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Browser Settings using the `browser_settings_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/browserSettings:BrowserSettings example arn:aws:workspacesweb:us-west-2:123456789012:browsersettings/abcdef12345
/// ```
class BrowserSettings extends CustomResource {
  /// Additional encryption context for the browser settings.
  late final Output<Map<String, String>?> additionalEncryptionContext;

  /// List of web portal ARNs to associate with the browser settings.
  late final Output<List<String>> associatedPortalArns;

  /// Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  ///
  /// The following arguments are optional:
  late final Output<String> browserPolicy;

  /// ARN of the browser settings resource.
  late final Output<String> browserSettingsArn;

  /// ARN of the customer managed KMS key.
  late final Output<String?> customerManagedKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  BrowserSettings(
    String name, {
    BrowserSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/browserSettings:BrowserSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.browserPolicy = registerOutput<String>('browserPolicy');
    this.browserSettingsArn = registerOutput<String>('browserSettingsArn');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
