import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_error_info_response.dart';
import 'power_shell72_module_args.dart';

/// Definition of the module type.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2023-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a module
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var powerShell72Module = new AzureNative.Automation.PowerShell72Module("powerShell72Module", new()
///     {
///         AutomationAccountName = "myAutomationAccount33",
///         ContentLink = new AzureNative.Automation.Inputs.ContentLinkArgs
///         {
///             ContentHash = new AzureNative.Automation.Inputs.ContentHashArgs
///             {
///                 Algorithm = "sha265",
///                 Value = "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87B",
///             },
///             Uri = "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip",
///             Version = "1.0.0.0",
///         },
///         ModuleName = "OmsCompositeResources",
///         ResourceGroupName = "rg",
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
/// 		_, err := automation.NewPowerShell72Module(ctx, "powerShell72Module", &automation.PowerShell72ModuleArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount33"),
/// 			ContentLink: &automation.ContentLinkArgs{
/// 				ContentHash: &automation.ContentHashArgs{
/// 					Algorithm: pulumi.String("sha265"),
/// 					Value:     pulumi.String("07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87B"),
/// 				},
/// 				Uri:     pulumi.String("https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip"),
/// 				Version: pulumi.String("1.0.0.0"),
/// 			},
/// 			ModuleName:        pulumi.String("OmsCompositeResources"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.automation.PowerShell72Module;
/// import com.pulumi.azurenative.automation.PowerShell72ModuleArgs;
/// import com.pulumi.azurenative.automation.inputs.ContentLinkArgs;
/// import com.pulumi.azurenative.automation.inputs.ContentHashArgs;
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
///         var powerShell72Module = new PowerShell72Module("powerShell72Module", PowerShell72ModuleArgs.builder()
///             .automationAccountName("myAutomationAccount33")
///             .contentLink(ContentLinkArgs.builder()
///                 .contentHash(ContentHashArgs.builder()
///                     .algorithm("sha265")
///                     .value("07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87B")
///                     .build())
///                 .uri("https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip")
///                 .version("1.0.0.0")
///                 .build())
///             .moduleName("OmsCompositeResources")
///             .resourceGroupName("rg")
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
/// const powerShell72Module = new azure_native.automation.PowerShell72Module("powerShell72Module", {
///     automationAccountName: "myAutomationAccount33",
///     contentLink: {
///         contentHash: {
///             algorithm: "sha265",
///             value: "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87B",
///         },
///         uri: "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip",
///         version: "1.0.0.0",
///     },
///     moduleName: "OmsCompositeResources",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// power_shell72_module = azure_native.automation.PowerShell72Module("powerShell72Module",
///     automation_account_name="myAutomationAccount33",
///     content_link={
///         "content_hash": {
///             "algorithm": "sha265",
///             "value": "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87B",
///         },
///         "uri": "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip",
///         "version": "1.0.0.0",
///     },
///     module_name="OmsCompositeResources",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   powerShell72Module:
///     type: azure-native:automation:PowerShell72Module
///     properties:
///       automationAccountName: myAutomationAccount33
///       contentLink:
///         contentHash:
///           algorithm: sha265
///           value: 07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87B
///         uri: https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip
///         version: 1.0.0.0
///       moduleName: OmsCompositeResources
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:automation:PowerShell72Module OmsCompositeResources /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/powerShell72Modules/{moduleName}
/// ```
class PowerShell72Module extends pulumi.CustomResource {
  /// Gets the activity count of the module.
  late final pulumi.Output<int?> activityCount;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the creation time.
  late final pulumi.Output<String?> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets the error info of the module.
  late final pulumi.Output<ModuleErrorInfoResponse?> error;
  /// Gets the etag of the resource.
  late final pulumi.Output<String?> etag;
  /// Gets type of module, if its composite or not.
  late final pulumi.Output<bool?> isComposite;
  /// Gets the isGlobal flag of the module.
  late final pulumi.Output<bool?> isGlobal;
  /// Gets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The Azure Region where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the provisioning state of the module.
  late final pulumi.Output<String?> provisioningState;
  /// Gets the size in bytes of the module.
  late final pulumi.Output<double?> sizeInBytes;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// Gets the version of the module.
  late final pulumi.Output<String?> version;

  /// Creates a new [PowerShell72Module].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PowerShell72Module]. {@macro pulumi_automation_power_shell72_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PowerShell72Module(
    String name, {
    PowerShell72ModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:PowerShell72Module',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activityCount = registerOutput<int?>('activityCount');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    error = registerOutput<ModuleErrorInfoResponse?>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModuleErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    isComposite = registerOutput<bool?>('isComposite');
    isGlobal = registerOutput<bool?>('isGlobal');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    sizeInBytes = registerOutput<double?>('sizeInBytes');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
