import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'system_data_response.dart';

/// A Playwright service account resource.
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2023-10-01-preview, 2024-02-01-preview, 2024-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureplaywrightservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Accounts_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.AzurePlaywrightService.Account("account", new()
///     {
///         AccountName = "myPlaywrightAccount",
///         Location = "westus",
///         RegionalAffinity = AzureNative.AzurePlaywrightService.EnablementStatus.Enabled,
///         ResourceGroupName = "dummyrg",
///         Tags =
///         {
///             { "Team", "Dev Exp" },
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
/// 	azureplaywrightservice "github.com/pulumi/pulumi-azure-native-sdk/azureplaywrightservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azureplaywrightservice.NewAccount(ctx, "account", &azureplaywrightservice.AccountArgs{
/// 			AccountName:       pulumi.String("myPlaywrightAccount"),
/// 			Location:          pulumi.String("westus"),
/// 			RegionalAffinity:  pulumi.String(azureplaywrightservice.EnablementStatusEnabled),
/// 			ResourceGroupName: pulumi.String("dummyrg"),
/// 			Tags: pulumi.StringMap{
/// 				"Team": pulumi.String("Dev Exp"),
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
/// resource "azure-native_azureplaywrightservice_account" "account" {
///   account_name        = "myPlaywrightAccount"
///   location            = "westus"
///   regional_affinity   = "Enabled"
///   resource_group_name = "dummyrg"
///   tags = {
///     "Team" = "Dev Exp"
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
/// import com.pulumi.azurenative.azureplaywrightservice.Account;
/// import com.pulumi.azurenative.azureplaywrightservice.AccountArgs;
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
///             .accountName("myPlaywrightAccount")
///             .location("westus")
///             .regionalAffinity("Enabled")
///             .resourceGroupName("dummyrg")
///             .tags(Map.of("Team", "Dev Exp"))
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
/// const account = new azure_native.azureplaywrightservice.Account("account", {
///     accountName: "myPlaywrightAccount",
///     location: "westus",
///     regionalAffinity: azure_native.azureplaywrightservice.EnablementStatus.Enabled,
///     resourceGroupName: "dummyrg",
///     tags: {
///         Team: "Dev Exp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.azureplaywrightservice.Account("account",
///     account_name="myPlaywrightAccount",
///     location="westus",
///     regional_affinity=azure_native.azureplaywrightservice.EnablementStatus.ENABLED,
///     resource_group_name="dummyrg",
///     tags={
///         "Team": "Dev Exp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:azureplaywrightservice:Account
///     properties:
///       accountName: myPlaywrightAccount
///       location: westus
///       regionalAffinity: Enabled
///       resourceGroupName: dummyrg
///       tags:
///         Team: Dev Exp
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
/// $ pulumi import azure-native:azureplaywrightservice:Account myPlaywrightAccount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzurePlaywrightService/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Playwright testing dashboard URI for the account resource.
  late final pulumi.Output<String> dashboardUri;
  /// When enabled, this feature allows the workspace to use local auth (through service access token) for executing operations.
  late final pulumi.Output<String?> localAuth;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// This property sets the connection region for Playwright client workers to cloud-hosted browsers. If enabled, workers connect to browsers in the closest Azure region, ensuring lower latency. If disabled, workers connect to browsers in the Azure region in which the workspace was initially created.
  late final pulumi.Output<String?> regionalAffinity;
  /// When enabled, this feature allows the workspace to upload and display test results, including artifacts like traces and screenshots, in the Playwright portal. This enables faster and more efficient troubleshooting.
  late final pulumi.Output<String?> reporting;
  /// When enabled, Playwright client workers can connect to cloud-hosted browsers. This can increase the number of parallel workers for a test run, significantly minimizing test completion durations.
  late final pulumi.Output<String?> scalableExecution;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_azureplaywrightservice_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azureplaywrightservice:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dashboardUri = registerOutput<String>('dashboardUri');
    localAuth = registerOutput<String?>('localAuth');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    regionalAffinity = registerOutput<String?>('regionalAffinity');
    reporting = registerOutput<String?>('reporting');
    scalableExecution = registerOutput<String?>('scalableExecution');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure-native:azureplaywrightservice:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dashboardUri = registerOutput<String>('dashboardUri');
    localAuth = registerOutput<String?>('localAuth');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    regionalAffinity = registerOutput<String?>('regionalAffinity');
    reporting = registerOutput<String?>('reporting');
    scalableExecution = registerOutput<String?>('scalableExecution');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
