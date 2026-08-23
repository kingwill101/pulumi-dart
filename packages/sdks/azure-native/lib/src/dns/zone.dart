import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'zone_args.dart';

/// Describes a DNS zone.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2015-05-04-preview, 2016-04-01, 2017-09-01, 2017-10-01, 2018-03-01-preview, 2018-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create zone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zone = new AzureNative.Dns.Zone("zone", new()
///     {
///         Location = "Global",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewZone(ctx, "zone", &dns.ZoneArgs{
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			ZoneName: pulumi.String("zone1"),
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
/// resource "azure-native_dns_zone" "zone" {
///   location            = "Global"
///   resource_group_name = "rg1"
///   tags = {
///     "key1" = "value1"
///   }
///   zone_name = "zone1"
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
/// import com.pulumi.azurenative.dns.Zone;
/// import com.pulumi.azurenative.dns.ZoneArgs;
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
///         var zone = new Zone("zone", ZoneArgs.builder()
///             .location("Global")
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .zoneName("zone1")
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
/// const zone = new azure_native.dns.Zone("zone", {
///     location: "Global",
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// zone = azure_native.dns.Zone("zone",
///     location="Global",
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   zone:
///     type: azure-native:dns:Zone
///     properties:
///       location: Global
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       zoneName: zone1
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
/// $ pulumi import azure-native:dns:Zone zone1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsZones/{zoneName}
/// ```
class Zone extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The etag of the zone.
  late final pulumi.Output<String?> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The maximum number of record sets that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double> maxNumberOfRecordSets;
  /// The maximum number of records per record set that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double> maxNumberOfRecordsPerRecordSet;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The name servers for this DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<List<String>> nameServers;
  /// The current number of record sets in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<double> numberOfRecordSets;
  /// A list of references to virtual networks that register hostnames in this DNS zone. This is a only when ZoneType is Private.
  late final pulumi.Output<List<Map<String, dynamic>>?> registrationVirtualNetworks;
  /// A list of references to virtual networks that resolve records in this DNS zone. This is a only when ZoneType is Private.
  late final pulumi.Output<List<Map<String, dynamic>>?> resolutionVirtualNetworks;
  /// The list of signing keys.
  late final pulumi.Output<List<Map<String, dynamic>>> signingKeys;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The type of this DNS zone (Public or Private).
  late final pulumi.Output<String?> zoneType;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_dns_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dns:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String>('location');
    maxNumberOfRecordSets = registerOutput<double>('maxNumberOfRecordSets');
    maxNumberOfRecordsPerRecordSet = registerOutput<double>('maxNumberOfRecordsPerRecordSet');
    this.name = registerOutput<String>('name');
    nameServers = registerOutput<List<String>>('nameServers');
    numberOfRecordSets = registerOutput<double>('numberOfRecordSets');
    registrationVirtualNetworks = registerOutput<List<Map<String, dynamic>>?>('registrationVirtualNetworks');
    resolutionVirtualNetworks = registerOutput<List<Map<String, dynamic>>?>('resolutionVirtualNetworks');
    signingKeys = registerOutput<List<Map<String, dynamic>>>('signingKeys');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zoneType = registerOutput<String?>('zoneType');
  }
}
