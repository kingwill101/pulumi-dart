import 'package:pulumi/pulumi.dart' as pulumi;
import 'cname_record_args.dart';

/// Enables you to manage DNS CNAME Records within Azure DNS.
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
/// const exampleCNameRecord = new azure.dns.CNameRecord("example", {
///     name: "test",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     record: "contoso.com",
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
/// example_c_name_record = azure.dns.CNameRecord("example",
///     name="test",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     record="contoso.com")
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
///     var exampleCNameRecord = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Record = "contoso.com",
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
/// 		_, err = dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Record:            pulumi.String("contoso.com"),
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
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
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
///         var exampleCNameRecord = new CNameRecord("exampleCNameRecord", CNameRecordArgs.builder()
///             .name("test")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .record("contoso.com")
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
///   exampleCNameRecord:
///     type: azure:dns:CNameRecord
///     name: example
///     properties:
///       name: test
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       record: contoso.com
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
/// const target = new azure.dns.CNameRecord("target", {
///     name: "target",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     record: "contoso.com",
/// });
/// const exampleCNameRecord = new azure.dns.CNameRecord("example", {
///     name: "test",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     targetResourceId: target.id,
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
/// target = azure.dns.CNameRecord("target",
///     name="target",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     record="contoso.com")
/// example_c_name_record = azure.dns.CNameRecord("example",
///     name="test",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     target_resource_id=target.id)
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
///     var target = new Azure.Dns.CNameRecord("target", new()
///     {
///         Name = "target",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Record = "contoso.com",
///     });
///
///     var exampleCNameRecord = new Azure.Dns.CNameRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         TargetResourceId = target.Id,
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
/// 		target, err := dns.NewCNameRecord(ctx, "target", &dns.CNameRecordArgs{
/// 			Name:              pulumi.String("target"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Record:            pulumi.String("contoso.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewCNameRecord(ctx, "example", &dns.CNameRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			TargetResourceId:  target.ID(),
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
/// import com.pulumi.azure.dns.CNameRecord;
/// import com.pulumi.azure.dns.CNameRecordArgs;
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
///         var target = new CNameRecord("target", CNameRecordArgs.builder()
///             .name("target")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .record("contoso.com")
///             .build());
///
///         var exampleCNameRecord = new CNameRecord("exampleCNameRecord", CNameRecordArgs.builder()
///             .name("test")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .targetResourceId(target.id())
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
///   target:
///     type: azure:dns:CNameRecord
///     properties:
///       name: target
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       record: contoso.com
///   exampleCNameRecord:
///     type: azure:dns:CNameRecord
///     name: example
///     properties:
///       name: test
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       targetResourceId: ${target.id}
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
/// CNAME records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dns/cNameRecord:CNameRecord example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/dnsZones/zone1/CNAME/myrecord1
/// ```
class CNameRecord extends pulumi.CustomResource {
  /// The FQDN of the DNS CName Record.
  late final pulumi.Output<String> fqdn;
  /// The name of the DNS CNAME Record. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The target of the CNAME.
  late final pulumi.Output<String?> record;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** either `record` OR `target_resource_id` must be specified, but not both.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Azure resource id of the target object. Conflicts with `record`.
  late final pulumi.Output<String?> targetResourceId;
  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [CNameRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CNameRecord]. {@macro pulumi_dns_c_name_record_cname_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CNameRecord(
    String name, {
    CNameRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dns/cNameRecord:CNameRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    this.record = registerOutput<String?>('record');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetResourceId = registerOutput<String?>('targetResourceId');
    this.ttl = registerOutput<int>('ttl');
    this.zoneName = registerOutput<String>('zoneName');
  }
}
