import 'package:pulumi/pulumi.dart';
import '../stack_access_endpoint/stack_access_endpoint.dart';
import '../stack_application_settings/stack_application_settings.dart';
import '../stack_storage_connector/stack_storage_connector.dart';
import '../stack_streaming_experience_settings/stack_streaming_experience_settings.dart';
import '../stack_user_setting/stack_user_setting.dart';
import 'stack_args.dart';

/// Provides an AppStream stack.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appstream.Stack("example", {
/// name: "stack name",
/// description: "stack description",
/// displayName: "stack display name",
/// feedbackUrl: "http://your-domain/feedback",
/// redirectUrl: "http://your-domain/redirect",
/// storageConnectors: [{
/// connectorType: "HOMEFOLDERS",
/// }],
/// userSettings: [
/// {
/// action: "AUTO_TIME_ZONE_REDIRECTION",
/// permission: "DISABLED",
/// },
/// {
/// action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE",
/// permission: "ENABLED",
/// },
/// {
/// action: "CLIPBOARD_COPY_TO_LOCAL_DEVICE",
/// permission: "ENABLED",
/// },
/// {
/// action: "DOMAIN_PASSWORD_SIGNIN",
/// permission: "ENABLED",
/// },
/// {
/// action: "DOMAIN_SMART_CARD_SIGNIN",
/// permission: "DISABLED",
/// },
/// {
/// action: "FILE_DOWNLOAD",
/// permission: "ENABLED",
/// },
/// {
/// action: "FILE_UPLOAD",
/// permission: "ENABLED",
/// },
/// {
/// action: "PRINTING_TO_LOCAL_DEVICE",
/// permission: "ENABLED",
/// },
/// ],
/// applicationSettings: {
/// enabled: true,
/// settingsGroup: "SettingsGroup",
/// },
/// tags: {
/// TagName: "TagValue",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appstream.Stack("example",
/// name="stack name",
/// description="stack description",
/// display_name="stack display name",
/// feedback_url="http://your-domain/feedback",
/// redirect_url="http://your-domain/redirect",
/// storage_connectors=[{
/// "connector_type": "HOMEFOLDERS",
/// }],
/// user_settings=[
/// {
/// "action": "AUTO_TIME_ZONE_REDIRECTION",
/// "permission": "DISABLED",
/// },
/// {
/// "action": "CLIPBOARD_COPY_FROM_LOCAL_DEVICE",
/// "permission": "ENABLED",
/// },
/// {
/// "action": "CLIPBOARD_COPY_TO_LOCAL_DEVICE",
/// "permission": "ENABLED",
/// },
/// {
/// "action": "DOMAIN_PASSWORD_SIGNIN",
/// "permission": "ENABLED",
/// },
/// {
/// "action": "DOMAIN_SMART_CARD_SIGNIN",
/// "permission": "DISABLED",
/// },
/// {
/// "action": "FILE_DOWNLOAD",
/// "permission": "ENABLED",
/// },
/// {
/// "action": "FILE_UPLOAD",
/// "permission": "ENABLED",
/// },
/// {
/// "action": "PRINTING_TO_LOCAL_DEVICE",
/// "permission": "ENABLED",
/// },
/// ],
/// application_settings={
/// "enabled": True,
/// "settings_group": "SettingsGroup",
/// },
/// tags={
/// "TagName": "TagValue",
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
/// var example = new Aws.AppStream.Stack("example", new()
/// {
/// Name = "stack name",
/// Description = "stack description",
/// DisplayName = "stack display name",
/// FeedbackUrl = "http://your-domain/feedback",
/// RedirectUrl = "http://your-domain/redirect",
/// StorageConnectors = new[]
/// {
/// new Aws.AppStream.Inputs.StackStorageConnectorArgs
/// {
/// ConnectorType = "HOMEFOLDERS",
/// },
/// },
/// UserSettings = new[]
/// {
/// new Aws.AppStream.Inputs.StackUserSettingArgs
/// {
/// Action = "AUTO_TIME_ZONE_REDIRECTION",
/// Permission = "DISABLED",
/// },
/// new Aws.AppStream.Inputs.StackUserSettingArgs
/// {
/// Action = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE",
/// Permission = "ENABLED",
/// },
/// new Aws.AppStream.Inputs.StackUserSettingArgs
/// {
/// Action = "CLIPBOARD_COPY_TO_LOCAL_DEVICE",
/// Permission = "ENABLED",
/// },
/// new Aws.AppStream.Inputs.StackUserSettingArgs
/// {
/// Action = "DOMAIN_PASSWORD_SIGNIN",
/// Permission = "ENABLED",
/// },
/// new Aws.AppStream.Inputs.StackUserSettingArgs
/// {
/// Action = "DOMAIN_SMART_CARD_SIGNIN",
/// Permission = "DISABLED",
/// },
/// new Aws.AppStream.Inputs.StackUserSettingArgs
/// {
/// Action = "FILE_DOWNLOAD",
/// Permission = "ENABLED",
/// },
/// new Aws.AppStream.Inputs.StackUserSettingArgs
/// {
/// Action = "FILE_UPLOAD",
/// Permission = "ENABLED",
/// },
/// new Aws.AppStream.Inputs.StackUserSettingArgs
/// {
/// Action = "PRINTING_TO_LOCAL_DEVICE",
/// Permission = "ENABLED",
/// },
/// },
/// ApplicationSettings = new Aws.AppStream.Inputs.StackApplicationSettingsArgs
/// {
/// Enabled = true,
/// SettingsGroup = "SettingsGroup",
/// },
/// Tags =
/// {
/// { "TagName", "TagValue" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appstream.NewStack(ctx, "example", &appstream.StackArgs{
/// Name:        pulumi.String("stack name"),
/// Description: pulumi.String("stack description"),
/// DisplayName: pulumi.String("stack display name"),
/// FeedbackUrl: pulumi.String("http://your-domain/feedback"),
/// RedirectUrl: pulumi.String("http://your-domain/redirect"),
/// StorageConnectors: appstream.StackStorageConnectorArray{
/// &appstream.StackStorageConnectorArgs{
/// ConnectorType: pulumi.String("HOMEFOLDERS"),
/// },
/// },
/// UserSettings: appstream.StackUserSettingArray{
/// &appstream.StackUserSettingArgs{
/// Action:     pulumi.String("AUTO_TIME_ZONE_REDIRECTION"),
/// Permission: pulumi.String("DISABLED"),
/// },
/// &appstream.StackUserSettingArgs{
/// Action:     pulumi.String("CLIPBOARD_COPY_FROM_LOCAL_DEVICE"),
/// Permission: pulumi.String("ENABLED"),
/// },
/// &appstream.StackUserSettingArgs{
/// Action:     pulumi.String("CLIPBOARD_COPY_TO_LOCAL_DEVICE"),
/// Permission: pulumi.String("ENABLED"),
/// },
/// &appstream.StackUserSettingArgs{
/// Action:     pulumi.String("DOMAIN_PASSWORD_SIGNIN"),
/// Permission: pulumi.String("ENABLED"),
/// },
/// &appstream.StackUserSettingArgs{
/// Action:     pulumi.String("DOMAIN_SMART_CARD_SIGNIN"),
/// Permission: pulumi.String("DISABLED"),
/// },
/// &appstream.StackUserSettingArgs{
/// Action:     pulumi.String("FILE_DOWNLOAD"),
/// Permission: pulumi.String("ENABLED"),
/// },
/// &appstream.StackUserSettingArgs{
/// Action:     pulumi.String("FILE_UPLOAD"),
/// Permission: pulumi.String("ENABLED"),
/// },
/// &appstream.StackUserSettingArgs{
/// Action:     pulumi.String("PRINTING_TO_LOCAL_DEVICE"),
/// Permission: pulumi.String("ENABLED"),
/// },
/// },
/// ApplicationSettings: &appstream.StackApplicationSettingsArgs{
/// Enabled:       pulumi.Bool(true),
/// SettingsGroup: pulumi.String("SettingsGroup"),
/// },
/// Tags: pulumi.StringMap{
/// "TagName": pulumi.String("TagValue"),
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
/// import com.pulumi.aws.appstream.Stack;
/// import com.pulumi.aws.appstream.StackArgs;
/// import com.pulumi.aws.appstream.inputs.StackStorageConnectorArgs;
/// import com.pulumi.aws.appstream.inputs.StackUserSettingArgs;
/// import com.pulumi.aws.appstream.inputs.StackApplicationSettingsArgs;
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
/// var example = new Stack("example", StackArgs.builder()
/// .name("stack name")
/// .description("stack description")
/// .displayName("stack display name")
/// .feedbackUrl("http://your-domain/feedback")
/// .redirectUrl("http://your-domain/redirect")
/// .storageConnectors(StackStorageConnectorArgs.builder()
/// .connectorType("HOMEFOLDERS")
/// .build())
/// .userSettings(
/// StackUserSettingArgs.builder()
/// .action("AUTO_TIME_ZONE_REDIRECTION")
/// .permission("DISABLED")
/// .build(),
/// StackUserSettingArgs.builder()
/// .action("CLIPBOARD_COPY_FROM_LOCAL_DEVICE")
/// .permission("ENABLED")
/// .build(),
/// StackUserSettingArgs.builder()
/// .action("CLIPBOARD_COPY_TO_LOCAL_DEVICE")
/// .permission("ENABLED")
/// .build(),
/// StackUserSettingArgs.builder()
/// .action("DOMAIN_PASSWORD_SIGNIN")
/// .permission("ENABLED")
/// .build(),
/// StackUserSettingArgs.builder()
/// .action("DOMAIN_SMART_CARD_SIGNIN")
/// .permission("DISABLED")
/// .build(),
/// StackUserSettingArgs.builder()
/// .action("FILE_DOWNLOAD")
/// .permission("ENABLED")
/// .build(),
/// StackUserSettingArgs.builder()
/// .action("FILE_UPLOAD")
/// .permission("ENABLED")
/// .build(),
/// StackUserSettingArgs.builder()
/// .action("PRINTING_TO_LOCAL_DEVICE")
/// .permission("ENABLED")
/// .build())
/// .applicationSettings(StackApplicationSettingsArgs.builder()
/// .enabled(true)
/// .settingsGroup("SettingsGroup")
/// .build())
/// .tags(Map.of("TagName", "TagValue"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appstream:Stack
/// properties:
/// name: stack name
/// description: stack description
/// displayName: stack display name
/// feedbackUrl: http://your-domain/feedback
/// redirectUrl: http://your-domain/redirect
/// storageConnectors:
/// - connectorType: HOMEFOLDERS
/// userSettings:
/// - action: AUTO_TIME_ZONE_REDIRECTION
/// permission: DISABLED
/// - action: CLIPBOARD_COPY_FROM_LOCAL_DEVICE
/// permission: ENABLED
/// - action: CLIPBOARD_COPY_TO_LOCAL_DEVICE
/// permission: ENABLED
/// - action: DOMAIN_PASSWORD_SIGNIN
/// permission: ENABLED
/// - action: DOMAIN_SMART_CARD_SIGNIN
/// permission: DISABLED
/// - action: FILE_DOWNLOAD
/// permission: ENABLED
/// - action: FILE_UPLOAD
/// permission: ENABLED
/// - action: PRINTING_TO_LOCAL_DEVICE
/// permission: ENABLED
/// applicationSettings:
/// enabled: true
/// settingsGroup: SettingsGroup
/// tags:
/// TagName: TagValue
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.appstream.Stack`" pulumi-lang-dotnet="`aws.appstream.Stack`" pulumi-lang-go="`appstream.Stack`" pulumi-lang-python="`appstream.Stack`" pulumi-lang-yaml="`aws.appstream.Stack`" pulumi-lang-java="`aws.appstream.Stack`">`aws.appstream.Stack`</span> using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/stack:Stack example stackID
/// ```
class Stack extends CustomResource {
  /// Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
  /// See <span pulumi-lang-nodejs="`accessEndpoints`" pulumi-lang-dotnet="`AccessEndpoints`" pulumi-lang-go="`accessEndpoints`" pulumi-lang-python="`access_endpoints`" pulumi-lang-yaml="`accessEndpoints`" pulumi-lang-java="`accessEndpoints`">`access_endpoints`</span> below.
  late final Output<List<StackAccessEndpoint>> accessEndpoints;

  /// Settings for application settings persistence.
  /// See <span pulumi-lang-nodejs="`applicationSettings`" pulumi-lang-dotnet="`ApplicationSettings`" pulumi-lang-go="`applicationSettings`" pulumi-lang-python="`application_settings`" pulumi-lang-yaml="`applicationSettings`" pulumi-lang-java="`applicationSettings`">`application_settings`</span> below.
  late final Output<StackApplicationSettings> applicationSettings;

  /// ARN of the appstream stack.
  late final Output<String> arn;

  /// Date and time, in UTC and extended RFC 3339 format, when the stack was created.
  late final Output<String> createdTime;

  /// Description for the AppStream stack.
  late final Output<String?> description;

  /// Stack name to display.
  late final Output<String?> displayName;

  /// Domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
  late final Output<List<String>> embedHostDomains;

  /// URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed. .
  late final Output<String> feedbackUrl;

  /// Unique name for the AppStream stack.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// URL that users are redirected to after their streaming session ends.
  late final Output<String> redirectUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the storage connectors to enable.
  /// See <span pulumi-lang-nodejs="`storageConnectors`" pulumi-lang-dotnet="`StorageConnectors`" pulumi-lang-go="`storageConnectors`" pulumi-lang-python="`storage_connectors`" pulumi-lang-yaml="`storageConnectors`" pulumi-lang-java="`storageConnectors`">`storage_connectors`</span> below.
  late final Output<List<StackStorageConnector>> storageConnectors;

  /// The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.
  /// See <span pulumi-lang-nodejs="`streamingExperienceSettings`" pulumi-lang-dotnet="`StreamingExperienceSettings`" pulumi-lang-go="`streamingExperienceSettings`" pulumi-lang-python="`streaming_experience_settings`" pulumi-lang-yaml="`streamingExperienceSettings`" pulumi-lang-java="`streamingExperienceSettings`">`streaming_experience_settings`</span> below.
  late final Output<StackStreamingExperienceSettings>
      streamingExperienceSettings;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action.
  /// See <span pulumi-lang-nodejs="`userSettings`" pulumi-lang-dotnet="`UserSettings`" pulumi-lang-go="`userSettings`" pulumi-lang-python="`user_settings`" pulumi-lang-yaml="`userSettings`" pulumi-lang-java="`userSettings`">`user_settings`</span> below.
  late final Output<List<StackUserSetting>> userSettings;

  Stack(
    String name, {
    StackArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/stack:Stack',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessEndpoints =
        registerOutput<List<StackAccessEndpoint>>('accessEndpoints');
    this.applicationSettings =
        registerOutput<StackApplicationSettings>('applicationSettings');
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.embedHostDomains = registerOutput<List<String>>('embedHostDomains');
    this.feedbackUrl = registerOutput<String>('feedbackUrl');
    this.name = registerOutput<String>('name');
    this.redirectUrl = registerOutput<String>('redirectUrl');
    this.region = registerOutput<String>('region');
    this.storageConnectors =
        registerOutput<List<StackStorageConnector>>('storageConnectors');
    this.streamingExperienceSettings =
        registerOutput<StackStreamingExperienceSettings>(
            'streamingExperienceSettings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userSettings = registerOutput<List<StackUserSetting>>('userSettings');
  }
}
