import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_args.dart';
import 'dedicated_host_instance_view_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Specifies information about the Dedicated host.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a dedicated host .
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedHost = new AzureNative.Compute.DedicatedHost("dedicatedHost", new()
///     {
///         HostGroupName = "myDedicatedHostGroup",
///         HostName = "myDedicatedHost",
///         Location = "westus",
///         PlatformFaultDomain = 1,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Name = "DSv3-Type1",
///         },
///         Tags =
///         {
///             { "department", "HR" },
///         },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDedicatedHost(ctx, "dedicatedHost", &compute.DedicatedHostArgs{
/// 			HostGroupName:       pulumi.String("myDedicatedHostGroup"),
/// 			HostName:            pulumi.String("myDedicatedHost"),
/// 			Location:            pulumi.String("westus"),
/// 			PlatformFaultDomain: pulumi.Int(1),
/// 			ResourceGroupName:   pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Name: pulumi.String("DSv3-Type1"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"department": pulumi.String("HR"),
/// 			},
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
/// import com.pulumi.azurenative.compute.DedicatedHost;
/// import com.pulumi.azurenative.compute.DedicatedHostArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
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
///         var dedicatedHost = new DedicatedHost("dedicatedHost", DedicatedHostArgs.builder()
///             .hostGroupName("myDedicatedHostGroup")
///             .hostName("myDedicatedHost")
///             .location("westus")
///             .platformFaultDomain(1)
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("DSv3-Type1")
///                 .build())
///             .tags(Map.of("department", "HR"))
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
/// const dedicatedHost = new azure_native.compute.DedicatedHost("dedicatedHost", {
///     hostGroupName: "myDedicatedHostGroup",
///     hostName: "myDedicatedHost",
///     location: "westus",
///     platformFaultDomain: 1,
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "DSv3-Type1",
///     },
///     tags: {
///         department: "HR",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_host = azure_native.compute.DedicatedHost("dedicatedHost",
///     host_group_name="myDedicatedHostGroup",
///     host_name="myDedicatedHost",
///     location="westus",
///     platform_fault_domain=1,
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "DSv3-Type1",
///     },
///     tags={
///         "department": "HR",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedHost:
///     type: azure-native:compute:DedicatedHost
///     properties:
///       hostGroupName: myDedicatedHostGroup
///       hostName: myDedicatedHost
///       location: westus
///       platformFaultDomain: 1
///       resourceGroupName: myResourceGroup
///       sku:
///         name: DSv3-Type1
///       tags:
///         department: HR
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
/// $ pulumi import azure-native:compute:DedicatedHost myDedicatedHost /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts/{hostName}
/// ```
class DedicatedHost extends pulumi.CustomResource {
  /// Specifies whether the dedicated host should be replaced automatically in case of a failure. The value is defaulted to 'true' when not provided.
  late final pulumi.Output<bool?> autoReplaceOnFailure;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique id generated and assigned to the dedicated host by the platform. Does not change throughout the lifetime of the host.
  late final pulumi.Output<String> hostId;

  /// The dedicated host instance view.
  late final pulumi.Output<DedicatedHostInstanceViewResponse> instanceView;

  /// Specifies the software license type that will be applied to the VMs deployed on the dedicated host. Possible values are: **None,** **Windows_Server_Hybrid,** **Windows_Server_Perpetual.** The default value is: **None.**
  late final pulumi.Output<String?> licenseType;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Fault domain of the dedicated host within a dedicated host group.
  late final pulumi.Output<int?> platformFaultDomain;

  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// The date when the host was first provisioned.
  late final pulumi.Output<String> provisioningTime;

  /// SKU of the dedicated host for Hardware Generation and VM family. Only name is required to be set. List Microsoft.Compute SKUs for a list of possible values.
  late final pulumi.Output<SkuResponse> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the time at which the Dedicated Host resource was created. Minimum api-version: 2021-11-01.
  late final pulumi.Output<String> timeCreated;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// A list of references to all virtual machines in the Dedicated Host.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualMachines;

  /// Creates a new [DedicatedHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHost]. {@macro pulumi_compute_dedicated_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHost(
    String name, {
    DedicatedHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:DedicatedHost',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoReplaceOnFailure = registerOutput<bool?>('autoReplaceOnFailure');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hostId = registerOutput<String>('hostId');
    instanceView = registerOutput<DedicatedHostInstanceViewResponse>(
      'instanceView',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DedicatedHostInstanceViewResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomain = registerOutput<int?>('platformFaultDomain');
    provisioningState = registerOutput<String>('provisioningState');
    provisioningTime = registerOutput<String>('provisioningTime');
    sku = registerOutput<SkuResponse>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    timeCreated = registerOutput<String>('timeCreated');
    type = registerOutput<String>('type');
    virtualMachines = registerOutput<List<Map<String, dynamic>>>(
      'virtualMachines',
    );
  }
}
