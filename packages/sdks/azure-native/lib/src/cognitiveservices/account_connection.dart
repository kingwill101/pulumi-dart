import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadauth_type_connection_properties_response.dart';
import 'account_connection_args.dart';

/// Connection base resource schema.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateAccountConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accountConnection = new AzureNative.CognitiveServices.AccountConnection("accountConnection", new()
///     {
///         AccountName = "account-1",
///         ConnectionName = "connection-1",
///         Properties = new AzureNative.CognitiveServices.Inputs.NoneAuthTypeConnectionPropertiesArgs
///         {
///             AuthType = "None",
///             Category = AzureNative.CognitiveServices.ConnectionCategory.ContainerRegistry,
///             ExpiryTime = "2024-03-15T14:30:00Z",
///             Target = "[tartget url]",
///         },
///         ResourceGroupName = "resourceGroup-1",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewAccountConnection(ctx, "accountConnection", &cognitiveservices.AccountConnectionArgs{
/// 			AccountName:    pulumi.String("account-1"),
/// 			ConnectionName: pulumi.String("connection-1"),
/// 			Properties: &cognitiveservices.NoneAuthTypeConnectionPropertiesArgs{
/// 				AuthType:   pulumi.String("None"),
/// 				Category:   pulumi.String(cognitiveservices.ConnectionCategoryContainerRegistry),
/// 				ExpiryTime: pulumi.String("2024-03-15T14:30:00Z"),
/// 				Target:     pulumi.String("[tartget url]"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroup-1"),
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
/// resource "azure-native_cognitiveservices_accountconnection" "accountConnection" {
///   account_name    = "account-1"
///   connection_name = "connection-1"
///   properties = {
///     "authType"   = "None"
///     "category"   = "ContainerRegistry"
///     "expiryTime" = "2024-03-15T14:30:00Z"
///     "target"     = "[tartget url]"
///   }
///   resource_group_name = "resourceGroup-1"
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
/// import com.pulumi.azurenative.cognitiveservices.AccountConnection;
/// import com.pulumi.azurenative.cognitiveservices.AccountConnectionArgs;
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
///         var accountConnection = new AccountConnection("accountConnection", AccountConnectionArgs.builder()
///             .accountName("account-1")
///             .connectionName("connection-1")
///             .properties(NoneAuthTypeConnectionPropertiesArgs.builder()
///                 .authType("None")
///                 .category("ContainerRegistry")
///                 .expiryTime("2024-03-15T14:30:00Z")
///                 .target("[tartget url]")
///                 .build())
///             .resourceGroupName("resourceGroup-1")
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
/// const accountConnection = new azure_native.cognitiveservices.AccountConnection("accountConnection", {
///     accountName: "account-1",
///     connectionName: "connection-1",
///     properties: {
///         authType: "None",
///         category: azure_native.cognitiveservices.ConnectionCategory.ContainerRegistry,
///         expiryTime: "2024-03-15T14:30:00Z",
///         target: "[tartget url]",
///     },
///     resourceGroupName: "resourceGroup-1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account_connection = azure_native.cognitiveservices.AccountConnection("accountConnection",
///     account_name="account-1",
///     connection_name="connection-1",
///     properties={
///         "auth_type": "None",
///         "category": azure_native.cognitiveservices.ConnectionCategory.CONTAINER_REGISTRY,
///         "expiry_time": "2024-03-15T14:30:00Z",
///         "target": "[tartget url]",
///     },
///     resource_group_name="resourceGroup-1")
///
/// ```
///
/// ```yaml
/// resources:
///   accountConnection:
///     type: azure-native:cognitiveservices:AccountConnection
///     properties:
///       accountName: account-1
///       connectionName: connection-1
///       properties:
///         authType: None
///         category: ContainerRegistry
///         expiryTime: 2024-03-15T14:30:00Z
///         target: '[tartget url]'
///       resourceGroupName: resourceGroup-1
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
/// $ pulumi import azure-native:cognitiveservices:AccountConnection connection-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/connections/{connectionName}
/// ```
class AccountConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Connection property base schema.
  late final pulumi.Output<AADAuthTypeConnectionPropertiesResponse> properties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AccountConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountConnection]. {@macro pulumi_cognitiveservices_account_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountConnection(
    String name, {
    AccountConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:AccountConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AADAuthTypeConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AADAuthTypeConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
