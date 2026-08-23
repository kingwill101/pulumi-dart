import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'skuresponse.dart';

/// The EngagementFabric account
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AccountsCreateOrUpdateExample
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.EngagementFabric.Account("account", new()
///     {
///         AccountName = "ExampleAccount",
///         Location = "WestUS",
///         ResourceGroupName = "ExampleRg",
///         Sku = new AzureNative.EngagementFabric.Inputs.SKUArgs
///         {
///             Name = "B1",
///         },
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
/// 	engagementfabric "github.com/pulumi/pulumi-azure-native-sdk/engagementfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := engagementfabric.NewAccount(ctx, "account", &engagementfabric.AccountArgs{
/// 			AccountName:       pulumi.String("ExampleAccount"),
/// 			Location:          pulumi.String("WestUS"),
/// 			ResourceGroupName: pulumi.String("ExampleRg"),
/// 			Sku: &engagementfabric.SKUArgs{
/// 				Name: pulumi.String("B1"),
/// 			},
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
/// resource "azure-native_engagementfabric_account" "account" {
///   account_name        = "ExampleAccount"
///   location            = "WestUS"
///   resource_group_name = "ExampleRg"
///   sku = {
///     name = "B1"
///   }
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
/// import com.pulumi.azurenative.engagementfabric.Account;
/// import com.pulumi.azurenative.engagementfabric.AccountArgs;
/// import com.pulumi.azurenative.engagementfabric.inputs.SKUArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("ExampleAccount")
///             .location("WestUS")
///             .resourceGroupName("ExampleRg")
///             .sku(SKUArgs.builder()
///                 .name("B1")
///                 .build())
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
/// const account = new azure_native.engagementfabric.Account("account", {
///     accountName: "ExampleAccount",
///     location: "WestUS",
///     resourceGroupName: "ExampleRg",
///     sku: {
///         name: "B1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.engagementfabric.Account("account",
///     account_name="ExampleAccount",
///     location="WestUS",
///     resource_group_name="ExampleRg",
///     sku={
///         "name": "B1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:engagementfabric:Account
///     properties:
///       accountName: ExampleAccount
///       location: WestUS
///       resourceGroupName: ExampleRg
///       sku:
///         name: B1
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
/// $ pulumi import azure-native:engagementfabric:Account ExampleAccount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EngagementFabric/Accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location of the resource
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The SKU of the resource
  late final pulumi.Output<SKUResponse> sku;
  /// The tags of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The fully qualified type of the resource
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_engagementfabric_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:engagementfabric:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sku = registerOutput<SKUResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
