import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_cors.dart';
import 'account_data_store.dart';
import 'account_identity.dart';

/// Manages an Azure Maps Account.
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
/// const exampleAccount = new azure.maps.Account("example", {
///     name: "example-maps-account",
///     resourceGroupName: example.name,
///     skuName: "S1",
///     localAuthenticationEnabled: true,
///     tags: {
///         environment: "Test",
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
/// example_account = azure.maps.Account("example",
///     name="example-maps-account",
///     resource_group_name=example.name,
///     sku_name="S1",
///     local_authentication_enabled=True,
///     tags={
///         "environment": "Test",
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
///     var exampleAccount = new Azure.Maps.Account("example", new()
///     {
///         Name = "example-maps-account",
///         ResourceGroupName = example.Name,
///         SkuName = "S1",
///         LocalAuthenticationEnabled = true,
///         Tags =
///         {
///             { "environment", "Test" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maps"
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
/// 		_, err = maps.NewAccount(ctx, "example", &maps.AccountArgs{
/// 			Name:                       pulumi.String("example-maps-account"),
/// 			ResourceGroupName:          example.Name,
/// 			SkuName:                    pulumi.String("S1"),
/// 			LocalAuthenticationEnabled: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Test"),
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
/// import com.pulumi.azure.maps.Account;
/// import com.pulumi.azure.maps.AccountArgs;
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
///             .name("example-maps-account")
///             .resourceGroupName(example.name())
///             .skuName("S1")
///             .localAuthenticationEnabled(true)
///             .tags(Map.of("environment", "Test"))
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
///     type: azure:maps:Account
///     name: example
///     properties:
///       name: example-maps-account
///       resourceGroupName: ${example.name}
///       skuName: S1
///       localAuthenticationEnabled: true
///       tags:
///         environment: Test
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Maps` - 2023-06-01
///
/// ## Import
///
/// A Maps Account can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:maps/account:Account example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Maps/accounts/my-maps-account
/// ```
class Account extends pulumi.CustomResource {
  /// A `cors` block as defined below
  late final pulumi.Output<AccountCors?> cors;
  /// One or more `data_store` blocks as defined below.
  late final pulumi.Output<List<AccountDataStore>?> dataStores;
  /// An `identity` block as defined below.
  late final pulumi.Output<AccountIdentity?> identity;
  /// Is local authentication enabled for this Azure Maps Account? When `false`, all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthenticationEnabled;
  /// The Location in which the Azure Maps Account should be provisioned. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Azure Maps Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The primary key used to authenticate and authorize access to the Maps REST APIs.
  late final pulumi.Output<String> primaryAccessKey;
  /// The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary key used to authenticate and authorize access to the Maps REST APIs.
  late final pulumi.Output<String> secondaryAccessKey;
  /// The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Gen1 SKUs (`S0` and `S1`) are deprecated and can no longer be used for new deployments, which should instead use a Gen2 SKU (`G2`) - more information can be found [in the Azure documentation](https://learn.microsoft.com/azure/azure-maps/how-to-manage-pricing-tier).
  late final pulumi.Output<String> skuName;
  /// A mapping of tags to assign to the Azure Maps Account.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A unique identifier for the Maps Account.
  late final pulumi.Output<String> xMsClientId;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_maps_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:maps/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cors = registerOutput<AccountCors?>('cors');
    this.dataStores = registerOutput<List<AccountDataStore>?>('dataStores');
    this.identity = registerOutput<AccountIdentity?>('identity');
    this.localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.primaryAccessKey = registerOutput<String>('primaryAccessKey');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.xMsClientId = registerOutput<String>('xMsClientId');
  }
}
