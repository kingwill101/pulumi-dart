import 'package:pulumi/pulumi.dart';
import 'user_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web User Settings Association.
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
/// const example = new aws.workspacesweb.Portal("example", {displayName: "example"});
/// const exampleUserSettings = new aws.workspacesweb.UserSettings("example", {
/// copyAllowed: "Enabled",
/// downloadAllowed: "Enabled",
/// pasteAllowed: "Enabled",
/// printAllowed: "Enabled",
/// uploadAllowed: "Enabled",
/// });
/// const exampleUserSettingsAssociation = new aws.workspacesweb.UserSettingsAssociation("example", {
/// userSettingsArn: exampleUserSettings.userSettingsArn,
/// portalArn: example.portalArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.Portal("example", display_name="example")
/// example_user_settings = aws.workspacesweb.UserSettings("example",
/// copy_allowed="Enabled",
/// download_allowed="Enabled",
/// paste_allowed="Enabled",
/// print_allowed="Enabled",
/// upload_allowed="Enabled")
/// example_user_settings_association = aws.workspacesweb.UserSettingsAssociation("example",
/// user_settings_arn=example_user_settings.user_settings_arn,
/// portal_arn=example.portal_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.WorkSpacesWeb.Portal("example", new()
/// {
/// DisplayName = "example",
/// });
///
/// var exampleUserSettings = new Aws.WorkSpacesWeb.UserSettings("example", new()
/// {
/// CopyAllowed = "Enabled",
/// DownloadAllowed = "Enabled",
/// PasteAllowed = "Enabled",
/// PrintAllowed = "Enabled",
/// UploadAllowed = "Enabled",
/// });
///
/// var exampleUserSettingsAssociation = new Aws.WorkSpacesWeb.UserSettingsAssociation("example", new()
/// {
/// UserSettingsArn = exampleUserSettings.UserSettingsArn,
/// PortalArn = example.PortalArn,
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
/// example, err := workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// DisplayName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleUserSettings, err := workspacesweb.NewUserSettings(ctx, "example", &workspacesweb.UserSettingsArgs{
/// CopyAllowed:     pulumi.String("Enabled"),
/// DownloadAllowed: pulumi.String("Enabled"),
/// PasteAllowed:    pulumi.String("Enabled"),
/// PrintAllowed:    pulumi.String("Enabled"),
/// UploadAllowed:   pulumi.String("Enabled"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewUserSettingsAssociation(ctx, "example", &workspacesweb.UserSettingsAssociationArgs{
/// UserSettingsArn: exampleUserSettings.UserSettingsArn,
/// PortalArn:       example.PortalArn,
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
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.workspacesweb.UserSettings;
/// import com.pulumi.aws.workspacesweb.UserSettingsArgs;
/// import com.pulumi.aws.workspacesweb.UserSettingsAssociation;
/// import com.pulumi.aws.workspacesweb.UserSettingsAssociationArgs;
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
/// var example = new Portal("example", PortalArgs.builder()
/// .displayName("example")
/// .build());
///
/// var exampleUserSettings = new UserSettings("exampleUserSettings", UserSettingsArgs.builder()
/// .copyAllowed("Enabled")
/// .downloadAllowed("Enabled")
/// .pasteAllowed("Enabled")
/// .printAllowed("Enabled")
/// .uploadAllowed("Enabled")
/// .build());
///
/// var exampleUserSettingsAssociation = new UserSettingsAssociation("exampleUserSettingsAssociation", UserSettingsAssociationArgs.builder()
/// .userSettingsArn(exampleUserSettings.userSettingsArn())
/// .portalArn(example.portalArn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:workspacesweb:Portal
/// properties:
/// displayName: example
/// exampleUserSettings:
/// type: aws:workspacesweb:UserSettings
/// name: example
/// properties:
/// copyAllowed: Enabled
/// downloadAllowed: Enabled
/// pasteAllowed: Enabled
/// printAllowed: Enabled
/// uploadAllowed: Enabled
/// exampleUserSettingsAssociation:
/// type: aws:workspacesweb:UserSettingsAssociation
/// name: example
/// properties:
/// userSettingsArn: ${exampleUserSettings.userSettingsArn}
/// portalArn: ${example.portalArn}
/// ```
/// <!--End PulumiCodeChooser -->
class UserSettingsAssociation extends CustomResource {
  /// ARN of the portal to associate with the user settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the user settings to associate with the portal. Forces replacement if changed.
  late final Output<String> userSettingsArn;

  UserSettingsAssociation(
    String name, {
    UserSettingsAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userSettingsAssociation:UserSettingsAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.portalArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.userSettingsArn = Output.createUnknown<String>();
  }
}
