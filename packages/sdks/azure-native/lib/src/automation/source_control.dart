import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_args.dart';

/// Definition of the source control.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2017-05-15-preview, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a source control
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sourceControl = new AzureNative.Automation.SourceControl("sourceControl", new()
///     {
///         AutoSync = true,
///         AutomationAccountName = "sampleAccount9",
///         Branch = "master",
///         Description = "my description",
///         FolderPath = "/folderOne/folderTwo",
///         PublishRunbook = true,
///         RepoUrl = "https://sampleUser.visualstudio.com/myProject/_git/myRepository",
///         ResourceGroupName = "rg",
///         SecurityToken = new AzureNative.Automation.Inputs.SourceControlSecurityTokenPropertiesArgs
///         {
///             AccessToken = "******",
///             TokenType = AzureNative.Automation.TokenType.PersonalAccessToken,
///         },
///         SourceControlName = "sampleSourceControl",
///         SourceType = AzureNative.Automation.SourceType.VsoGit,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewSourceControl(ctx, "sourceControl", &automation.SourceControlArgs{
/// 			AutoSync:              pulumi.Bool(true),
/// 			AutomationAccountName: pulumi.String("sampleAccount9"),
/// 			Branch:                pulumi.String("master"),
/// 			Description:           pulumi.String("my description"),
/// 			FolderPath:            pulumi.String("/folderOne/folderTwo"),
/// 			PublishRunbook:        pulumi.Bool(true),
/// 			RepoUrl:               pulumi.String("https://sampleUser.visualstudio.com/myProject/_git/myRepository"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			SecurityToken: &automation.SourceControlSecurityTokenPropertiesArgs{
/// 				AccessToken: pulumi.String("******"),
/// 				TokenType:   pulumi.String(automation.TokenTypePersonalAccessToken),
/// 			},
/// 			SourceControlName: pulumi.String("sampleSourceControl"),
/// 			SourceType:        pulumi.String(automation.SourceTypeVsoGit),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.automation.SourceControl;
/// import com.pulumi.azurenative.automation.SourceControlArgs;
/// import com.pulumi.azurenative.automation.inputs.SourceControlSecurityTokenPropertiesArgs;
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
///         var sourceControl = new SourceControl("sourceControl", SourceControlArgs.builder()
///             .autoSync(true)
///             .automationAccountName("sampleAccount9")
///             .branch("master")
///             .description("my description")
///             .folderPath("/folderOne/folderTwo")
///             .publishRunbook(true)
///             .repoUrl("https://sampleUser.visualstudio.com/myProject/_git/myRepository")
///             .resourceGroupName("rg")
///             .securityToken(SourceControlSecurityTokenPropertiesArgs.builder()
///                 .accessToken("******")
///                 .tokenType("PersonalAccessToken")
///                 .build())
///             .sourceControlName("sampleSourceControl")
///             .sourceType("VsoGit")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const sourceControl = new azure_native.automation.SourceControl("sourceControl", {
///     autoSync: true,
///     automationAccountName: "sampleAccount9",
///     branch: "master",
///     description: "my description",
///     folderPath: "/folderOne/folderTwo",
///     publishRunbook: true,
///     repoUrl: "https://sampleUser.visualstudio.com/myProject/_git/myRepository",
///     resourceGroupName: "rg",
///     securityToken: {
///         accessToken: "******",
///         tokenType: azure_native.automation.TokenType.PersonalAccessToken,
///     },
///     sourceControlName: "sampleSourceControl",
///     sourceType: azure_native.automation.SourceType.VsoGit,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// source_control = azure_native.automation.SourceControl("sourceControl",
///     auto_sync=True,
///     automation_account_name="sampleAccount9",
///     branch="master",
///     description="my description",
///     folder_path="/folderOne/folderTwo",
///     publish_runbook=True,
///     repo_url="https://sampleUser.visualstudio.com/myProject/_git/myRepository",
///     resource_group_name="rg",
///     security_token={
///         "access_token": "******",
///         "token_type": azure_native.automation.TokenType.PERSONAL_ACCESS_TOKEN,
///     },
///     source_control_name="sampleSourceControl",
///     source_type=azure_native.automation.SourceType.VSO_GIT)
///
/// ```
///
/// ```yaml
/// resources:
///   sourceControl:
///     type: azure-native:automation:SourceControl
///     properties:
///       autoSync: true
///       automationAccountName: sampleAccount9
///       branch: master
///       description: my description
///       folderPath: /folderOne/folderTwo
///       publishRunbook: true
///       repoUrl: https://sampleUser.visualstudio.com/myProject/_git/myRepository
///       resourceGroupName: rg
///       securityToken:
///         accessToken: '******'
///         tokenType: PersonalAccessToken
///       sourceControlName: sampleSourceControl
///       sourceType: VsoGit
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:automation:SourceControl sampleSourceControl /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/sourceControls/{sourceControlName}
/// ```
class SourceControl extends pulumi.CustomResource {
  /// The auto sync of the source control. Default is false.
  late final pulumi.Output<bool?> autoSync;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The repo branch of the source control. Include branch as empty string for VsoTfvc.
  late final pulumi.Output<String?> branch;
  /// The creation time.
  late final pulumi.Output<String?> creationTime;
  /// The description.
  late final pulumi.Output<String?> description;
  /// The folder path of the source control.
  late final pulumi.Output<String?> folderPath;
  /// The last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The auto publish of the source control. Default is true.
  late final pulumi.Output<bool?> publishRunbook;
  /// The repo url of the source control.
  late final pulumi.Output<String?> repoUrl;
  /// The source type. Must be one of VsoGit, VsoTfvc, GitHub.
  late final pulumi.Output<String?> sourceType;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [SourceControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceControl]. {@macro pulumi_automation_source_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceControl(
    String name, {
    SourceControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:SourceControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoSync = registerOutput<bool?>('autoSync');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    branch = registerOutput<String?>('branch');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    folderPath = registerOutput<String?>('folderPath');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    publishRunbook = registerOutput<bool?>('publishRunbook');
    repoUrl = registerOutput<String?>('repoUrl');
    sourceType = registerOutput<String?>('sourceType');
    type = registerOutput<String>('type');
  }
}
