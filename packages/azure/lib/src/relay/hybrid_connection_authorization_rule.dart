import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_connection_authorization_rule_args.dart';

/// Manages an Azure Relay Hybrid Connection Authorization Rule.
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
/// const exampleNamespace = new azure.relay.Namespace("example", {
///     name: "example-relay",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
///     tags: {
///         source: "terraform",
///     },
/// });
/// const exampleHybridConnection = new azure.relay.HybridConnection("example", {
///     name: "acctestrnhc-%d",
///     resourceGroupName: example.name,
///     relayNamespaceName: exampleNamespace.name,
///     requiresClientAuthorization: false,
///     userMetadata: "testmetadata",
/// });
/// const exampleHybridConnectionAuthorizationRule = new azure.relay.HybridConnectionAuthorizationRule("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     hybridConnectionName: exampleHybridConnection.name,
///     namespaceName: exampleNamespace.name,
///     listen: true,
///     send: true,
///     manage: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_namespace = azure.relay.Namespace("example",
///     name="example-relay",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard",
///     tags={
///         "source": "terraform",
///     })
/// example_hybrid_connection = azure.relay.HybridConnection("example",
///     name="acctestrnhc-%d",
///     resource_group_name=example.name,
///     relay_namespace_name=example_namespace.name,
///     requires_client_authorization=False,
///     user_metadata="testmetadata")
/// example_hybrid_connection_authorization_rule = azure.relay.HybridConnectionAuthorizationRule("example",
///     name="example",
///     resource_group_name=example.name,
///     hybrid_connection_name=example_hybrid_connection.name,
///     namespace_name=example_namespace.name,
///     listen=True,
///     send=True,
///     manage=False)
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
///     var exampleNamespace = new Azure.Relay.Namespace("example", new()
///     {
///         Name = "example-relay",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///         Tags =
///         {
///             { "source", "terraform" },
///         },
///     });
///
///     var exampleHybridConnection = new Azure.Relay.HybridConnection("example", new()
///     {
///         Name = "acctestrnhc-%d",
///         ResourceGroupName = example.Name,
///         RelayNamespaceName = exampleNamespace.Name,
///         RequiresClientAuthorization = false,
///         UserMetadata = "testmetadata",
///     });
///
///     var exampleHybridConnectionAuthorizationRule = new Azure.Relay.HybridConnectionAuthorizationRule("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         HybridConnectionName = exampleHybridConnection.Name,
///         NamespaceName = exampleNamespace.Name,
///         Listen = true,
///         Send = true,
///         Manage = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/relay"
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
/// 		exampleNamespace, err := relay.NewNamespace(ctx, "example", &relay.NamespaceArgs{
/// 			Name:              pulumi.String("example-relay"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("terraform"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHybridConnection, err := relay.NewHybridConnection(ctx, "example", &relay.HybridConnectionArgs{
/// 			Name:                        pulumi.String("acctestrnhc-%d"),
/// 			ResourceGroupName:           example.Name,
/// 			RelayNamespaceName:          exampleNamespace.Name,
/// 			RequiresClientAuthorization: pulumi.Bool(false),
/// 			UserMetadata:                pulumi.String("testmetadata"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = relay.NewHybridConnectionAuthorizationRule(ctx, "example", &relay.HybridConnectionAuthorizationRuleArgs{
/// 			Name:                 pulumi.String("example"),
/// 			ResourceGroupName:    example.Name,
/// 			HybridConnectionName: exampleHybridConnection.Name,
/// 			NamespaceName:        exampleNamespace.Name,
/// 			Listen:               pulumi.Bool(true),
/// 			Send:                 pulumi.Bool(true),
/// 			Manage:               pulumi.Bool(false),
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
/// import com.pulumi.azure.relay.Namespace;
/// import com.pulumi.azure.relay.NamespaceArgs;
/// import com.pulumi.azure.relay.HybridConnection;
/// import com.pulumi.azure.relay.HybridConnectionArgs;
/// import com.pulumi.azure.relay.HybridConnectionAuthorizationRule;
/// import com.pulumi.azure.relay.HybridConnectionAuthorizationRuleArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-relay")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .tags(Map.of("source", "terraform"))
///             .build());
///
///         var exampleHybridConnection = new HybridConnection("exampleHybridConnection", HybridConnectionArgs.builder()
///             .name("acctestrnhc-%d")
///             .resourceGroupName(example.name())
///             .relayNamespaceName(exampleNamespace.name())
///             .requiresClientAuthorization(false)
///             .userMetadata("testmetadata")
///             .build());
///
///         var exampleHybridConnectionAuthorizationRule = new HybridConnectionAuthorizationRule("exampleHybridConnectionAuthorizationRule", HybridConnectionAuthorizationRuleArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .hybridConnectionName(exampleHybridConnection.name())
///             .namespaceName(exampleNamespace.name())
///             .listen(true)
///             .send(true)
///             .manage(false)
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
///   exampleNamespace:
///     type: azure:relay:Namespace
///     name: example
///     properties:
///       name: example-relay
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///       tags:
///         source: terraform
///   exampleHybridConnection:
///     type: azure:relay:HybridConnection
///     name: example
///     properties:
///       name: acctestrnhc-%d
///       resourceGroupName: ${example.name}
///       relayNamespaceName: ${exampleNamespace.name}
///       requiresClientAuthorization: false
///       userMetadata: testmetadata
///   exampleHybridConnectionAuthorizationRule:
///     type: azure:relay:HybridConnectionAuthorizationRule
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       hybridConnectionName: ${exampleHybridConnection.name}
///       namespaceName: ${exampleNamespace.name}
///       listen: true
///       send: true
///       manage: false
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Relay` - 2021-11-01
///
/// ## Import
///
/// Azure Relay Hybrid Connection Authorization Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:relay/hybridConnectionAuthorizationRule:HybridConnectionAuthorizationRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Relay/namespaces/namespace1/hybridConnections/connection1/authorizationRules/rule1
/// ```
class HybridConnectionAuthorizationRule extends pulumi.CustomResource {
  /// Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  late final pulumi.Output<String> hybridConnectionName;
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  late final pulumi.Output<bool?> manage;
  /// The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  late final pulumi.Output<String> name;
  /// Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  late final pulumi.Output<String> namespaceName;
  /// The Primary Connection String for the Azure Relay Hybrid Connection Authorization Rule.
  late final pulumi.Output<String> primaryConnectionString;
  /// The Primary Key for the Azure Relay Hybrid Connection Authorization Rule.
  late final pulumi.Output<String> primaryKey;
  /// The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Connection String for the Azure Relay Hybrid Connection Authorization Rule.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The Secondary Key for the Azure Relay Hybrid Connection Authorization Rule.
  late final pulumi.Output<String> secondaryKey;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> send;

  /// Creates a new [HybridConnectionAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridConnectionAuthorizationRule]. {@macro pulumi_relay_hybrid_connection_authorization_rule_hybrid_connection_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridConnectionAuthorizationRule(
    String name, {
    HybridConnectionAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:relay/hybridConnectionAuthorizationRule:HybridConnectionAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hybridConnectionName = registerOutput<String>('hybridConnectionName');
    this.listen = registerOutput<bool?>('listen');
    this.manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.send = registerOutput<bool?>('send');
  }
}
