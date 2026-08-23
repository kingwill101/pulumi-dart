import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_dns_service_args.dart';

/// NSX DNS Service
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadNetworks_CreateDnsService
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadNetworkDnsService = new AzureNative.AVS.WorkloadNetworkDnsService("workloadNetworkDnsService", new()
///     {
///         DefaultDnsZone = "defaultDnsZone1",
///         DisplayName = "dnsService1",
///         DnsServiceId = "dnsService1",
///         DnsServiceIp = "5.5.5.5",
///         FqdnZones = new[]
///         {
///             "fqdnZone1",
///         },
///         LogLevel = AzureNative.AVS.DnsServiceLogLevelEnum.INFO,
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Revision = 1,
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
/// 		_, err := avs.NewWorkloadNetworkDnsService(ctx, "workloadNetworkDnsService", &avs.WorkloadNetworkDnsServiceArgs{
/// 			DefaultDnsZone: pulumi.String("defaultDnsZone1"),
/// 			DisplayName:    pulumi.String("dnsService1"),
/// 			DnsServiceId:   pulumi.String("dnsService1"),
/// 			DnsServiceIp:   pulumi.String("5.5.5.5"),
/// 			FqdnZones: pulumi.StringArray{
/// 				pulumi.String("fqdnZone1"),
/// 			},
/// 			LogLevel:          pulumi.String(avs.DnsServiceLogLevelEnumINFO),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Revision:          pulumi.Float64(1),
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
/// resource "azure-native_avs_workloadnetworkdnsservice" "workloadNetworkDnsService" {
///   default_dns_zone    = "defaultDnsZone1"
///   display_name        = "dnsService1"
///   dns_service_id      = "dnsService1"
///   dns_service_ip      = "5.5.5.5"
///   fqdn_zones          = ["fqdnZone1"]
///   log_level           = "INFO"
///   private_cloud_name  = "cloud1"
///   resource_group_name = "group1"
///   revision            = 1
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
/// import com.pulumi.azurenative.avs.WorkloadNetworkDnsService;
/// import com.pulumi.azurenative.avs.WorkloadNetworkDnsServiceArgs;
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
///         var workloadNetworkDnsService = new WorkloadNetworkDnsService("workloadNetworkDnsService", WorkloadNetworkDnsServiceArgs.builder()
///             .defaultDnsZone("defaultDnsZone1")
///             .displayName("dnsService1")
///             .dnsServiceId("dnsService1")
///             .dnsServiceIp("5.5.5.5")
///             .fqdnZones("fqdnZone1")
///             .logLevel("INFO")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .revision(1.0)
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
/// const workloadNetworkDnsService = new azure_native.avs.WorkloadNetworkDnsService("workloadNetworkDnsService", {
///     defaultDnsZone: "defaultDnsZone1",
///     displayName: "dnsService1",
///     dnsServiceId: "dnsService1",
///     dnsServiceIp: "5.5.5.5",
///     fqdnZones: ["fqdnZone1"],
///     logLevel: azure_native.avs.DnsServiceLogLevelEnum.INFO,
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     revision: 1,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_network_dns_service = azure_native.avs.WorkloadNetworkDnsService("workloadNetworkDnsService",
///     default_dns_zone="defaultDnsZone1",
///     display_name="dnsService1",
///     dns_service_id="dnsService1",
///     dns_service_ip="5.5.5.5",
///     fqdn_zones=["fqdnZone1"],
///     log_level=azure_native.avs.DnsServiceLogLevelEnum.INFO,
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     revision=float(1))
///
/// ```
///
/// ```yaml
/// resources:
///   workloadNetworkDnsService:
///     type: azure-native:avs:WorkloadNetworkDnsService
///     properties:
///       defaultDnsZone: defaultDnsZone1
///       displayName: dnsService1
///       dnsServiceId: dnsService1
///       dnsServiceIp: 5.5.5.5
///       fqdnZones:
///         - fqdnZone1
///       logLevel: INFO
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       revision: 1
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
/// $ pulumi import azure-native:avs:WorkloadNetworkDnsService dnsService1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/workloadNetworks/default/dnsServices/{dnsServiceId}
/// ```
class WorkloadNetworkDnsService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Default DNS zone of the DNS Service.
  late final pulumi.Output<String?> defaultDnsZone;
  /// Display name of the DNS Service.
  late final pulumi.Output<String?> displayName;
  /// DNS service IP of the DNS Service.
  late final pulumi.Output<String?> dnsServiceIp;
  /// FQDN zones of the DNS Service.
  late final pulumi.Output<List<String>?> fqdnZones;
  /// DNS Service log level.
  late final pulumi.Output<String?> logLevel;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// NSX revision number.
  late final pulumi.Output<double?> revision;
  /// DNS Service status.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadNetworkDnsService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadNetworkDnsService]. {@macro pulumi_avs_workload_network_dns_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadNetworkDnsService(
    String name, {
    WorkloadNetworkDnsServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:WorkloadNetworkDnsService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultDnsZone = registerOutput<String?>('defaultDnsZone');
    displayName = registerOutput<String?>('displayName');
    dnsServiceIp = registerOutput<String?>('dnsServiceIp');
    fqdnZones = registerOutput<List<String>?>('fqdnZones');
    logLevel = registerOutput<String?>('logLevel');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    revision = registerOutput<double?>('revision');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
