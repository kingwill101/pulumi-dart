import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_public_ipargs.dart';

/// NSX Public IP Block
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadNetworks_CreatePublicIP
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadNetworkPublicIP = new AzureNative.AVS.WorkloadNetworkPublicIP("workloadNetworkPublicIP", new()
///     {
///         DisplayName = "publicIP1",
///         NumberOfPublicIPs = 32,
///         PrivateCloudName = "cloud1",
///         PublicIPId = "publicIP1",
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewWorkloadNetworkPublicIP(ctx, "workloadNetworkPublicIP", &avs.WorkloadNetworkPublicIPArgs{
/// 			DisplayName:       pulumi.String("publicIP1"),
/// 			NumberOfPublicIPs: pulumi.Float64(32),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			PublicIPId:        pulumi.String("publicIP1"),
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// resource "azure-native_avs_workloadnetworkpublicip" "workloadNetworkPublicIP" {
///   display_name          = "publicIP1"
///   number_of_public_i_ps = 32
///   private_cloud_name    = "cloud1"
///   public_ip_id          = "publicIP1"
///   resource_group_name   = "group1"
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
/// import com.pulumi.azurenative.avs.WorkloadNetworkPublicIP;
/// import com.pulumi.azurenative.avs.WorkloadNetworkPublicIPArgs;
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
///         var workloadNetworkPublicIP = new WorkloadNetworkPublicIP("workloadNetworkPublicIP", WorkloadNetworkPublicIPArgs.builder()
///             .displayName("publicIP1")
///             .numberOfPublicIPs(32.0)
///             .privateCloudName("cloud1")
///             .publicIPId("publicIP1")
///             .resourceGroupName("group1")
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
/// const workloadNetworkPublicIP = new azure_native.avs.WorkloadNetworkPublicIP("workloadNetworkPublicIP", {
///     displayName: "publicIP1",
///     numberOfPublicIPs: 32,
///     privateCloudName: "cloud1",
///     publicIPId: "publicIP1",
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_network_public_ip = azure_native.avs.WorkloadNetworkPublicIP("workloadNetworkPublicIP",
///     display_name="publicIP1",
///     number_of_public_ips=float(32),
///     private_cloud_name="cloud1",
///     public_ip_id="publicIP1",
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadNetworkPublicIP:
///     type: azure-native:avs:WorkloadNetworkPublicIP
///     properties:
///       displayName: publicIP1
///       numberOfPublicIPs: 32
///       privateCloudName: cloud1
///       publicIPId: publicIP1
///       resourceGroupName: group1
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
/// $ pulumi import azure-native:avs:WorkloadNetworkPublicIP publicIP1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/workloadNetworks/default/publicIPs/{publicIPId}
/// ```
class WorkloadNetworkPublicIP extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Display name of the Public IP Block.
  late final pulumi.Output<String?> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Number of Public IPs requested.
  late final pulumi.Output<double?> numberOfPublicIPs;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// CIDR Block of the Public IP Block.
  late final pulumi.Output<String> publicIPBlock;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadNetworkPublicIP].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadNetworkPublicIP]. {@macro pulumi_avs_workload_network_public_ipargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadNetworkPublicIP(
    String name, {
    WorkloadNetworkPublicIPArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:WorkloadNetworkPublicIP',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    numberOfPublicIPs = registerOutput<double?>('numberOfPublicIPs');
    provisioningState = registerOutput<String>('provisioningState');
    publicIPBlock = registerOutput<String>('publicIPBlock');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WorkloadNetworkPublicIP] resource.
  WorkloadNetworkPublicIP.reference(String urn)
    : super(
        'azure-native:avs:WorkloadNetworkPublicIP',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    numberOfPublicIPs = registerOutput<double?>('numberOfPublicIPs');
    provisioningState = registerOutput<String>('provisioningState');
    publicIPBlock = registerOutput<String>('publicIPBlock');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
