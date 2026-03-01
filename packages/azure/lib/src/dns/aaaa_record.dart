import 'package:pulumi/pulumi.dart' as pulumi;
import 'aaaa_record_args.dart';

/// Enables you to manage DNS AAAA Records within Azure DNS.
///
/// > **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "mydomain.com",
///     resourceGroupName: example.name,
/// });
/// const exampleAaaaRecord = new azure.dns.AaaaRecord("example", {
///     name: "test",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     records: ["2001:db8::1:0:0:1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_zone = azure.dns.Zone("example",
///     name="mydomain.com",
///     resource_group_name=example.name)
/// example_aaaa_record = azure.dns.AaaaRecord("example",
///     name="test",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     records=["2001:db8::1:0:0:1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "mydomain.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleAaaaRecord = new Azure.Dns.AaaaRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             "2001:db8::1:0:0:1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := dns.NewZone(ctx, "example", &dns.ZoneArgs{
/// 			Name:              pulumi.String("mydomain.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewAaaaRecord(ctx, "example", &dns.AaaaRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("2001:db8::1:0:0:1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.dns.Zone;
/// import com.pulumi.azure.dns.ZoneArgs;
/// import com.pulumi.azure.dns.AaaaRecord;
/// import com.pulumi.azure.dns.AaaaRecordArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("mydomain.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleAaaaRecord = new AaaaRecord("exampleAaaaRecord", AaaaRecordArgs.builder()
///             .name("test")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .records("2001:db8::1:0:0:1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: mydomain.com
///       resourceGroupName: ${example.name}
///   exampleAaaaRecord:
///     type: azure:dns:AaaaRecord
///     name: example
///     properties:
///       name: test
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       records:
///         - 2001:db8::1:0:0:1
/// ```
///
///
///
/// ### Alias Record)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "mydomain.com",
///     resourceGroupName: example.name,
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "mypublicip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Dynamic",
///     ipVersion: "IPv6",
/// });
/// const exampleAaaaRecord = new azure.dns.AaaaRecord("example", {
///     name: "test",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     targetResourceId: examplePublicIp.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_zone = azure.dns.Zone("example",
///     name="mydomain.com",
///     resource_group_name=example.name)
/// example_public_ip = azure.network.PublicIp("example",
///     name="mypublicip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Dynamic",
///     ip_version="IPv6")
/// example_aaaa_record = azure.dns.AaaaRecord("example",
///     name="test",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     target_resource_id=example_public_ip.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "mydomain.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "mypublicip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Dynamic",
///         IpVersion = "IPv6",
///     });
///
///     var exampleAaaaRecord = new Azure.Dns.AaaaRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         TargetResourceId = examplePublicIp.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := dns.NewZone(ctx, "example", &dns.ZoneArgs{
/// 			Name:              pulumi.String("mydomain.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("mypublicip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Dynamic"),
/// 			IpVersion:         pulumi.String("IPv6"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewAaaaRecord(ctx, "example", &dns.AaaaRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			TargetResourceId:  examplePublicIp.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.dns.Zone;
/// import com.pulumi.azure.dns.ZoneArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.dns.AaaaRecord;
/// import com.pulumi.azure.dns.AaaaRecordArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("mydomain.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("mypublicip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Dynamic")
///             .ipVersion("IPv6")
///             .build());
///
///         var exampleAaaaRecord = new AaaaRecord("exampleAaaaRecord", AaaaRecordArgs.builder()
///             .name("test")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .targetResourceId(examplePublicIp.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: mydomain.com
///       resourceGroupName: ${example.name}
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: mypublicip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Dynamic
///       ipVersion: IPv6
///   exampleAaaaRecord:
///     type: azure:dns:AaaaRecord
///     name: example
///     properties:
///       name: test
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       targetResourceId: ${examplePublicIp.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
///
/// ## Import
///
/// AAAA records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dns/aaaaRecord:AaaaRecord example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/dnsZones/zone1/AAAA/myrecord1
/// ```
class AaaaRecord extends pulumi.CustomResource {
  /// The FQDN of the DNS AAAA Record.
  late final pulumi.Output<String> fqdn;
  /// The name of the DNS AAAA Record. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// List of IPv6 Addresses. Conflicts with `target_resource_id`.
  late final pulumi.Output<List<String>?> records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** either `records` OR `target_resource_id` must be specified, but not both.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Azure resource id of the target object. Conflicts with `records`.
  late final pulumi.Output<String?> targetResourceId;
  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [AaaaRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AaaaRecord]. {@macro pulumi_dns_aaaa_record_aaaa_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AaaaRecord(
    String name, {
    AaaaRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dns/aaaaRecord:AaaaRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    this.records = registerOutput<List<String>?>('records');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetResourceId = registerOutput<String?>('targetResourceId');
    this.ttl = registerOutput<int>('ttl');
    this.zoneName = registerOutput<String>('zoneName');
  }
}
