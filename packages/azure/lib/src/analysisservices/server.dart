import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_args.dart';
import 'server_ipv4_firewall_rule.dart';

/// Manages an Analysis Services Server.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "analysis-services-server-test",
///     location: "West Europe",
/// });
/// const server = new azure.analysisservices.Server("server", {
///     name: "analysisservicesserver",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "S0",
///     adminUsers: ["myuser@domain.tld"],
///     powerBiServiceEnabled: true,
///     ipv4FirewallRules: [{
///         name: "myRule1",
///         rangeStart: "210.117.252.0",
///         rangeEnd: "210.117.252.255",
///     }],
///     tags: {
///         abc: "123",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="analysis-services-server-test",
///     location="West Europe")
/// server = azure.analysisservices.Server("server",
///     name="analysisservicesserver",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="S0",
///     admin_users=["myuser@domain.tld"],
///     power_bi_service_enabled=True,
///     ipv4_firewall_rules=[{
///         "name": "myRule1",
///         "range_start": "210.117.252.0",
///         "range_end": "210.117.252.255",
///     }],
///     tags={
///         "abc": "123",
///     })
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
///         Name = "analysis-services-server-test",
///         Location = "West Europe",
///     });
///
///     var server = new Azure.AnalysisServices.Server("server", new()
///     {
///         Name = "analysisservicesserver",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "S0",
///         AdminUsers = new[]
///         {
///             "myuser@domain.tld",
///         },
///         PowerBiServiceEnabled = true,
///         Ipv4FirewallRules = new[]
///         {
///             new Azure.AnalysisServices.Inputs.ServerIpv4FirewallRuleArgs
///             {
///                 Name = "myRule1",
///                 RangeStart = "210.117.252.0",
///                 RangeEnd = "210.117.252.255",
///             },
///         },
///         Tags =
///         {
///             { "abc", "123" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/analysisservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("analysis-services-server-test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = analysisservices.NewServer(ctx, "server", &analysisservices.ServerArgs{
/// 			Name:              pulumi.String("analysisservicesserver"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("S0"),
/// 			AdminUsers: pulumi.StringArray{
/// 				pulumi.String("myuser@domain.tld"),
/// 			},
/// 			PowerBiServiceEnabled: pulumi.Bool(true),
/// 			Ipv4FirewallRules: analysisservices.ServerIpv4FirewallRuleArray{
/// 				&analysisservices.ServerIpv4FirewallRuleArgs{
/// 					Name:       pulumi.String("myRule1"),
/// 					RangeStart: pulumi.String("210.117.252.0"),
/// 					RangeEnd:   pulumi.String("210.117.252.255"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"abc": pulumi.String("123"),
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
/// import com.pulumi.azure.analysisservices.Server;
/// import com.pulumi.azure.analysisservices.ServerArgs;
/// import com.pulumi.azure.analysisservices.inputs.ServerIpv4FirewallRuleArgs;
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
///             .name("analysis-services-server-test")
///             .location("West Europe")
///             .build());
///
///         var server = new Server("server", ServerArgs.builder()
///             .name("analysisservicesserver")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("S0")
///             .adminUsers("myuser@domain.tld")
///             .powerBiServiceEnabled(true)
///             .ipv4FirewallRules(ServerIpv4FirewallRuleArgs.builder()
///                 .name("myRule1")
///                 .rangeStart("210.117.252.0")
///                 .rangeEnd("210.117.252.255")
///                 .build())
///             .tags(Map.of("abc", "123"))
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
///       name: analysis-services-server-test
///       location: West Europe
///   server:
///     type: azure:analysisservices:Server
///     properties:
///       name: analysisservicesserver
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: S0
///       adminUsers:
///         - myuser@domain.tld
///       powerBiServiceEnabled: true
///       ipv4FirewallRules:
///         - name: myRule1
///           rangeStart: 210.117.252.0
///           rangeEnd: 210.117.252.255
///       tags:
///         abc: 123
/// ```
///
///
/// > **Note:** The server resource will automatically be started and stopped during an update if it is in `paused` state.
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AnalysisServices` - 2017-08-01
///
/// ## Import
///
/// Analysis Services Server can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:analysisservices/server:Server server /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourcegroup1/providers/Microsoft.AnalysisServices/servers/server1
/// ```
class Server extends pulumi.CustomResource {
  /// List of email addresses of admin users.
  late final pulumi.Output<List<String>?> adminUsers;
  /// URI and SAS token for a blob container to store backups.
  late final pulumi.Output<String?> backupBlobContainerUri;
  /// One or more `ipv4_firewall_rule` block(s) as defined below.
  late final pulumi.Output<List<ServerIpv4FirewallRule>?> ipv4FirewallRules;
  /// The Azure location where the Analysis Services Server exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Analysis Services Server. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Indicates if the Power BI service is allowed to access or not.
  late final pulumi.Output<bool?> powerBiServiceEnabled;
  /// Controls how the read-write server is used in the query pool. If this value is set to `All` then read-write servers are also used for queries. Otherwise with `ReadOnly` these servers do not participate in query operations. Defaults to `All`.
  late final pulumi.Output<String?> querypoolConnectionMode;
  /// The name of the Resource Group in which the Analysis Services Server should be exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The full name of the Analysis Services Server.
  late final pulumi.Output<String> serverFullName;
  /// SKU for the Analysis Services Server. Possible values are: `D1`, `B1`, `B2`, `S0`, `S1`, `S2`, `S4`, `S8`, `S9`, `S8v2` and `S9v2`.
  late final pulumi.Output<String> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_analysisservices_server_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(
    String name, {
    ServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:analysisservices/server:Server',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminUsers = registerOutput<List<String>?>('adminUsers');
    this.backupBlobContainerUri = registerOutput<String?>('backupBlobContainerUri');
    this.ipv4FirewallRules = registerOutput<List<ServerIpv4FirewallRule>?>('ipv4FirewallRules');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.powerBiServiceEnabled = registerOutput<bool?>('powerBiServiceEnabled');
    this.querypoolConnectionMode = registerOutput<String?>('querypoolConnectionMode');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverFullName = registerOutput<String>('serverFullName');
    this.sku = registerOutput<String>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
