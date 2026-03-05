import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_template_args.dart';

/// Define the virtualMachineTemplate.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVirtualMachineTemplate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineTemplate = new AzureNative.ConnectedVMwarevSphere.VirtualMachineTemplate("virtualMachineTemplate", new()
///     {
///         ExtendedLocation = new AzureNative.ConnectedVMwarevSphere.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Location = "East US",
///         MoRefId = "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///         ResourceGroupName = "testrg",
///         VCenterId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///         VirtualMachineTemplateName = "WebFrontEndTemplate",
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
/// 		_, err := connectedvmwarevsphere.NewVirtualMachineTemplate(ctx, "virtualMachineTemplate", &connectedvmwarevsphere.VirtualMachineTemplateArgs{
/// 			ExtendedLocation: &connectedvmwarevsphere.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Location:                   pulumi.String("East US"),
/// 			MoRefId:                    pulumi.String("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 			ResourceGroupName:          pulumi.String("testrg"),
/// 			VCenterId:                  pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter"),
/// 			VirtualMachineTemplateName: pulumi.String("WebFrontEndTemplate"),
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.VirtualMachineTemplate;
/// import com.pulumi.azurenative.connectedvmwarevsphere.VirtualMachineTemplateArgs;
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
///         var virtualMachineTemplate = new VirtualMachineTemplate("virtualMachineTemplate", VirtualMachineTemplateArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .location("East US")
///             .moRefId("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
///             .resourceGroupName("testrg")
///             .vCenterId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
///             .virtualMachineTemplateName("WebFrontEndTemplate")
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
/// const virtualMachineTemplate = new azure_native.connectedvmwarevsphere.VirtualMachineTemplate("virtualMachineTemplate", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     location: "East US",
///     moRefId: "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resourceGroupName: "testrg",
///     vCenterId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///     virtualMachineTemplateName: "WebFrontEndTemplate",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_template = azure_native.connectedvmwarevsphere.VirtualMachineTemplate("virtualMachineTemplate",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     location="East US",
///     mo_ref_id="aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resource_group_name="testrg",
///     v_center_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter",
///     virtual_machine_template_name="WebFrontEndTemplate")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineTemplate:
///     type: azure-native:connectedvmwarevsphere:VirtualMachineTemplate
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       location: East US
///       moRefId: aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
///       resourceGroupName: testrg
///       vCenterId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter
///       virtualMachineTemplateName: WebFrontEndTemplate
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
/// $ pulumi import azure-native:connectedvmwarevsphere:VirtualMachineTemplate WebFrontEndTemplate /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/virtualMachineTemplates/{virtualMachineTemplateName}
/// ```
class VirtualMachineTemplate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;

  /// Gets or sets the disks the template.
  late final pulumi.Output<List<Map<String, dynamic>>> disks;

  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Firmware type
  late final pulumi.Output<String> firmwareType;

  /// Gets or sets the folder path of the template.
  late final pulumi.Output<String> folderPath;

  /// Gets or sets the inventory Item ID for the virtual machine template.
  late final pulumi.Output<String?> inventoryItemId;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;

  /// Gets or sets the location.
  late final pulumi.Output<String> location;

  /// Gets or sets memory size in MBs for the template.
  late final pulumi.Output<int> memorySizeMB;

  /// Gets or sets the vCenter Managed Object name for the virtual machine template.
  late final pulumi.Output<String> moName;

  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine
  /// template.
  late final pulumi.Output<String?> moRefId;

  /// Gets or sets the name.
  late final pulumi.Output<String> name;

  /// Gets or sets the network interfaces of the template.
  late final pulumi.Output<List<Map<String, dynamic>>> networkInterfaces;

  /// Gets or sets the number of vCPUs for the template.
  late final pulumi.Output<int> numCPUs;

  /// Gets or sets the number of cores per socket for the template.
  /// Defaults to 1 if unspecified.
  late final pulumi.Output<int> numCoresPerSocket;

  /// Gets or sets os name.
  late final pulumi.Output<String> osName;

  /// Gets or sets the type of the os.
  late final pulumi.Output<String> osType;

  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// The resource status information.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;

  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Gets or sets the Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets or sets the current version of VMware Tools.
  late final pulumi.Output<String> toolsVersion;

  /// Gets or sets the current version status of VMware Tools installed in the guest operating system.
  late final pulumi.Output<String> toolsVersionStatus;

  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;

  /// Gets or sets the ARM Id of the vCenter resource in which this template resides.
  late final pulumi.Output<String?> vCenterId;

  /// Creates a new [VirtualMachineTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineTemplate]. {@macro pulumi_connectedvmwarevsphere_virtual_machine_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineTemplate(
    String name, {
    VirtualMachineTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:connectedvmwarevsphere:VirtualMachineTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customResourceName = registerOutput<String>('customResourceName');
    disks = registerOutput<List<Map<String, dynamic>>>('disks');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    firmwareType = registerOutput<String>('firmwareType');
    folderPath = registerOutput<String>('folderPath');
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    memorySizeMB = registerOutput<int>('memorySizeMB');
    moName = registerOutput<String>('moName');
    moRefId = registerOutput<String?>('moRefId');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>>(
      'networkInterfaces',
    );
    numCPUs = registerOutput<int>('numCPUs');
    numCoresPerSocket = registerOutput<int>('numCoresPerSocket');
    osName = registerOutput<String>('osName');
    osType = registerOutput<String>('osType');
    provisioningState = registerOutput<String>('provisioningState');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    toolsVersion = registerOutput<String>('toolsVersion');
    toolsVersionStatus = registerOutput<String>('toolsVersionStatus');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    vCenterId = registerOutput<String?>('vCenterId');
  }
}
