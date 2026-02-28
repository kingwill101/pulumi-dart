import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_custom_module_args.dart';
import 'folder_custom_module_custom_config.dart';

/// Represents an instance of a Security Health Analytics custom module, including
/// its full module name, display name, enablement state, and last updated time.
/// You can create a custom module at the organization, folder, or project level.
/// Custom modules that you create at the organization or folder level are inherited
/// by the child folders and projects.
///
///
/// To get more information about FolderCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/folders.securityHealthAnalyticsSettings.customModules)
/// * How-to Guides
/// * [Overview of custom modules for Security Health Analytics](https://cloud.google.com/security-command-center/docs/custom-modules-sha-overview)
///
/// ## Example Usage
///
/// ### Scc Folder Custom Module Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     parent: "organizations/123456789",
///     displayName: "folder-name",
///     deletionProtection: false,
/// });
/// const example = new gcp.securitycenter.FolderCustomModule("example", {
///     folder: folder.folderId,
///     displayName: "basic_custom_module",
///     enablementState: "ENABLED",
///     customConfig: {
///         predicate: {
///             expression: "resource.rotationPeriod > duration(\"2592000s\")",
///         },
///         resourceSelector: {
///             resourceTypes: ["cloudkms.googleapis.com/CryptoKey"],
///         },
///         description: "The rotation period of the identified cryptokey resource exceeds 30 days.",
///         recommendation: "Set the rotation period to at most 30 days.",
///         severity: "MEDIUM",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
///     parent="organizations/123456789",
///     display_name="folder-name",
///     deletion_protection=False)
/// example = gcp.securitycenter.FolderCustomModule("example",
///     folder=folder.folder_id,
///     display_name="basic_custom_module",
///     enablement_state="ENABLED",
///     custom_config={
///         "predicate": {
///             "expression": "resource.rotationPeriod > duration(\"2592000s\")",
///         },
///         "resource_selector": {
///             "resource_types": ["cloudkms.googleapis.com/CryptoKey"],
///         },
///         "description": "The rotation period of the identified cryptokey resource exceeds 30 days.",
///         "recommendation": "Set the rotation period to at most 30 days.",
///         "severity": "MEDIUM",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         Parent = "organizations/123456789",
///         DisplayName = "folder-name",
///         DeletionProtection = false,
///     });
///
///     var example = new Gcp.SecurityCenter.FolderCustomModule("example", new()
///     {
///         Folder = folder.FolderId,
///         DisplayName = "basic_custom_module",
///         EnablementState = "ENABLED",
///         CustomConfig = new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigArgs
///         {
///             Predicate = new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigPredicateArgs
///             {
///                 Expression = "resource.rotationPeriod > duration(\"2592000s\")",
///             },
///             ResourceSelector = new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigResourceSelectorArgs
///             {
///                 ResourceTypes = new[]
///                 {
///                     "cloudkms.googleapis.com/CryptoKey",
///                 },
///             },
///             Description = "The rotation period of the identified cryptokey resource exceeds 30 days.",
///             Recommendation = "Set the rotation period to at most 30 days.",
///             Severity = "MEDIUM",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DisplayName:        pulumi.String("folder-name"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewFolderCustomModule(ctx, "example", &securitycenter.FolderCustomModuleArgs{
/// 			Folder:          folder.FolderId,
/// 			DisplayName:     pulumi.String("basic_custom_module"),
/// 			EnablementState: pulumi.String("ENABLED"),
/// 			CustomConfig: &securitycenter.FolderCustomModuleCustomConfigArgs{
/// 				Predicate: &securitycenter.FolderCustomModuleCustomConfigPredicateArgs{
/// 					Expression: pulumi.String("resource.rotationPeriod > duration(\"2592000s\")"),
/// 				},
/// 				ResourceSelector: &securitycenter.FolderCustomModuleCustomConfigResourceSelectorArgs{
/// 					ResourceTypes: pulumi.StringArray{
/// 						pulumi.String("cloudkms.googleapis.com/CryptoKey"),
/// 					},
/// 				},
/// 				Description:    pulumi.String("The rotation period of the identified cryptokey resource exceeds 30 days."),
/// 				Recommendation: pulumi.String("Set the rotation period to at most 30 days."),
/// 				Severity:       pulumi.String("MEDIUM"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.securitycenter.FolderCustomModule;
/// import com.pulumi.gcp.securitycenter.FolderCustomModuleArgs;
/// import com.pulumi.gcp.securitycenter.inputs.FolderCustomModuleCustomConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.FolderCustomModuleCustomConfigPredicateArgs;
/// import com.pulumi.gcp.securitycenter.inputs.FolderCustomModuleCustomConfigResourceSelectorArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var folder = new Folder("folder", FolderArgs.builder()
///             .parent("organizations/123456789")
///             .displayName("folder-name")
///             .deletionProtection(false)
///             .build());
///
///         var example = new FolderCustomModule("example", FolderCustomModuleArgs.builder()
///             .folder(folder.folderId())
///             .displayName("basic_custom_module")
///             .enablementState("ENABLED")
///             .customConfig(FolderCustomModuleCustomConfigArgs.builder()
///                 .predicate(FolderCustomModuleCustomConfigPredicateArgs.builder()
///                     .expression("resource.rotationPeriod > duration(\"2592000s\")")
///                     .build())
///                 .resourceSelector(FolderCustomModuleCustomConfigResourceSelectorArgs.builder()
///                     .resourceTypes("cloudkms.googleapis.com/CryptoKey")
///                     .build())
///                 .description("The rotation period of the identified cryptokey resource exceeds 30 days.")
///                 .recommendation("Set the rotation period to at most 30 days.")
///                 .severity("MEDIUM")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       parent: organizations/123456789
///       displayName: folder-name
///       deletionProtection: false
///   example:
///     type: gcp:securitycenter:FolderCustomModule
///     properties:
///       folder: ${folder.folderId}
///       displayName: basic_custom_module
///       enablementState: ENABLED
///       customConfig:
///         predicate:
///           expression: resource.rotationPeriod > duration("2592000s")
///         resourceSelector:
///           resourceTypes:
///             - cloudkms.googleapis.com/CryptoKey
///         description: The rotation period of the identified cryptokey resource exceeds 30 days.
///         recommendation: Set the rotation period to at most 30 days.
///         severity: MEDIUM
/// ```
///
/// ### Scc Folder Custom Module Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     parent: "organizations/123456789",
///     displayName: "folder-name",
///     deletionProtection: false,
/// });
/// const example = new gcp.securitycenter.FolderCustomModule("example", {
///     folder: folder.folderId,
///     displayName: "full_custom_module",
///     enablementState: "ENABLED",
///     customConfig: {
///         predicate: {
///             expression: "resource.rotationPeriod > duration(\"2592000s\")",
///             title: "Purpose of the expression",
///             description: "description of the expression",
///             location: "location of the expression",
///         },
///         customOutput: {
///             properties: [{
///                 name: "duration",
///                 valueExpression: {
///                     expression: "resource.rotationPeriod",
///                     title: "Purpose of the expression",
///                     description: "description of the expression",
///                     location: "location of the expression",
///                 },
///             }],
///         },
///         resourceSelector: {
///             resourceTypes: ["cloudkms.googleapis.com/CryptoKey"],
///         },
///         severity: "LOW",
///         description: "Description of the custom module",
///         recommendation: "Steps to resolve violation",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
///     parent="organizations/123456789",
///     display_name="folder-name",
///     deletion_protection=False)
/// example = gcp.securitycenter.FolderCustomModule("example",
///     folder=folder.folder_id,
///     display_name="full_custom_module",
///     enablement_state="ENABLED",
///     custom_config={
///         "predicate": {
///             "expression": "resource.rotationPeriod > duration(\"2592000s\")",
///             "title": "Purpose of the expression",
///             "description": "description of the expression",
///             "location": "location of the expression",
///         },
///         "custom_output": {
///             "properties": [{
///                 "name": "duration",
///                 "value_expression": {
///                     "expression": "resource.rotationPeriod",
///                     "title": "Purpose of the expression",
///                     "description": "description of the expression",
///                     "location": "location of the expression",
///                 },
///             }],
///         },
///         "resource_selector": {
///             "resource_types": ["cloudkms.googleapis.com/CryptoKey"],
///         },
///         "severity": "LOW",
///         "description": "Description of the custom module",
///         "recommendation": "Steps to resolve violation",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         Parent = "organizations/123456789",
///         DisplayName = "folder-name",
///         DeletionProtection = false,
///     });
///
///     var example = new Gcp.SecurityCenter.FolderCustomModule("example", new()
///     {
///         Folder = folder.FolderId,
///         DisplayName = "full_custom_module",
///         EnablementState = "ENABLED",
///         CustomConfig = new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigArgs
///         {
///             Predicate = new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigPredicateArgs
///             {
///                 Expression = "resource.rotationPeriod > duration(\"2592000s\")",
///                 Title = "Purpose of the expression",
///                 Description = "description of the expression",
///                 Location = "location of the expression",
///             },
///             CustomOutput = new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigCustomOutputArgs
///             {
///                 Properties = new[]
///                 {
///                     new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigCustomOutputPropertyArgs
///                     {
///                         Name = "duration",
///                         ValueExpression = new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs
///                         {
///                             Expression = "resource.rotationPeriod",
///                             Title = "Purpose of the expression",
///                             Description = "description of the expression",
///                             Location = "location of the expression",
///                         },
///                     },
///                 },
///             },
///             ResourceSelector = new Gcp.SecurityCenter.Inputs.FolderCustomModuleCustomConfigResourceSelectorArgs
///             {
///                 ResourceTypes = new[]
///                 {
///                     "cloudkms.googleapis.com/CryptoKey",
///                 },
///             },
///             Severity = "LOW",
///             Description = "Description of the custom module",
///             Recommendation = "Steps to resolve violation",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DisplayName:        pulumi.String("folder-name"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewFolderCustomModule(ctx, "example", &securitycenter.FolderCustomModuleArgs{
/// 			Folder:          folder.FolderId,
/// 			DisplayName:     pulumi.String("full_custom_module"),
/// 			EnablementState: pulumi.String("ENABLED"),
/// 			CustomConfig: &securitycenter.FolderCustomModuleCustomConfigArgs{
/// 				Predicate: &securitycenter.FolderCustomModuleCustomConfigPredicateArgs{
/// 					Expression:  pulumi.String("resource.rotationPeriod > duration(\"2592000s\")"),
/// 					Title:       pulumi.String("Purpose of the expression"),
/// 					Description: pulumi.String("description of the expression"),
/// 					Location:    pulumi.String("location of the expression"),
/// 				},
/// 				CustomOutput: securitycenter.FolderCustomModuleCustomConfigCustomOutputArgs{
/// 					Properties: securitycenter.FolderCustomModuleCustomConfigCustomOutputPropertyArray{
/// 						&securitycenter.FolderCustomModuleCustomConfigCustomOutputPropertyArgs{
/// 							Name: pulumi.String("duration"),
/// 							ValueExpression: &securitycenter.FolderCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs{
/// 								Expression:  pulumi.String("resource.rotationPeriod"),
/// 								Title:       pulumi.String("Purpose of the expression"),
/// 								Description: pulumi.String("description of the expression"),
/// 								Location:    pulumi.String("location of the expression"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				ResourceSelector: &securitycenter.FolderCustomModuleCustomConfigResourceSelectorArgs{
/// 					ResourceTypes: pulumi.StringArray{
/// 						pulumi.String("cloudkms.googleapis.com/CryptoKey"),
/// 					},
/// 				},
/// 				Severity:       pulumi.String("LOW"),
/// 				Description:    pulumi.String("Description of the custom module"),
/// 				Recommendation: pulumi.String("Steps to resolve violation"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.securitycenter.FolderCustomModule;
/// import com.pulumi.gcp.securitycenter.FolderCustomModuleArgs;
/// import com.pulumi.gcp.securitycenter.inputs.FolderCustomModuleCustomConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.FolderCustomModuleCustomConfigPredicateArgs;
/// import com.pulumi.gcp.securitycenter.inputs.FolderCustomModuleCustomConfigCustomOutputArgs;
/// import com.pulumi.gcp.securitycenter.inputs.FolderCustomModuleCustomConfigResourceSelectorArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var folder = new Folder("folder", FolderArgs.builder()
///             .parent("organizations/123456789")
///             .displayName("folder-name")
///             .deletionProtection(false)
///             .build());
///
///         var example = new FolderCustomModule("example", FolderCustomModuleArgs.builder()
///             .folder(folder.folderId())
///             .displayName("full_custom_module")
///             .enablementState("ENABLED")
///             .customConfig(FolderCustomModuleCustomConfigArgs.builder()
///                 .predicate(FolderCustomModuleCustomConfigPredicateArgs.builder()
///                     .expression("resource.rotationPeriod > duration(\"2592000s\")")
///                     .title("Purpose of the expression")
///                     .description("description of the expression")
///                     .location("location of the expression")
///                     .build())
///                 .customOutput(FolderCustomModuleCustomConfigCustomOutputArgs.builder()
///                     .properties(FolderCustomModuleCustomConfigCustomOutputPropertyArgs.builder()
///                         .name("duration")
///                         .valueExpression(FolderCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs.builder()
///                             .expression("resource.rotationPeriod")
///                             .title("Purpose of the expression")
///                             .description("description of the expression")
///                             .location("location of the expression")
///                             .build())
///                         .build())
///                     .build())
///                 .resourceSelector(FolderCustomModuleCustomConfigResourceSelectorArgs.builder()
///                     .resourceTypes("cloudkms.googleapis.com/CryptoKey")
///                     .build())
///                 .severity("LOW")
///                 .description("Description of the custom module")
///                 .recommendation("Steps to resolve violation")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       parent: organizations/123456789
///       displayName: folder-name
///       deletionProtection: false
///   example:
///     type: gcp:securitycenter:FolderCustomModule
///     properties:
///       folder: ${folder.folderId}
///       displayName: full_custom_module
///       enablementState: ENABLED
///       customConfig:
///         predicate:
///           expression: resource.rotationPeriod > duration("2592000s")
///           title: Purpose of the expression
///           description: description of the expression
///           location: location of the expression
///         customOutput:
///           properties:
///             - name: duration
///               valueExpression:
///                 expression: resource.rotationPeriod
///                 title: Purpose of the expression
///                 description: description of the expression
///                 location: location of the expression
///         resourceSelector:
///           resourceTypes:
///             - cloudkms.googleapis.com/CryptoKey
///         severity: LOW
///         description: Description of the custom module
///         recommendation: Steps to resolve violation
/// ```
///
///
/// ## Import
///
/// FolderCustomModule can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/securityHealthAnalyticsSettings/customModules/{{name}}`
///
/// * `{{folder}}/{{name}}`
///
/// When using the `pulumi import` command, FolderCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderCustomModule:FolderCustomModule default folders/{{folder}}/securityHealthAnalyticsSettings/customModules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderCustomModule:FolderCustomModule default {{folder}}/{{name}}
/// ```
class FolderCustomModule extends pulumi.CustomResource {
  /// If empty, indicates that the custom module was created in the organization, folder,
  /// or project in which you are viewing the custom module. Otherwise, ancestor_module
  /// specifies the organization or folder from which the custom module is inherited.
  late final pulumi.Output<String> ancestorModule;

  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  late final pulumi.Output<FolderCustomModuleCustomConfig> customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  late final pulumi.Output<String> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> enablementState;

  /// Numerical ID of the parent folder.
  late final pulumi.Output<String> folder;

  /// The editor that last updated the custom module.
  late final pulumi.Output<String> lastEditor;

  /// The resource name of the custom module. Its format is "folders/{folder_id}/securityHealthAnalyticsSettings/customModules/{customModule}".
  /// The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  late final pulumi.Output<String> name;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FolderCustomModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderCustomModule]. {@macro pulumi_securitycenter_folder_custom_module_folder_custom_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderCustomModule(
    String name, {
    FolderCustomModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/folderCustomModule:FolderCustomModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ancestorModule = registerOutput<String>('ancestorModule');
    this.customConfig =
        registerOutput<FolderCustomModuleCustomConfig>('customConfig');
    this.displayName = registerOutput<String>('displayName');
    this.enablementState = registerOutput<String>('enablementState');
    this.folder = registerOutput<String>('folder');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.name = registerOutput<String>('name');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
