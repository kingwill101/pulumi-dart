import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'host_args.dart';
import 'system_data_response.dart';

/// Define the host.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateHost
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var host = new AzureNative.ConnectedVMwarevSphere.Host("host", new()
///     {
///         ExtendedLocation = new AzureNative.ConnectedVMwarevSphere.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
///         HostName = "HRHost",
///         Location = "East US",
///         MoRefId = "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///         ResourceGroupName = "testrg",
///         VCenterId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
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
/// 	connectedvmwarevsphere "github.com/pulumi/pulumi-azure-native-sdk/connectedvmwarevsphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedvmwarevsphere.NewHost(ctx, "host", &connectedvmwarevsphere.HostArgs{
/// 			ExtendedLocation: &connectedvmwarevsphere.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			HostName:          pulumi.String("HRHost"),
/// 			Location:          pulumi.String("East US"),
/// 			MoRefId:           pulumi.String("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			VCenterId:         pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter"),
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.Host;
/// import com.pulumi.azurenative.connectedvmwarevsphere.HostArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.ExtendedLocationArgs;
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
///         var host = new Host("host", HostArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .hostName("HRHost")
///             .location("East US")
///             .moRefId("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
///             .resourceGroupName("testrg")
///             .vCenterId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
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
/// const host = new azure_native.connectedvmwarevsphere.Host("host", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     hostName: "HRHost",
///     location: "East US",
///     moRefId: "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resourceGroupName: "testrg",
///     vCenterId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// host = azure_native.connectedvmwarevsphere.Host("host",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     host_name="HRHost",
///     location="East US",
///     mo_ref_id="aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resource_group_name="testrg",
///     v_center_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
///
/// ```
///
/// ```yaml
/// resources:
///   host:
///     type: azure-native:connectedvmwarevsphere:Host
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       hostName: HRHost
///       location: East US
///       moRefId: aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
///       resourceGroupName: testrg
///       vCenterId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter
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
/// $ pulumi import azure-native:connectedvmwarevsphere:Host HRHost /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/hosts/{hostName}
/// ```
class Host extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets the max CPU usage across all cores in MHz.
  late final pulumi.Output<double> cpuMhz;

  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;

  /// Gets the datastore ARM ids.
  late final pulumi.Output<List<String>> datastoreIds;

  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Gets or sets the inventory Item ID for the host.
  late final pulumi.Output<String?> inventoryItemId;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;

  /// Gets or sets the location.
  late final pulumi.Output<String> location;

  /// Gets the total amount of physical memory on the host in GB.
  late final pulumi.Output<double> memorySizeGB;

  /// Gets or sets the vCenter Managed Object name for the host.
  late final pulumi.Output<String> moName;

  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the host.
  late final pulumi.Output<String?> moRefId;

  /// Gets or sets the name.
  late final pulumi.Output<String> name;

  /// Gets the network ARM ids.
  late final pulumi.Output<List<String>> networkIds;

  /// Gets the used CPU usage across all cores in MHz.
  late final pulumi.Output<double> overallCpuUsageMHz;

  /// Gets the used physical memory on the host in GB.
  late final pulumi.Output<double> overallMemoryUsageGB;

  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// The resource status information.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;

  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Gets or sets the Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;

  /// Gets or sets the ARM Id of the vCenter resource in which this host resides.
  late final pulumi.Output<String?> vCenterId;

  /// Creates a new [Host].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Host]. {@macro pulumi_connectedvmwarevsphere_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Host(String name, {HostArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:connectedvmwarevsphere:Host',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cpuMhz = registerOutput<double>('cpuMhz');
    customResourceName = registerOutput<String>('customResourceName');
    datastoreIds = registerOutput<List<String>>('datastoreIds');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    memorySizeGB = registerOutput<double>('memorySizeGB');
    moName = registerOutput<String>('moName');
    moRefId = registerOutput<String?>('moRefId');
    this.name = registerOutput<String>('name');
    networkIds = registerOutput<List<String>>('networkIds');
    overallCpuUsageMHz = registerOutput<double>('overallCpuUsageMHz');
    overallMemoryUsageGB = registerOutput<double>('overallMemoryUsageGB');
    provisioningState = registerOutput<String>('provisioningState');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    vCenterId = registerOutput<String?>('vCenterId');
  }
}
