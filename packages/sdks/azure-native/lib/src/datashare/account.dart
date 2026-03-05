import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// An account data transfer object.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Accounts_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.DataShare.Account("account", new()
///     {
///         AccountName = "Account1",
///         Identity = new AzureNative.DataShare.Inputs.IdentityArgs
///         {
///             Type = AzureNative.DataShare.Type.SystemAssigned,
///         },
///         Location = "West US 2",
///         ResourceGroupName = "SampleResourceGroup",
///         Tags =
///         {
///             { "tag1", "Red" },
///             { "tag2", "White" },
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewAccount(ctx, "account", &datashare.AccountArgs{
/// 			AccountName: pulumi.String("Account1"),
/// 			Identity: &datashare.IdentityArgs{
/// 				Type: pulumi.String(datashare.TypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("West US 2"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("Red"),
/// 				"tag2": pulumi.String("White"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datashare.Account;
/// import com.pulumi.azurenative.datashare.AccountArgs;
/// import com.pulumi.azurenative.datashare.inputs.IdentityArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("Account1")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US 2")
///             .resourceGroupName("SampleResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "Red"),
///                 Map.entry("tag2", "White")
///             ))
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
/// const account = new azure_native.datashare.Account("account", {
///     accountName: "Account1",
///     identity: {
///         type: azure_native.datashare.Type.SystemAssigned,
///     },
///     location: "West US 2",
///     resourceGroupName: "SampleResourceGroup",
///     tags: {
///         tag1: "Red",
///         tag2: "White",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.datashare.Account("account",
///     account_name="Account1",
///     identity={
///         "type": azure_native.datashare.Type.SYSTEM_ASSIGNED,
///     },
///     location="West US 2",
///     resource_group_name="SampleResourceGroup",
///     tags={
///         "tag1": "Red",
///         "tag2": "White",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:datashare:Account
///     properties:
///       accountName: Account1
///       identity:
///         type: SystemAssigned
///       location: West US 2
///       resourceGroupName: SampleResourceGroup
///       tags:
///         tag1: Red
///         tag2: White
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
/// $ pulumi import azure-native:datashare:Account Account1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time at which the account was created.
  late final pulumi.Output<String> createdAt;
  /// Identity Info on the Account
  late final pulumi.Output<IdentityResponse> identity;
  /// Location of the azure resource.
  late final pulumi.Output<String?> location;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the Account
  late final pulumi.Output<String> provisioningState;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tags on the azure resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of the azure resource
  late final pulumi.Output<String> type;
  /// Email of the user who created the resource
  late final pulumi.Output<String> userEmail;
  /// Name of the user who created the resource
  late final pulumi.Output<String> userName;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_datashare_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    identity = registerOutput<IdentityResponse>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    userEmail = registerOutput<String>('userEmail');
    userName = registerOutput<String>('userName');
  }
}
