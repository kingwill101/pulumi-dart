import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_dns_zone_args.dart';

/// NSX DNS Zone
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadNetworks_CreateDnsZone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadNetworkDnsZone = new AzureNative.AVS.WorkloadNetworkDnsZone("workloadNetworkDnsZone", new()
///     {
///         DisplayName = "dnsZone1",
///         DnsServerIps = new[]
///         {
///             "1.1.1.1",
///         },
///         DnsZoneId = "dnsZone1",
///         Domain = new[] {},
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Revision = 1,
///         SourceIp = "8.8.8.8",
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
/// 		_, err := avs.NewWorkloadNetworkDnsZone(ctx, "workloadNetworkDnsZone", &avs.WorkloadNetworkDnsZoneArgs{
/// 			DisplayName: pulumi.String("dnsZone1"),
/// 			DnsServerIps: pulumi.StringArray{
/// 				pulumi.String("1.1.1.1"),
/// 			},
/// 			DnsZoneId:         pulumi.String("dnsZone1"),
/// 			Domain:            pulumi.StringArray{},
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Revision:          pulumi.Float64(1),
/// 			SourceIp:          pulumi.String("8.8.8.8"),
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
/// resource "azure-native_avs_workloadnetworkdnszone" "workloadNetworkDnsZone" {
///   display_name        = "dnsZone1"
///   dns_server_ips      = ["1.1.1.1"]
///   dns_zone_id         = "dnsZone1"
///   domain              = []
///   private_cloud_name  = "cloud1"
///   resource_group_name = "group1"
///   revision            = 1
///   source_ip           = "8.8.8.8"
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
/// import com.pulumi.azurenative.avs.WorkloadNetworkDnsZone;
/// import com.pulumi.azurenative.avs.WorkloadNetworkDnsZoneArgs;
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
///         var workloadNetworkDnsZone = new WorkloadNetworkDnsZone("workloadNetworkDnsZone", WorkloadNetworkDnsZoneArgs.builder()
///             .displayName("dnsZone1")
///             .dnsServerIps("1.1.1.1")
///             .dnsZoneId("dnsZone1")
///             .domain()
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .revision(1.0)
///             .sourceIp("8.8.8.8")
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
/// const workloadNetworkDnsZone = new azure_native.avs.WorkloadNetworkDnsZone("workloadNetworkDnsZone", {
///     displayName: "dnsZone1",
///     dnsServerIps: ["1.1.1.1"],
///     dnsZoneId: "dnsZone1",
///     domain: [],
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     revision: 1,
///     sourceIp: "8.8.8.8",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_network_dns_zone = azure_native.avs.WorkloadNetworkDnsZone("workloadNetworkDnsZone",
///     display_name="dnsZone1",
///     dns_server_ips=["1.1.1.1"],
///     dns_zone_id="dnsZone1",
///     domain=[],
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     revision=float(1),
///     source_ip="8.8.8.8")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadNetworkDnsZone:
///     type: azure-native:avs:WorkloadNetworkDnsZone
///     properties:
///       displayName: dnsZone1
///       dnsServerIps:
///         - 1.1.1.1
///       dnsZoneId: dnsZone1
///       domain: []
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       revision: 1
///       sourceIp: 8.8.8.8
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
/// $ pulumi import azure-native:avs:WorkloadNetworkDnsZone dnsZone1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/workloadNetworks/default/dnsZones/{dnsZoneId}
/// ```
class WorkloadNetworkDnsZone extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Display name of the DNS Zone.
  late final pulumi.Output<String?> displayName;
  /// DNS Server IP array of the DNS Zone.
  late final pulumi.Output<List<String>?> dnsServerIps;
  /// Number of DNS Services using the DNS zone.
  late final pulumi.Output<double?> dnsServices;
  /// Domain names of the DNS Zone.
  late final pulumi.Output<List<String>?> domain;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// NSX revision number.
  late final pulumi.Output<double?> revision;
  /// Source IP of the DNS Zone.
  late final pulumi.Output<String?> sourceIp;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadNetworkDnsZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadNetworkDnsZone]. {@macro pulumi_avs_workload_network_dns_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadNetworkDnsZone(
    String name, {
    WorkloadNetworkDnsZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:WorkloadNetworkDnsZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    dnsServerIps = registerOutput<List<String>?>('dnsServerIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dnsServices = registerOutput<double?>('dnsServices');
    domain = registerOutput<List<String>?>('domain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    revision = registerOutput<double?>('revision');
    sourceIp = registerOutput<String?>('sourceIp');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WorkloadNetworkDnsZone] resource.
  WorkloadNetworkDnsZone.reference(String urn)
    : super(
        'azure-native:avs:WorkloadNetworkDnsZone',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    dnsServerIps = registerOutput<List<String>?>('dnsServerIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dnsServices = registerOutput<double?>('dnsServices');
    domain = registerOutput<List<String>?>('domain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    revision = registerOutput<double?>('revision');
    sourceIp = registerOutput<String?>('sourceIp');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
