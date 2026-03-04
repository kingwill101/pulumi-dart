import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_args.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Define the datastore.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateDatastore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastore = new AzureNative.ConnectedVMwarevSphere.Datastore("datastore", new()
///     {
///         DatastoreName = "HRDatastore",
///         ExtendedLocation = new AzureNative.ConnectedVMwarevSphere.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
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
/// 		_, err := connectedvmwarevsphere.NewDatastore(ctx, "datastore", &connectedvmwarevsphere.DatastoreArgs{
/// 			DatastoreName: pulumi.String("HRDatastore"),
/// 			ExtendedLocation: &connectedvmwarevsphere.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.Datastore;
/// import com.pulumi.azurenative.connectedvmwarevsphere.DatastoreArgs;
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
///         var datastore = new Datastore("datastore", DatastoreArgs.builder()
///             .datastoreName("HRDatastore")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
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
/// const datastore = new azure_native.connectedvmwarevsphere.Datastore("datastore", {
///     datastoreName: "HRDatastore",
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
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
/// datastore = azure_native.connectedvmwarevsphere.Datastore("datastore",
///     datastore_name="HRDatastore",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     location="East US",
///     mo_ref_id="aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     resource_group_name="testrg",
///     v_center_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ConnectedVMwarevSphere/VCenters/ContosoVCenter")
///
/// ```
///
/// ```yaml
/// resources:
///   datastore:
///     type: azure-native:connectedvmwarevsphere:Datastore
///     properties:
///       datastoreName: HRDatastore
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
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
/// $ pulumi import azure-native:connectedvmwarevsphere:Datastore HRDatastore /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/datastores/{datastoreName}
/// ```
class Datastore extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets or sets Maximum capacity of this datastore in GBs.
  late final pulumi.Output<double> capacityGB;

  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;

  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Gets or sets Available space of this datastore in GBs.
  late final pulumi.Output<double> freeSpaceGB;

  /// Gets or sets the inventory Item ID for the datastore.
  late final pulumi.Output<String?> inventoryItemId;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;

  /// Gets or sets the location.
  late final pulumi.Output<String> location;

  /// Gets or sets the vCenter Managed Object name for the datastore.
  late final pulumi.Output<String> moName;

  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the datastore.
  late final pulumi.Output<String?> moRefId;

  /// Gets or sets the name.
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource.
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

  /// Gets or sets the ARM Id of the vCenter resource in which this datastore resides.
  late final pulumi.Output<String?> vCenterId;

  /// Creates a new [Datastore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datastore]. {@macro pulumi_connectedvmwarevsphere_datastore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datastore(
    String name, {
    DatastoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:connectedvmwarevsphere:Datastore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    capacityGB = registerOutput<double>('capacityGB');
    customResourceName = registerOutput<String>('customResourceName');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    freeSpaceGB = registerOutput<double>('freeSpaceGB');
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    moName = registerOutput<String>('moName');
    moRefId = registerOutput<String?>('moRefId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    vCenterId = registerOutput<String?>('vCenterId');
  }
}
