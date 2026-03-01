import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_error_info_response.dart';
import 'python3_package_args.dart';

/// Definition of the module type.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a python 3 package
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var python3Package = new AzureNative.Automation.Python3Package("python3Package", new()
///     {
///         AutomationAccountName = "myAutomationAccount33",
///         ContentLink = new AzureNative.Automation.Inputs.ContentLinkArgs
///         {
///             ContentHash = new AzureNative.Automation.Inputs.ContentHashArgs
///             {
///                 Algorithm = "sha265",
///                 Value = "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A",
///             },
///             Uri = "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip",
///             Version = "1.0.0.0",
///         },
///         PackageName = "OmsCompositeResources",
///         ResourceGroupName = "rg",
///         Tags = null,
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
/// 		_, err := automation.NewPython3Package(ctx, "python3Package", &automation.Python3PackageArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount33"),
/// 			ContentLink: &automation.ContentLinkArgs{
/// 				ContentHash: &automation.ContentHashArgs{
/// 					Algorithm: pulumi.String("sha265"),
/// 					Value:     pulumi.String("07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A"),
/// 				},
/// 				Uri:     pulumi.String("https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip"),
/// 				Version: pulumi.String("1.0.0.0"),
/// 			},
/// 			PackageName:       pulumi.String("OmsCompositeResources"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.automation.Python3Package;
/// import com.pulumi.azurenative.automation.Python3PackageArgs;
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
///         var python3Package = new Python3Package("python3Package", Python3PackageArgs.builder()
///             .automationAccountName("myAutomationAccount33")
///             .contentLink(ContentLinkArgs.builder()
///                 .contentHash(ContentHashArgs.builder()
///                     .algorithm("sha265")
///                     .value("07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A")
///                     .build())
///                 .uri("https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip")
///                 .version("1.0.0.0")
///                 .build())
///             .packageName("OmsCompositeResources")
///             .resourceGroupName("rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const python3Package = new azure_native.automation.Python3Package("python3Package", {
///     automationAccountName: "myAutomationAccount33",
///     contentLink: {
///         contentHash: {
///             algorithm: "sha265",
///             value: "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A",
///         },
///         uri: "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip",
///         version: "1.0.0.0",
///     },
///     packageName: "OmsCompositeResources",
///     resourceGroupName: "rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// python3_package = azure_native.automation.Python3Package("python3Package",
///     automation_account_name="myAutomationAccount33",
///     content_link={
///         "content_hash": {
///             "algorithm": "sha265",
///             "value": "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A",
///         },
///         "uri": "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip",
///         "version": "1.0.0.0",
///     },
///     package_name="OmsCompositeResources",
///     resource_group_name="rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   python3Package:
///     type: azure-native:automation:Python3Package
///     properties:
///       automationAccountName: myAutomationAccount33
///       contentLink:
///         contentHash:
///           algorithm: sha265
///           value: 07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A
///         uri: https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip
///         version: 1.0.0.0
///       packageName: OmsCompositeResources
///       resourceGroupName: rg
///       tags: {}
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
/// $ pulumi import azure-native:automation:Python3Package OmsCompositeResources /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/python3Packages/{packageName}
/// ```
class Python3Package extends pulumi.CustomResource {
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

  /// Creates a new [Python3Package].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Python3Package]. {@macro pulumi_automation_python3_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Python3Package(
    String name, {
    Python3PackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Python3Package',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activityCount = registerOutput<int?>('activityCount');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.creationTime = registerOutput<String?>('creationTime');
    this.description = registerOutput<String?>('description');
    this.error = registerOutput<ModuleErrorInfoResponse?>('error');
    this.etag = registerOutput<String?>('etag');
    this.isComposite = registerOutput<bool?>('isComposite');
    this.isGlobal = registerOutput<bool?>('isGlobal');
    this.lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String?>('provisioningState');
    this.sizeInBytes = registerOutput<double?>('sizeInBytes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String?>('version');
  }
}
