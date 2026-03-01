import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'system_data_response.dart';

/// Schema for Application properties.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2022-09-09.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Application_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.DesktopVirtualization.Application("application", new()
///     {
///         ApplicationGroupName = "applicationGroup1",
///         ApplicationName = "application1",
///         CommandLineArguments = "arguments",
///         CommandLineSetting = AzureNative.DesktopVirtualization.CommandLineSetting.Allow,
///         Description = "des1",
///         FilePath = "path",
///         FriendlyName = "friendly",
///         IconIndex = 1,
///         IconPath = "icon",
///         ResourceGroupName = "resourceGroup1",
///         ShowInPortal = true,
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
/// 	desktopvirtualization "github.com/pulumi/pulumi-azure-native-sdk/desktopvirtualization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := desktopvirtualization.NewApplication(ctx, "application", &desktopvirtualization.ApplicationArgs{
/// 			ApplicationGroupName: pulumi.String("applicationGroup1"),
/// 			ApplicationName:      pulumi.String("application1"),
/// 			CommandLineArguments: pulumi.String("arguments"),
/// 			CommandLineSetting:   pulumi.String(desktopvirtualization.CommandLineSettingAllow),
/// 			Description:          pulumi.String("des1"),
/// 			FilePath:             pulumi.String("path"),
/// 			FriendlyName:         pulumi.String("friendly"),
/// 			IconIndex:            pulumi.Int(1),
/// 			IconPath:             pulumi.String("icon"),
/// 			ResourceGroupName:    pulumi.String("resourceGroup1"),
/// 			ShowInPortal:         pulumi.Bool(true),
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
/// import com.pulumi.azurenative.desktopvirtualization.Application;
/// import com.pulumi.azurenative.desktopvirtualization.ApplicationArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .applicationGroupName("applicationGroup1")
///             .applicationName("application1")
///             .commandLineArguments("arguments")
///             .commandLineSetting("Allow")
///             .description("des1")
///             .filePath("path")
///             .friendlyName("friendly")
///             .iconIndex(1)
///             .iconPath("icon")
///             .resourceGroupName("resourceGroup1")
///             .showInPortal(true)
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
/// const application = new azure_native.desktopvirtualization.Application("application", {
///     applicationGroupName: "applicationGroup1",
///     applicationName: "application1",
///     commandLineArguments: "arguments",
///     commandLineSetting: azure_native.desktopvirtualization.CommandLineSetting.Allow,
///     description: "des1",
///     filePath: "path",
///     friendlyName: "friendly",
///     iconIndex: 1,
///     iconPath: "icon",
///     resourceGroupName: "resourceGroup1",
///     showInPortal: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.desktopvirtualization.Application("application",
///     application_group_name="applicationGroup1",
///     application_name="application1",
///     command_line_arguments="arguments",
///     command_line_setting=azure_native.desktopvirtualization.CommandLineSetting.ALLOW,
///     description="des1",
///     file_path="path",
///     friendly_name="friendly",
///     icon_index=1,
///     icon_path="icon",
///     resource_group_name="resourceGroup1",
///     show_in_portal=True)
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:desktopvirtualization:Application
///     properties:
///       applicationGroupName: applicationGroup1
///       applicationName: application1
///       commandLineArguments: arguments
///       commandLineSetting: Allow
///       description: des1
///       filePath: path
///       friendlyName: friendly
///       iconIndex: 1
///       iconPath: icon
///       resourceGroupName: resourceGroup1
///       showInPortal: true
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
/// $ pulumi import azure-native:desktopvirtualization:Application applicationGroup1/application1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/applicationGroups/{applicationGroupName}/applications/{applicationName}
/// ```
class Application extends pulumi.CustomResource {
  /// Resource Type of Application.
  late final pulumi.Output<String?> applicationType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Command Line Arguments for Application.
  late final pulumi.Output<String?> commandLineArguments;
  /// Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all.
  late final pulumi.Output<String> commandLineSetting;
  /// Description of Application.
  late final pulumi.Output<String?> description;
  /// Specifies a path for the executable file for the application.
  late final pulumi.Output<String?> filePath;
  /// Friendly name of Application.
  late final pulumi.Output<String?> friendlyName;
  /// the icon a 64 bit string as a byte array.
  late final pulumi.Output<String> iconContent;
  /// Hash of the icon.
  late final pulumi.Output<String> iconHash;
  /// Index of the icon.
  late final pulumi.Output<int?> iconIndex;
  /// Path to icon.
  late final pulumi.Output<String?> iconPath;
  /// Specifies the package application Id for MSIX applications
  late final pulumi.Output<String?> msixPackageApplicationId;
  /// Specifies the package family name for MSIX applications
  late final pulumi.Output<String?> msixPackageFamilyName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ObjectId of Application. (internal use)
  late final pulumi.Output<String> objectId;
  /// Specifies whether to show the RemoteApp program in the RD Web Access server.
  late final pulumi.Output<bool?> showInPortal;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_desktopvirtualization_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:desktopvirtualization:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationType = registerOutput<String?>('applicationType');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.commandLineArguments = registerOutput<String?>('commandLineArguments');
    this.commandLineSetting = registerOutput<String>('commandLineSetting');
    this.description = registerOutput<String?>('description');
    this.filePath = registerOutput<String?>('filePath');
    this.friendlyName = registerOutput<String?>('friendlyName');
    this.iconContent = registerOutput<String>('iconContent');
    this.iconHash = registerOutput<String>('iconHash');
    this.iconIndex = registerOutput<int?>('iconIndex');
    this.iconPath = registerOutput<String?>('iconPath');
    this.msixPackageApplicationId = registerOutput<String?>('msixPackageApplicationId');
    this.msixPackageFamilyName = registerOutput<String?>('msixPackageFamilyName');
    this.name = registerOutput<String>('name');
    this.objectId = registerOutput<String>('objectId');
    this.showInPortal = registerOutput<bool?>('showInPortal');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
