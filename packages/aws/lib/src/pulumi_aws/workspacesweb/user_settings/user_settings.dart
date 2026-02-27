import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_settings_cookie_synchronization_configuration/user_settings_cookie_synchronization_configuration.dart';
import '../user_settings_toolbar_configuration/user_settings_toolbar_configuration.dart';
import 'user_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web User Settings resource. Once associated with a web portal, user settings control how users can transfer data between a streaming session and their local devices.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Toolbar Configuration
///
///
///
/// ### Complete Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web User Settings using the `user_settings_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/userSettings:UserSettings example arn:aws:workspacesweb:us-west-2:123456789012:usersettings/abcdef12345
/// ```
class UserSettings extends pulumi.CustomResource {
  /// Additional encryption context for the user settings.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;

  /// List of web portal ARNs to associate with the user settings.
  late final pulumi.Output<List<String>> associatedPortalArns;

  /// Configuration that specifies which cookies should be synchronized from the end user's local browser to the remote browser. Detailed below.
  late final pulumi.Output<UserSettingsCookieSynchronizationConfiguration?>
      cookieSynchronizationConfiguration;

  /// Specifies whether the user can copy text from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  late final pulumi.Output<String> copyAllowed;

  /// ARN of the customer managed KMS key.
  late final pulumi.Output<String?> customerManagedKey;

  /// Specifies whether the user can use deep links that open automatically when connecting to a session. Valid values are `Enabled` or `Disabled`.
  late final pulumi.Output<String> deepLinkAllowed;

  /// Amount of time that a streaming session remains active after users disconnect. Value must be between 1 and 600 minutes.
  late final pulumi.Output<int?> disconnectTimeoutInMinutes;

  /// Specifies whether the user can download files from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  late final pulumi.Output<String> downloadAllowed;

  /// Amount of time that users can be idle before they are disconnected from their streaming session. Value must be between 0 and 60 minutes.
  late final pulumi.Output<int?> idleDisconnectTimeoutInMinutes;

  /// Specifies whether the user can paste text from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  late final pulumi.Output<String> pasteAllowed;

  /// Specifies whether the user can print to the local device. Valid values are `Enabled` or `Disabled`.
  late final pulumi.Output<String> printAllowed;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration of the toolbar. Detailed below.
  late final pulumi.Output<UserSettingsToolbarConfiguration?>
      toolbarConfiguration;

  /// Specifies whether the user can upload files from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> uploadAllowed;

  /// ARN of the user settings resource.
  late final pulumi.Output<String> userSettingsArn;

  UserSettings(
    String name, {
    UserSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userSettings:UserSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.cookieSynchronizationConfiguration =
        registerOutput<UserSettingsCookieSynchronizationConfiguration?>(
            'cookieSynchronizationConfiguration');
    this.copyAllowed = registerOutput<String>('copyAllowed');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.deepLinkAllowed = registerOutput<String>('deepLinkAllowed');
    this.disconnectTimeoutInMinutes =
        registerOutput<int?>('disconnectTimeoutInMinutes');
    this.downloadAllowed = registerOutput<String>('downloadAllowed');
    this.idleDisconnectTimeoutInMinutes =
        registerOutput<int?>('idleDisconnectTimeoutInMinutes');
    this.pasteAllowed = registerOutput<String>('pasteAllowed');
    this.printAllowed = registerOutput<String>('printAllowed');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.toolbarConfiguration =
        registerOutput<UserSettingsToolbarConfiguration?>(
            'toolbarConfiguration');
    this.uploadAllowed = registerOutput<String>('uploadAllowed');
    this.userSettingsArn = registerOutput<String>('userSettingsArn');
  }
}
