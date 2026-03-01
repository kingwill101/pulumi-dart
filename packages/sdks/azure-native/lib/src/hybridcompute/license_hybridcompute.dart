import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_args.dart';
import 'license_details_response.dart';
import 'system_data_response.dart';

/// Describes a license in a hybrid machine.
///
/// Uses Azure REST API version 2024-07-10. In version 2.x of the Azure Native provider, it used API version 2023-06-20-preview.
///
/// Other available API versions: 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a License
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var license = new AzureNative.HybridCompute.License("license", new()
///     {
///         LicenseDetails = new AzureNative.HybridCompute.Inputs.LicenseDetailsArgs
///         {
///             Edition = AzureNative.HybridCompute.LicenseEdition.Datacenter,
///             Processors = 6,
///             State = AzureNative.HybridCompute.LicenseState.Activated,
///             Target = AzureNative.HybridCompute.LicenseTarget.Windows_Server_2012,
///             Type = AzureNative.HybridCompute.LicenseCoreType.PCore,
///         },
///         LicenseName = "{licenseName}",
///         LicenseType = AzureNative.HybridCompute.LicenseType.ESU,
///         Location = "eastus2euap",
///         ResourceGroupName = "myResourceGroup",
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewLicense(ctx, "license", &hybridcompute.LicenseArgs{
/// 			LicenseDetails: &hybridcompute.LicenseDetailsArgs{
/// 				Edition:    pulumi.String(hybridcompute.LicenseEditionDatacenter),
/// 				Processors: pulumi.Int(6),
/// 				State:      pulumi.String(hybridcompute.LicenseStateActivated),
/// 				Target:     pulumi.String(hybridcompute.LicenseTarget_Windows_Server_2012),
/// 				Type:       pulumi.String(hybridcompute.LicenseCoreTypePCore),
/// 			},
/// 			LicenseName:       pulumi.String("{licenseName}"),
/// 			LicenseType:       pulumi.String(hybridcompute.LicenseTypeESU),
/// 			Location:          pulumi.String("eastus2euap"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.hybridcompute.License;
/// import com.pulumi.azurenative.hybridcompute.LicenseArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.LicenseDetailsArgs;
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
///         var license = new License("license", LicenseArgs.builder()
///             .licenseDetails(LicenseDetailsArgs.builder()
///                 .edition("Datacenter")
///                 .processors(6)
///                 .state("Activated")
///                 .target("Windows Server 2012")
///                 .type("pCore")
///                 .build())
///             .licenseName("{licenseName}")
///             .licenseType("ESU")
///             .location("eastus2euap")
///             .resourceGroupName("myResourceGroup")
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
/// const license = new azure_native.hybridcompute.License("license", {
///     licenseDetails: {
///         edition: azure_native.hybridcompute.LicenseEdition.Datacenter,
///         processors: 6,
///         state: azure_native.hybridcompute.LicenseState.Activated,
///         target: azure_native.hybridcompute.LicenseTarget.Windows_Server_2012,
///         type: azure_native.hybridcompute.LicenseCoreType.PCore,
///     },
///     licenseName: "{licenseName}",
///     licenseType: azure_native.hybridcompute.LicenseType.ESU,
///     location: "eastus2euap",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// license = azure_native.hybridcompute.License("license",
///     license_details={
///         "edition": azure_native.hybridcompute.LicenseEdition.DATACENTER,
///         "processors": 6,
///         "state": azure_native.hybridcompute.LicenseState.ACTIVATED,
///         "target": azure_native.hybridcompute.LicenseTarget.WINDOWS_SERVER_2012,
///         "type": azure_native.hybridcompute.LicenseCoreType.P_CORE,
///     },
///     license_name="{licenseName}",
///     license_type=azure_native.hybridcompute.LicenseType.ESU,
///     location="eastus2euap",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   license:
///     type: azure-native:hybridcompute:License
///     properties:
///       licenseDetails:
///         edition: Datacenter
///         processors: 6
///         state: Activated
///         target: Windows Server 2012
///         type: pCore
///       licenseName: '{licenseName}'
///       licenseType: ESU
///       location: eastus2euap
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:hybridcompute:License {licenseName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/licenses/{licenseName}
/// ```
class LicenseHybridcompute extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Describes the properties of a License.
  late final pulumi.Output<LicenseDetailsResponse?> licenseDetails;
  /// The type of the license resource.
  late final pulumi.Output<String?> licenseType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Describes the tenant id.
  late final pulumi.Output<String?> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LicenseHybridcompute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicenseHybridcompute]. {@macro pulumi_hybridcompute_license_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicenseHybridcompute(
    String name, {
    LicenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridcompute:License',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.licenseDetails = registerOutput<LicenseDetailsResponse?>('licenseDetails');
    this.licenseType = registerOutput<String?>('licenseType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tenantId = registerOutput<String?>('tenantId');
    this.type = registerOutput<String>('type');
  }
}
