import 'package:pulumi/pulumi.dart';
import '../user_settings_cookie_synchronization_configuration/user_settings_cookie_synchronization_configuration.dart';
import '../user_settings_toolbar_configuration/user_settings_toolbar_configuration.dart';
import 'user_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web User Settings resource. Once associated with a web portal, user settings control how users can transfer data between a streaming session and their local devices.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspacesweb.UserSettings("example", {
/// copyAllowed: "Enabled",
/// downloadAllowed: "Enabled",
/// pasteAllowed: "Enabled",
/// printAllowed: "Enabled",
/// uploadAllowed: "Enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.UserSettings("example",
/// copy_allowed="Enabled",
/// download_allowed="Enabled",
/// paste_allowed="Enabled",
/// print_allowed="Enabled",
/// upload_allowed="Enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.WorkSpacesWeb.UserSettings("example", new()
/// {
/// CopyAllowed = "Enabled",
/// DownloadAllowed = "Enabled",
/// PasteAllowed = "Enabled",
/// PrintAllowed = "Enabled",
/// UploadAllowed = "Enabled",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := workspacesweb.NewUserSettings(ctx, "example", &workspacesweb.UserSettingsArgs{
/// CopyAllowed:     pulumi.String("Enabled"),
/// DownloadAllowed: pulumi.String("Enabled"),
/// PasteAllowed:    pulumi.String("Enabled"),
/// PrintAllowed:    pulumi.String("Enabled"),
/// UploadAllowed:   pulumi.String("Enabled"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.UserSettings;
/// import com.pulumi.aws.workspacesweb.UserSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new UserSettings("example", UserSettingsArgs.builder()
/// .copyAllowed("Enabled")
/// .downloadAllowed("Enabled")
/// .pasteAllowed("Enabled")
/// .printAllowed("Enabled")
/// .uploadAllowed("Enabled")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:workspacesweb:UserSettings
/// properties:
/// copyAllowed: Enabled
/// downloadAllowed: Enabled
/// pasteAllowed: Enabled
/// printAllowed: Enabled
/// uploadAllowed: Enabled
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Toolbar Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspacesweb.UserSettings("example", {
/// copyAllowed: "Enabled",
/// downloadAllowed: "Enabled",
/// pasteAllowed: "Enabled",
/// printAllowed: "Enabled",
/// uploadAllowed: "Enabled",
/// toolbarConfiguration: {
/// toolbarType: "Docked",
/// visualMode: "Dark",
/// hiddenToolbarItems: [
/// "Webcam",
/// "Microphone",
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.UserSettings("example",
/// copy_allowed="Enabled",
/// download_allowed="Enabled",
/// paste_allowed="Enabled",
/// print_allowed="Enabled",
/// upload_allowed="Enabled",
/// toolbar_configuration={
/// "toolbar_type": "Docked",
/// "visual_mode": "Dark",
/// "hidden_toolbar_items": [
/// "Webcam",
/// "Microphone",
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.WorkSpacesWeb.UserSettings("example", new()
/// {
/// CopyAllowed = "Enabled",
/// DownloadAllowed = "Enabled",
/// PasteAllowed = "Enabled",
/// PrintAllowed = "Enabled",
/// UploadAllowed = "Enabled",
/// ToolbarConfiguration = new Aws.WorkSpacesWeb.Inputs.UserSettingsToolbarConfigurationArgs
/// {
/// ToolbarType = "Docked",
/// VisualMode = "Dark",
/// HiddenToolbarItems = new[]
/// {
/// "Webcam",
/// "Microphone",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := workspacesweb.NewUserSettings(ctx, "example", &workspacesweb.UserSettingsArgs{
/// CopyAllowed:     pulumi.String("Enabled"),
/// DownloadAllowed: pulumi.String("Enabled"),
/// PasteAllowed:    pulumi.String("Enabled"),
/// PrintAllowed:    pulumi.String("Enabled"),
/// UploadAllowed:   pulumi.String("Enabled"),
/// ToolbarConfiguration: &workspacesweb.UserSettingsToolbarConfigurationArgs{
/// ToolbarType: pulumi.String("Docked"),
/// VisualMode:  pulumi.String("Dark"),
/// HiddenToolbarItems: pulumi.StringArray{
/// pulumi.String("Webcam"),
/// pulumi.String("Microphone"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.UserSettings;
/// import com.pulumi.aws.workspacesweb.UserSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.UserSettingsToolbarConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new UserSettings("example", UserSettingsArgs.builder()
/// .copyAllowed("Enabled")
/// .downloadAllowed("Enabled")
/// .pasteAllowed("Enabled")
/// .printAllowed("Enabled")
/// .uploadAllowed("Enabled")
/// .toolbarConfiguration(UserSettingsToolbarConfigurationArgs.builder()
/// .toolbarType("Docked")
/// .visualMode("Dark")
/// .hiddenToolbarItems(
/// "Webcam",
/// "Microphone")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:workspacesweb:UserSettings
/// properties:
/// copyAllowed: Enabled
/// downloadAllowed: Enabled
/// pasteAllowed: Enabled
/// printAllowed: Enabled
/// uploadAllowed: Enabled
/// toolbarConfiguration:
/// toolbarType: Docked
/// visualMode: Dark
/// hiddenToolbarItems:
/// - Webcam
/// - Microphone
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Complete Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
/// description: "KMS key for WorkSpaces Web User Settings",
/// deletionWindowInDays: 7,
/// });
/// const exampleUserSettings = new aws.workspacesweb.UserSettings("example", {
/// copyAllowed: "Enabled",
/// downloadAllowed: "Enabled",
/// pasteAllowed: "Enabled",
/// printAllowed: "Enabled",
/// uploadAllowed: "Enabled",
/// deepLinkAllowed: "Enabled",
/// disconnectTimeoutInMinutes: 30,
/// idleDisconnectTimeoutInMinutes: 15,
/// customerManagedKey: example.arn,
/// additionalEncryptionContext: {
/// Environment: "Production",
/// },
/// toolbarConfiguration: {
/// toolbarType: "Docked",
/// visualMode: "Dark",
/// hiddenToolbarItems: [
/// "Webcam",
/// "Microphone",
/// ],
/// maxDisplayResolution: "size1920X1080",
/// },
/// cookieSynchronizationConfiguration: {
/// allowlists: [{
/// domain: "example.com",
/// path: "/path",
/// }],
/// blocklists: [{
/// domain: "blocked.com",
/// }],
/// },
/// tags: {
/// Name: "example-user-settings",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
/// description="KMS key for WorkSpaces Web User Settings",
/// deletion_window_in_days=7)
/// example_user_settings = aws.workspacesweb.UserSettings("example",
/// copy_allowed="Enabled",
/// download_allowed="Enabled",
/// paste_allowed="Enabled",
/// print_allowed="Enabled",
/// upload_allowed="Enabled",
/// deep_link_allowed="Enabled",
/// disconnect_timeout_in_minutes=30,
/// idle_disconnect_timeout_in_minutes=15,
/// customer_managed_key=example.arn,
/// additional_encryption_context={
/// "Environment": "Production",
/// },
/// toolbar_configuration={
/// "toolbar_type": "Docked",
/// "visual_mode": "Dark",
/// "hidden_toolbar_items": [
/// "Webcam",
/// "Microphone",
/// ],
/// "max_display_resolution": "size1920X1080",
/// },
/// cookie_synchronization_configuration={
/// "allowlists": [{
/// "domain": "example.com",
/// "path": "/path",
/// }],
/// "blocklists": [{
/// "domain": "blocked.com",
/// }],
/// },
/// tags={
/// "Name": "example-user-settings",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "KMS key for WorkSpaces Web User Settings",
/// DeletionWindowInDays = 7,
/// });
///
/// var exampleUserSettings = new Aws.WorkSpacesWeb.UserSettings("example", new()
/// {
/// CopyAllowed = "Enabled",
/// DownloadAllowed = "Enabled",
/// PasteAllowed = "Enabled",
/// PrintAllowed = "Enabled",
/// UploadAllowed = "Enabled",
/// DeepLinkAllowed = "Enabled",
/// DisconnectTimeoutInMinutes = 30,
/// IdleDisconnectTimeoutInMinutes = 15,
/// CustomerManagedKey = example.Arn,
/// AdditionalEncryptionContext =
/// {
/// { "Environment", "Production" },
/// },
/// ToolbarConfiguration = new Aws.WorkSpacesWeb.Inputs.UserSettingsToolbarConfigurationArgs
/// {
/// ToolbarType = "Docked",
/// VisualMode = "Dark",
/// HiddenToolbarItems = new[]
/// {
/// "Webcam",
/// "Microphone",
/// },
/// MaxDisplayResolution = "size1920X1080",
/// },
/// CookieSynchronizationConfiguration = new Aws.WorkSpacesWeb.Inputs.UserSettingsCookieSynchronizationConfigurationArgs
/// {
/// Allowlists = new[]
/// {
/// new Aws.WorkSpacesWeb.Inputs.UserSettingsCookieSynchronizationConfigurationAllowlistArgs
/// {
/// Domain = "example.com",
/// Path = "/path",
/// },
/// },
/// Blocklists = new[]
/// {
/// new Aws.WorkSpacesWeb.Inputs.UserSettingsCookieSynchronizationConfigurationBlocklistArgs
/// {
/// Domain = "blocked.com",
/// },
/// },
/// },
/// Tags =
/// {
/// { "Name", "example-user-settings" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("KMS key for WorkSpaces Web User Settings"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewUserSettings(ctx, "example", &workspacesweb.UserSettingsArgs{
/// CopyAllowed:                    pulumi.String("Enabled"),
/// DownloadAllowed:                pulumi.String("Enabled"),
/// PasteAllowed:                   pulumi.String("Enabled"),
/// PrintAllowed:                   pulumi.String("Enabled"),
/// UploadAllowed:                  pulumi.String("Enabled"),
/// DeepLinkAllowed:                pulumi.String("Enabled"),
/// DisconnectTimeoutInMinutes:     pulumi.Int(30),
/// IdleDisconnectTimeoutInMinutes: pulumi.Int(15),
/// CustomerManagedKey:             example.Arn,
/// AdditionalEncryptionContext: pulumi.StringMap{
/// "Environment": pulumi.String("Production"),
/// },
/// ToolbarConfiguration: &workspacesweb.UserSettingsToolbarConfigurationArgs{
/// ToolbarType: pulumi.String("Docked"),
/// VisualMode:  pulumi.String("Dark"),
/// HiddenToolbarItems: pulumi.StringArray{
/// pulumi.String("Webcam"),
/// pulumi.String("Microphone"),
/// },
/// MaxDisplayResolution: pulumi.String("size1920X1080"),
/// },
/// CookieSynchronizationConfiguration: &workspacesweb.UserSettingsCookieSynchronizationConfigurationArgs{
/// Allowlists: workspacesweb.UserSettingsCookieSynchronizationConfigurationAllowlistArray{
/// &workspacesweb.UserSettingsCookieSynchronizationConfigurationAllowlistArgs{
/// Domain: pulumi.String("example.com"),
/// Path:   pulumi.String("/path"),
/// },
/// },
/// Blocklists: workspacesweb.UserSettingsCookieSynchronizationConfigurationBlocklistArray{
/// &workspacesweb.UserSettingsCookieSynchronizationConfigurationBlocklistArgs{
/// Domain: pulumi.String("blocked.com"),
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-user-settings"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.workspacesweb.UserSettings;
/// import com.pulumi.aws.workspacesweb.UserSettingsArgs;
/// import com.pulumi.aws.workspacesweb.inputs.UserSettingsToolbarConfigurationArgs;
/// import com.pulumi.aws.workspacesweb.inputs.UserSettingsCookieSynchronizationConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Key("example", KeyArgs.builder()
/// .description("KMS key for WorkSpaces Web User Settings")
/// .deletionWindowInDays(7)
/// .build());
///
/// var exampleUserSettings = new UserSettings("exampleUserSettings", UserSettingsArgs.builder()
/// .copyAllowed("Enabled")
/// .downloadAllowed("Enabled")
/// .pasteAllowed("Enabled")
/// .printAllowed("Enabled")
/// .uploadAllowed("Enabled")
/// .deepLinkAllowed("Enabled")
/// .disconnectTimeoutInMinutes(30)
/// .idleDisconnectTimeoutInMinutes(15)
/// .customerManagedKey(example.arn())
/// .additionalEncryptionContext(Map.of("Environment", "Production"))
/// .toolbarConfiguration(UserSettingsToolbarConfigurationArgs.builder()
/// .toolbarType("Docked")
/// .visualMode("Dark")
/// .hiddenToolbarItems(
/// "Webcam",
/// "Microphone")
/// .maxDisplayResolution("size1920X1080")
/// .build())
/// .cookieSynchronizationConfiguration(UserSettingsCookieSynchronizationConfigurationArgs.builder()
/// .allowlists(UserSettingsCookieSynchronizationConfigurationAllowlistArgs.builder()
/// .domain("example.com")
/// .path("/path")
/// .build())
/// .blocklists(UserSettingsCookieSynchronizationConfigurationBlocklistArgs.builder()
/// .domain("blocked.com")
/// .build())
/// .build())
/// .tags(Map.of("Name", "example-user-settings"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: KMS key for WorkSpaces Web User Settings
/// deletionWindowInDays: 7
/// exampleUserSettings:
/// type: aws:workspacesweb:UserSettings
/// name: example
/// properties:
/// copyAllowed: Enabled
/// downloadAllowed: Enabled
/// pasteAllowed: Enabled
/// printAllowed: Enabled
/// uploadAllowed: Enabled
/// deepLinkAllowed: Enabled
/// disconnectTimeoutInMinutes: 30
/// idleDisconnectTimeoutInMinutes: 15
/// customerManagedKey: ${example.arn}
/// additionalEncryptionContext:
/// Environment: Production
/// toolbarConfiguration:
/// toolbarType: Docked
/// visualMode: Dark
/// hiddenToolbarItems:
/// - Webcam
/// - Microphone
/// maxDisplayResolution: size1920X1080
/// cookieSynchronizationConfiguration:
/// allowlists:
/// - domain: example.com
/// path: /path
/// blocklists:
/// - domain: blocked.com
/// tags:
/// Name: example-user-settings
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web User Settings using the <span pulumi-lang-nodejs="`userSettingsArn`" pulumi-lang-dotnet="`UserSettingsArn`" pulumi-lang-go="`userSettingsArn`" pulumi-lang-python="`user_settings_arn`" pulumi-lang-yaml="`userSettingsArn`" pulumi-lang-java="`userSettingsArn`">`user_settings_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/userSettings:UserSettings example arn:aws:workspacesweb:us-west-2:123456789012:usersettings/abcdef12345
/// ```
class UserSettings extends CustomResource {
  /// Additional encryption context for the user settings.
  late final Output<Map<String, String>?> additionalEncryptionContext;

  /// List of web portal ARNs to associate with the user settings.
  late final Output<List<String>> associatedPortalArns;

  /// Configuration that specifies which cookies should be synchronized from the end user's local browser to the remote browser. Detailed below.
  late final Output<UserSettingsCookieSynchronizationConfiguration?>
      cookieSynchronizationConfiguration;

  /// Specifies whether the user can copy text from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  late final Output<String> copyAllowed;

  /// ARN of the customer managed KMS key.
  late final Output<String?> customerManagedKey;

  /// Specifies whether the user can use deep links that open automatically when connecting to a session. Valid values are `Enabled` or `Disabled`.
  late final Output<String> deepLinkAllowed;

  /// Amount of time that a streaming session remains active after users disconnect. Value must be between 1 and 600 minutes.
  late final Output<int?> disconnectTimeoutInMinutes;

  /// Specifies whether the user can download files from the streaming session to the local device. Valid values are `Enabled` or `Disabled`.
  late final Output<String> downloadAllowed;

  /// Amount of time that users can be idle before they are disconnected from their streaming session. Value must be between 0 and 60 minutes.
  late final Output<int?> idleDisconnectTimeoutInMinutes;

  /// Specifies whether the user can paste text from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  late final Output<String> pasteAllowed;

  /// Specifies whether the user can print to the local device. Valid values are `Enabled` or `Disabled`.
  late final Output<String> printAllowed;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration of the toolbar. Detailed below.
  late final Output<UserSettingsToolbarConfiguration?> toolbarConfiguration;

  /// Specifies whether the user can upload files from the local device to the streaming session. Valid values are `Enabled` or `Disabled`.
  ///
  /// The following arguments are optional:
  late final Output<String> uploadAllowed;

  /// ARN of the user settings resource.
  late final Output<String> userSettingsArn;

  UserSettings(
    String name, {
    UserSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userSettings:UserSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        Output.createUnknown<Map<String, String>?>();
    this.associatedPortalArns = Output.createUnknown<List<String>>();
    this.cookieSynchronizationConfiguration =
        Output.createUnknown<UserSettingsCookieSynchronizationConfiguration?>();
    this.copyAllowed = Output.createUnknown<String>();
    this.customerManagedKey = Output.createUnknown<String?>();
    this.deepLinkAllowed = Output.createUnknown<String>();
    this.disconnectTimeoutInMinutes = Output.createUnknown<int?>();
    this.downloadAllowed = Output.createUnknown<String>();
    this.idleDisconnectTimeoutInMinutes = Output.createUnknown<int?>();
    this.pasteAllowed = Output.createUnknown<String>();
    this.printAllowed = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.toolbarConfiguration =
        Output.createUnknown<UserSettingsToolbarConfiguration?>();
    this.uploadAllowed = Output.createUnknown<String>();
    this.userSettingsArn = Output.createUnknown<String>();
  }
}
