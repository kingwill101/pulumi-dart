import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_identity.dart';
import 'account_managed_resource.dart';

/// Manages a Purview Account.
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
/// const exampleAccount = new azure.purview.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.purview.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Purview.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.Purview.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/purview"
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
/// 		_, err = purview.NewAccount(ctx, "example", &purview.AccountArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &purview.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
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
/// import com.pulumi.azure.purview.Account;
/// import com.pulumi.azure.purview.AccountArgs;
/// import com.pulumi.azure.purview.inputs.AccountIdentityArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
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
///   exampleAccount:
///     type: azure:purview:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Purview` - 2021-12-01
///
/// ## Import
///
/// Purview Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:purview/account:Account example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Purview/accounts/account1
/// ```
class Account extends pulumi.CustomResource {
  /// Atlas Kafka endpoint primary connection string.
  late final pulumi.Output<String> atlasKafkaEndpointPrimaryConnectionString;
  /// Atlas Kafka endpoint secondary connection string.
  late final pulumi.Output<String> atlasKafkaEndpointSecondaryConnectionString;
  /// Configured in AWS to allow use of the role arn used for scanning
  late final pulumi.Output<String> awsExternalId;
  /// Catalog endpoint.
  late final pulumi.Output<String> catalogEndpoint;
  /// Guardian endpoint.
  late final pulumi.Output<String> guardianEndpoint;
  /// An `identity` block as defined below.
  late final pulumi.Output<AccountIdentity> identity;
  /// The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  late final pulumi.Output<String> location;
  /// Whether the Purview Account should create a managed Event Hub Namespace. Defaults to `true`.
  ///
  /// > **Note:** `managed_event_hub_enabled` must be `false` in order to use a Kafka Configuration with the Purview Account.
  late final pulumi.Output<bool?> managedEventHubEnabled;
  /// The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created.
  ///
  /// > **Note:** `managed_resource_group_name` must be a new Resource Group.
  late final pulumi.Output<String> managedResourceGroupName;
  /// A `managed_resources` block as defined below.
  late final pulumi.Output<List<AccountManagedResource>> managedResources;
  /// The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created.
  late final pulumi.Output<String> name;
  /// Should the Purview Account be visible to the public network? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkEnabled;
  /// The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Scan endpoint.
  late final pulumi.Output<String> scanEndpoint;
  /// A mapping of tags which should be assigned to the Purview Account.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_purview_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:purview/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.atlasKafkaEndpointPrimaryConnectionString = registerOutput<String>('atlasKafkaEndpointPrimaryConnectionString');
    this.atlasKafkaEndpointSecondaryConnectionString = registerOutput<String>('atlasKafkaEndpointSecondaryConnectionString');
    this.awsExternalId = registerOutput<String>('awsExternalId');
    this.catalogEndpoint = registerOutput<String>('catalogEndpoint');
    this.guardianEndpoint = registerOutput<String>('guardianEndpoint');
    this.identity = registerOutput<AccountIdentity>('identity');
    this.location = registerOutput<String>('location');
    this.managedEventHubEnabled = registerOutput<bool?>('managedEventHubEnabled');
    this.managedResourceGroupName = registerOutput<String>('managedResourceGroupName');
    this.managedResources = registerOutput<List<AccountManagedResource>>('managedResources');
    this.name = registerOutput<String>('name');
    this.publicNetworkEnabled = registerOutput<bool?>('publicNetworkEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.scanEndpoint = registerOutput<String>('scanEndpoint');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
