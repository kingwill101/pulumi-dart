import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link_response.dart';
import 'package_args.dart';
import 'package_error_info_response.dart';
import 'system_data_response.dart';

/// Definition of the Package type.
///
/// Uses Azure REST API version 2024-10-23. In version 2.x of the Azure Native provider, it used API version 2023-05-15-preview.
///
/// Other available API versions: 2023-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a package
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var package = new AzureNative.Automation.Package("package", new()
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
///         },
///         PackageName = "OmsCompositeResources",
///         ResourceGroupName = "rg",
///         RuntimeEnvironmentName = "runtimeEnvironmentName",
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
/// 		_, err := automation.NewPackage(ctx, "package", &automation.PackageArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount33"),
/// 			ContentLink: &automation.ContentLinkArgs{
/// 				ContentHash: &automation.ContentHashArgs{
/// 					Algorithm: pulumi.String("sha265"),
/// 					Value:     pulumi.String("07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A"),
/// 				},
/// 				Uri: pulumi.String("https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip"),
/// 			},
/// 			PackageName:            pulumi.String("OmsCompositeResources"),
/// 			ResourceGroupName:      pulumi.String("rg"),
/// 			RuntimeEnvironmentName: pulumi.String("runtimeEnvironmentName"),
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
/// resource "azure-native_automation_package" "package" {
///   automation_account_name = "myAutomationAccount33"
///   content_link = {
///     content_hash = {
///       algorithm = "sha265"
///       value     = "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A"
///     }
///     uri = "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip"
///   }
///   package_name             = "OmsCompositeResources"
///   resource_group_name      = "rg"
///   runtime_environment_name = "runtimeEnvironmentName"
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
/// import com.pulumi.azurenative.automation.Package;
/// import com.pulumi.azurenative.automation.PackageArgs;
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
///         var package_ = new Package("package", PackageArgs.builder()
///             .automationAccountName("myAutomationAccount33")
///             .contentLink(ContentLinkArgs.builder()
///                 .contentHash(ContentHashArgs.builder()
///                     .algorithm("sha265")
///                     .value("07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A")
///                     .build())
///                 .uri("https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip")
///                 .build())
///             .packageName("OmsCompositeResources")
///             .resourceGroupName("rg")
///             .runtimeEnvironmentName("runtimeEnvironmentName")
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
/// const _package = new azure_native.automation.Package("package", {
///     automationAccountName: "myAutomationAccount33",
///     contentLink: {
///         contentHash: {
///             algorithm: "sha265",
///             value: "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A",
///         },
///         uri: "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip",
///     },
///     packageName: "OmsCompositeResources",
///     resourceGroupName: "rg",
///     runtimeEnvironmentName: "runtimeEnvironmentName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// package = azure_native.automation.Package("package",
///     automation_account_name="myAutomationAccount33",
///     content_link={
///         "content_hash": {
///             "algorithm": "sha265",
///             "value": "07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A",
///         },
///         "uri": "https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip",
///     },
///     package_name="OmsCompositeResources",
///     resource_group_name="rg",
///     runtime_environment_name="runtimeEnvironmentName")
///
/// ```
///
/// ```yaml
/// resources:
///   package:
///     type: azure-native:automation:Package
///     properties:
///       automationAccountName: myAutomationAccount33
///       contentLink:
///         contentHash:
///           algorithm: sha265
///           value: 07E108A962B81DD9C9BAA89BB47C0F6EE52B29E83758B07795E408D258B2B87A
///         uri: https://teststorage.blob.core.windows.net/dsccomposite/OmsCompositeResources.zip
///       packageName: OmsCompositeResources
///       resourceGroupName: rg
///       runtimeEnvironmentName: runtimeEnvironmentName
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
/// $ pulumi import azure-native:automation:Package OmsCompositeResources /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runtimeEnvironments/{runtimeEnvironmentName}/packages/{packageName}
/// ```
class Package extends pulumi.CustomResource {
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> allOf;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the contentLink of the Package.
  late final pulumi.Output<ContentLinkResponse?> contentLink;
  /// Gets or sets the isGlobal flag of the package.
  late final pulumi.Output<bool?> default_;
  /// Gets or sets the error info of the Package.
  late final pulumi.Output<PackageErrorInfoResponse?> error;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the provisioning state of the Package.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the size in bytes of the Package.
  late final pulumi.Output<double?> sizeInBytes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets or sets the version of the Package.
  late final pulumi.Output<String?> version;

  /// Creates a new [Package].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Package]. {@macro pulumi_automation_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Package(
    String name, {
    PackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Package',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allOf = registerOutput<SystemDataResponse>('allOf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentLink = registerOutput<ContentLinkResponse?>('contentLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    default_ = registerOutput<bool?>('default');
    error = registerOutput<PackageErrorInfoResponse?>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PackageErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sizeInBytes = registerOutput<double?>('sizeInBytes');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
