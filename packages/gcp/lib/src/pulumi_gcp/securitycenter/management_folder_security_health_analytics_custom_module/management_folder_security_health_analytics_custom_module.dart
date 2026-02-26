import 'package:pulumi/pulumi.dart';
import '../management_folder_security_health_analytics_custom_module_custom_config/management_folder_security_health_analytics_custom_module_custom_config.dart';
import 'management_folder_security_health_analytics_custom_module_args.dart';

/// Represents an instance of a Security Health Analytics custom module, including
/// its full module name, display name, enablement state, and last updated time.
/// You can create a custom module at the organization, folder, or project level.
/// Custom modules that you create at the organization or folder level are inherited
/// by the child folders and projects.
///
///
/// To get more information about FolderSecurityHealthAnalyticsCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/security-center-management/rest/v1/folders.locations.securityHealthAnalyticsCustomModules)
/// * How-to Guides
/// * [Overview of custom modules for Security Health Analytics](https://cloud.google.com/security-command-center/docs/custom-modules-sha-overview)
///
/// ## Example Usage
///
/// ### Scc Management Folder Security Health Analytics Custom Module Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
/// parent: "organizations/123456789",
/// displayName: "folder-name",
/// deletionProtection: false,
/// });
/// const example = new gcp.securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModule("example", {
/// folder: folder.folderId,
/// location: "global",
/// displayName: "basic_custom_module",
/// enablementState: "ENABLED",
/// customConfig: {
/// predicate: {
/// expression: "resource.rotationPeriod > duration(\"2592000s\")",
/// },
/// resourceSelector: {
/// resourceTypes: ["cloudkms.googleapis.com/CryptoKey"],
/// },
/// description: "The rotation period of the identified cryptokey resource exceeds 30 days.",
/// recommendation: "Set the rotation period to at most 30 days.",
/// severity: "MEDIUM",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
/// parent="organizations/123456789",
/// display_name="folder-name",
/// deletion_protection=False)
/// example = gcp.securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModule("example",
/// folder=folder.folder_id,
/// location="global",
/// display_name="basic_custom_module",
/// enablement_state="ENABLED",
/// custom_config={
/// "predicate": {
/// "expression": "resource.rotationPeriod > duration(\"2592000s\")",
/// },
/// "resource_selector": {
/// "resource_types": ["cloudkms.googleapis.com/CryptoKey"],
/// },
/// "description": "The rotation period of the identified cryptokey resource exceeds 30 days.",
/// "recommendation": "Set the rotation period to at most 30 days.",
/// "severity": "MEDIUM",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var folder = new Gcp.Organizations.Folder("folder", new()
/// {
/// Parent = "organizations/123456789",
/// DisplayName = "folder-name",
/// DeletionProtection = false,
/// });
///
/// var example = new Gcp.SecurityCenter.ManagementFolderSecurityHealthAnalyticsCustomModule("example", new()
/// {
/// Folder = folder.FolderId,
/// Location = "global",
/// DisplayName = "basic_custom_module",
/// EnablementState = "ENABLED",
/// CustomConfig = new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigArgs
/// {
/// Predicate = new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs
/// {
/// Expression = "resource.rotationPeriod > duration(\"2592000s\")",
/// },
/// ResourceSelector = new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs
/// {
/// ResourceTypes = new[]
/// {
/// "cloudkms.googleapis.com/CryptoKey",
/// },
/// },
/// Description = "The rotation period of the identified cryptokey resource exceeds 30 days.",
/// Recommendation = "Set the rotation period to at most 30 days.",
/// Severity = "MEDIUM",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// Parent:             pulumi.String("organizations/123456789"),
/// DisplayName:        pulumi.String("folder-name"),
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = securitycenter.NewManagementFolderSecurityHealthAnalyticsCustomModule(ctx, "example", &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleArgs{
/// Folder:          folder.FolderId,
/// Location:        pulumi.String("global"),
/// DisplayName:     pulumi.String("basic_custom_module"),
/// EnablementState: pulumi.String("ENABLED"),
/// CustomConfig: &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigArgs{
/// Predicate: &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs{
/// Expression: pulumi.String("resource.rotationPeriod > duration(\"2592000s\")"),
/// },
/// ResourceSelector: &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs{
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("cloudkms.googleapis.com/CryptoKey"),
/// },
/// },
/// Description:    pulumi.String("The rotation period of the identified cryptokey resource exceeds 30 days."),
/// Recommendation: pulumi.String("Set the rotation period to at most 30 days."),
/// Severity:       pulumi.String("MEDIUM"),
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModule;
/// import com.pulumi.gcp.securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs;
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
/// var folder = new Folder("folder", FolderArgs.builder()
/// .parent("organizations/123456789")
/// .displayName("folder-name")
/// .deletionProtection(false)
/// .build());
///
/// var example = new ManagementFolderSecurityHealthAnalyticsCustomModule("example", ManagementFolderSecurityHealthAnalyticsCustomModuleArgs.builder()
/// .folder(folder.folderId())
/// .location("global")
/// .displayName("basic_custom_module")
/// .enablementState("ENABLED")
/// .customConfig(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigArgs.builder()
/// .predicate(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs.builder()
/// .expression("resource.rotationPeriod > duration(\"2592000s\")")
/// .build())
/// .resourceSelector(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs.builder()
/// .resourceTypes("cloudkms.googleapis.com/CryptoKey")
/// .build())
/// .description("The rotation period of the identified cryptokey resource exceeds 30 days.")
/// .recommendation("Set the rotation period to at most 30 days.")
/// .severity("MEDIUM")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:organizations:Folder
/// properties:
/// parent: organizations/123456789
/// displayName: folder-name
/// deletionProtection: false
/// example:
/// type: gcp:securitycenter:ManagementFolderSecurityHealthAnalyticsCustomModule
/// properties:
/// folder: ${folder.folderId}
/// location: global
/// displayName: basic_custom_module
/// enablementState: ENABLED
/// customConfig:
/// predicate:
/// expression: resource.rotationPeriod > duration("2592000s")
/// resourceSelector:
/// resourceTypes:
/// - cloudkms.googleapis.com/CryptoKey
/// description: The rotation period of the identified cryptokey resource exceeds 30 days.
/// recommendation: Set the rotation period to at most 30 days.
/// severity: MEDIUM
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Scc Management Folder Security Health Analytics Custom Module Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
/// parent: "organizations/123456789",
/// displayName: "folder-name",
/// deletionProtection: false,
/// });
/// const example = new gcp.securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModule("example", {
/// folder: folder.folderId,
/// location: "global",
/// displayName: "full_custom_module",
/// enablementState: "ENABLED",
/// customConfig: {
/// predicate: {
/// expression: "resource.rotationPeriod > duration(\"2592000s\")",
/// title: "Purpose of the expression",
/// description: "description of the expression",
/// location: "location of the expression",
/// },
/// customOutput: {
/// properties: [{
/// name: "duration",
/// valueExpression: {
/// expression: "resource.rotationPeriod",
/// title: "Purpose of the expression",
/// description: "description of the expression",
/// location: "location of the expression",
/// },
/// }],
/// },
/// resourceSelector: {
/// resourceTypes: ["cloudkms.googleapis.com/CryptoKey"],
/// },
/// severity: "LOW",
/// description: "Description of the custom module",
/// recommendation: "Steps to resolve violation",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
/// parent="organizations/123456789",
/// display_name="folder-name",
/// deletion_protection=False)
/// example = gcp.securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModule("example",
/// folder=folder.folder_id,
/// location="global",
/// display_name="full_custom_module",
/// enablement_state="ENABLED",
/// custom_config={
/// "predicate": {
/// "expression": "resource.rotationPeriod > duration(\"2592000s\")",
/// "title": "Purpose of the expression",
/// "description": "description of the expression",
/// "location": "location of the expression",
/// },
/// "custom_output": {
/// "properties": [{
/// "name": "duration",
/// "value_expression": {
/// "expression": "resource.rotationPeriod",
/// "title": "Purpose of the expression",
/// "description": "description of the expression",
/// "location": "location of the expression",
/// },
/// }],
/// },
/// "resource_selector": {
/// "resource_types": ["cloudkms.googleapis.com/CryptoKey"],
/// },
/// "severity": "LOW",
/// "description": "Description of the custom module",
/// "recommendation": "Steps to resolve violation",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var folder = new Gcp.Organizations.Folder("folder", new()
/// {
/// Parent = "organizations/123456789",
/// DisplayName = "folder-name",
/// DeletionProtection = false,
/// });
///
/// var example = new Gcp.SecurityCenter.ManagementFolderSecurityHealthAnalyticsCustomModule("example", new()
/// {
/// Folder = folder.FolderId,
/// Location = "global",
/// DisplayName = "full_custom_module",
/// EnablementState = "ENABLED",
/// CustomConfig = new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigArgs
/// {
/// Predicate = new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs
/// {
/// Expression = "resource.rotationPeriod > duration(\"2592000s\")",
/// Title = "Purpose of the expression",
/// Description = "description of the expression",
/// Location = "location of the expression",
/// },
/// CustomOutput = new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputArgs
/// {
/// Properties = new[]
/// {
/// new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyArgs
/// {
/// Name = "duration",
/// ValueExpression = new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs
/// {
/// Expression = "resource.rotationPeriod",
/// Title = "Purpose of the expression",
/// Description = "description of the expression",
/// Location = "location of the expression",
/// },
/// },
/// },
/// },
/// ResourceSelector = new Gcp.SecurityCenter.Inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs
/// {
/// ResourceTypes = new[]
/// {
/// "cloudkms.googleapis.com/CryptoKey",
/// },
/// },
/// Severity = "LOW",
/// Description = "Description of the custom module",
/// Recommendation = "Steps to resolve violation",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// Parent:             pulumi.String("organizations/123456789"),
/// DisplayName:        pulumi.String("folder-name"),
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = securitycenter.NewManagementFolderSecurityHealthAnalyticsCustomModule(ctx, "example", &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleArgs{
/// Folder:          folder.FolderId,
/// Location:        pulumi.String("global"),
/// DisplayName:     pulumi.String("full_custom_module"),
/// EnablementState: pulumi.String("ENABLED"),
/// CustomConfig: &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigArgs{
/// Predicate: &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs{
/// Expression:  pulumi.String("resource.rotationPeriod > duration(\"2592000s\")"),
/// Title:       pulumi.String("Purpose of the expression"),
/// Description: pulumi.String("description of the expression"),
/// Location:    pulumi.String("location of the expression"),
/// },
/// CustomOutput: securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputArgs{
/// Properties: securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyArray{
/// &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyArgs{
/// Name: pulumi.String("duration"),
/// ValueExpression: &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs{
/// Expression:  pulumi.String("resource.rotationPeriod"),
/// Title:       pulumi.String("Purpose of the expression"),
/// Description: pulumi.String("description of the expression"),
/// Location:    pulumi.String("location of the expression"),
/// },
/// },
/// },
/// },
/// ResourceSelector: &securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs{
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("cloudkms.googleapis.com/CryptoKey"),
/// },
/// },
/// Severity:       pulumi.String("LOW"),
/// Description:    pulumi.String("Description of the custom module"),
/// Recommendation: pulumi.String("Steps to resolve violation"),
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModule;
/// import com.pulumi.gcp.securitycenter.ManagementFolderSecurityHealthAnalyticsCustomModuleArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs;
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
/// var folder = new Folder("folder", FolderArgs.builder()
/// .parent("organizations/123456789")
/// .displayName("folder-name")
/// .deletionProtection(false)
/// .build());
///
/// var example = new ManagementFolderSecurityHealthAnalyticsCustomModule("example", ManagementFolderSecurityHealthAnalyticsCustomModuleArgs.builder()
/// .folder(folder.folderId())
/// .location("global")
/// .displayName("full_custom_module")
/// .enablementState("ENABLED")
/// .customConfig(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigArgs.builder()
/// .predicate(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs.builder()
/// .expression("resource.rotationPeriod > duration(\"2592000s\")")
/// .title("Purpose of the expression")
/// .description("description of the expression")
/// .location("location of the expression")
/// .build())
/// .customOutput(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputArgs.builder()
/// .properties(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyArgs.builder()
/// .name("duration")
/// .valueExpression(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs.builder()
/// .expression("resource.rotationPeriod")
/// .title("Purpose of the expression")
/// .description("description of the expression")
/// .location("location of the expression")
/// .build())
/// .build())
/// .build())
/// .resourceSelector(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs.builder()
/// .resourceTypes("cloudkms.googleapis.com/CryptoKey")
/// .build())
/// .severity("LOW")
/// .description("Description of the custom module")
/// .recommendation("Steps to resolve violation")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:organizations:Folder
/// properties:
/// parent: organizations/123456789
/// displayName: folder-name
/// deletionProtection: false
/// example:
/// type: gcp:securitycenter:ManagementFolderSecurityHealthAnalyticsCustomModule
/// properties:
/// folder: ${folder.folderId}
/// location: global
/// displayName: full_custom_module
/// enablementState: ENABLED
/// customConfig:
/// predicate:
/// expression: resource.rotationPeriod > duration("2592000s")
/// title: Purpose of the expression
/// description: description of the expression
/// location: location of the expression
/// customOutput:
/// properties:
/// - name: duration
/// valueExpression:
/// expression: resource.rotationPeriod
/// title: Purpose of the expression
/// description: description of the expression
/// location: location of the expression
/// resourceSelector:
/// resourceTypes:
/// - cloudkms.googleapis.com/CryptoKey
/// severity: LOW
/// description: Description of the custom module
/// recommendation: Steps to resolve violation
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FolderSecurityHealthAnalyticsCustomModule can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/securityHealthAnalyticsCustomModules/{{name}}`
///
/// * `{{folder}}/{{location}}/{{name}}`
///
/// When using the `pulumi import` command, FolderSecurityHealthAnalyticsCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementFolderSecurityHealthAnalyticsCustomModule:ManagementFolderSecurityHealthAnalyticsCustomModule default folders/{{folder}}/locations/{{location}}/securityHealthAnalyticsCustomModules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementFolderSecurityHealthAnalyticsCustomModule:ManagementFolderSecurityHealthAnalyticsCustomModule default {{folder}}/{{location}}/{{name}}
/// ```
class ManagementFolderSecurityHealthAnalyticsCustomModule
    extends CustomResource {
  /// If empty, indicates that the custom module was created in the organization, folder,
  /// or project in which you are viewing the custom module. Otherwise,<span pulumi-lang-nodejs=" ancestorModule
  /// " pulumi-lang-dotnet=" AncestorModule
  /// " pulumi-lang-go=" ancestorModule
  /// " pulumi-lang-python=" ancestor_module
  /// " pulumi-lang-yaml=" ancestorModule
  /// " pulumi-lang-java=" ancestorModule
  /// "> ancestor_module
  /// </span>specifies the organization or folder from which the custom module is inherited.
  late final Output<String> ancestorModule;

  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  late final Output<
          ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig?>
      customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  late final Output<String?> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final Output<String?> enablementState;

  /// Numerical ID of the parent folder.
  late final Output<String> folder;

  /// The editor that last updated the custom module.
  late final Output<String> lastEditor;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  late final Output<String?> location;

  /// The resource name of the custom module. Its format is "folders/{folder}/locations/{location}/securityHealthAnalyticsCustomModules/{securityHealthAnalyticsCustomModule}".
  /// The id {securityHealthAnalyticsCustomModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  late final Output<String> name;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  ManagementFolderSecurityHealthAnalyticsCustomModule(
    String name, {
    ManagementFolderSecurityHealthAnalyticsCustomModuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/managementFolderSecurityHealthAnalyticsCustomModule:ManagementFolderSecurityHealthAnalyticsCustomModule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ancestorModule = Output.createUnknown<String>();
    this.customConfig = Output.createUnknown<
        ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig?>();
    this.displayName = Output.createUnknown<String?>();
    this.enablementState = Output.createUnknown<String?>();
    this.folder = Output.createUnknown<String>();
    this.lastEditor = Output.createUnknown<String>();
    this.location = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
