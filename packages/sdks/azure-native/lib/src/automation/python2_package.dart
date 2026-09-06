import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link_response.dart';
import 'module_error_info_response.dart';
import 'python2_package_args.dart';
import 'system_data_response.dart';

/// Definition of the module type.
///
/// Uses Azure REST API version 2024-10-23. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2018-06-30, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a python 2 package
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var python2Package = new AzureNative.Automation.Python2Package("python2Package", new()
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
/// 		_, err := automation.NewPython2Package(ctx, "python2Package", &automation.Python2PackageArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_automation_python2package" "python2Package" {
///   automation_account_name = "myAutomationAccount33"
///   content_link = {
///     content_hash = {
///       algorithm = "sha265"
///       value     = "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A"
///     }
///     uri     = "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip"
///     version = "1.0.0.0"
///   }
///   package_name        = "OmsCompositeResources"
///   resource_group_name = "rg"
///   tags                = {}
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
/// import com.pulumi.azurenative.automation.Python2Package;
/// import com.pulumi.azurenative.automation.Python2PackageArgs;
/// import com.pulumi.azurenative.automation.inputs.ContentLinkArgs;
/// import com.pulumi.azurenative.automation.inputs.ContentHashArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var python2Package = new Python2Package("python2Package", Python2PackageArgs.builder()
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
/// const python2Package = new azure_native.automation.Python2Package("python2Package", {
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
/// python2_package = azure_native.automation.Python2Package("python2Package",
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
///   python2Package:
///     type: azure-native:automation:Python2Package
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
/// $ pulumi import azure-native:automation:Python2Package OmsCompositeResources /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/python2Packages/{packageName}
/// ```
class Python2Package extends pulumi.CustomResource {
  /// Gets or sets the activity count of the module.
  late final pulumi.Output<int?> activityCount;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the contentLink of the module.
  late final pulumi.Output<ContentLinkResponse?> contentLink;
  /// Gets or sets the creation time.
  late final pulumi.Output<String?> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets or sets the error info of the module.
  late final pulumi.Output<ModuleErrorInfoResponse?> error;
  /// Gets or sets the etag of the resource.
  late final pulumi.Output<String?> etag;
  /// Gets or sets type of module, if its composite or not.
  late final pulumi.Output<bool?> isComposite;
  /// Gets or sets the isGlobal flag of the module.
  late final pulumi.Output<bool?> isGlobal;
  /// Gets or sets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the provisioning state of the module.
  late final pulumi.Output<String?> provisioningState;
  /// Gets or sets the size in bytes of the module.
  late final pulumi.Output<double?> sizeInBytes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets or sets the version of the module.
  late final pulumi.Output<String?> version;

  /// Creates a new [Python2Package].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Python2Package]. {@macro pulumi_automation_python2_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Python2Package(
    String name, {
    Python2PackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Python2Package',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activityCount = registerOutput<int?>('activityCount');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentLink = registerOutput<ContentLinkResponse?>('contentLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    error = registerOutput<ModuleErrorInfoResponse?>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModuleErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    isComposite = registerOutput<bool?>('isComposite');
    isGlobal = registerOutput<bool?>('isGlobal');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    sizeInBytes = registerOutput<double?>('sizeInBytes');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }

  /// Creates a typed reference to an existing [Python2Package] resource.
  Python2Package.reference(String urn)
    : super(
        'azure-native:automation:Python2Package',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activityCount = registerOutput<int?>('activityCount');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentLink = registerOutput<ContentLinkResponse?>('contentLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    error = registerOutput<ModuleErrorInfoResponse?>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModuleErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    isComposite = registerOutput<bool?>('isComposite');
    isGlobal = registerOutput<bool?>('isGlobal');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    sizeInBytes = registerOutput<double?>('sizeInBytes');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
