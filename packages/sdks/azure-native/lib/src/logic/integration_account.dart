import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_args.dart';
import 'integration_account_sku_response.dart';
import 'resource_reference_response.dart';

/// The integration account.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2016-06-01, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an integration account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccount = new AzureNative.Logic.IntegrationAccount("integrationAccount", new()
///     {
///         IntegrationAccountName = "testIntegrationAccount",
///         Location = "westus",
///         ResourceGroupName = "testResourceGroup",
///         Sku = new AzureNative.Logic.Inputs.IntegrationAccountSkuArgs
///         {
///             Name = AzureNative.Logic.IntegrationAccountSkuName.Standard,
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationAccount(ctx, "integrationAccount", &logic.IntegrationAccountArgs{
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Location:               pulumi.String("westus"),
/// 			ResourceGroupName:      pulumi.String("testResourceGroup"),
/// 			Sku: &logic.IntegrationAccountSkuArgs{
/// 				Name: pulumi.String(logic.IntegrationAccountSkuNameStandard),
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
/// import com.pulumi.azurenative.logic.IntegrationAccount;
/// import com.pulumi.azurenative.logic.IntegrationAccountArgs;
/// import com.pulumi.azurenative.logic.inputs.IntegrationAccountSkuArgs;
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
///         var integrationAccount = new IntegrationAccount("integrationAccount", IntegrationAccountArgs.builder()
///             .integrationAccountName("testIntegrationAccount")
///             .location("westus")
///             .resourceGroupName("testResourceGroup")
///             .sku(IntegrationAccountSkuArgs.builder()
///                 .name("Standard")
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
/// const integrationAccount = new azure_native.logic.IntegrationAccount("integrationAccount", {
///     integrationAccountName: "testIntegrationAccount",
///     location: "westus",
///     resourceGroupName: "testResourceGroup",
///     sku: {
///         name: azure_native.logic.IntegrationAccountSkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account = azure_native.logic.IntegrationAccount("integrationAccount",
///     integration_account_name="testIntegrationAccount",
///     location="westus",
///     resource_group_name="testResourceGroup",
///     sku={
///         "name": azure_native.logic.IntegrationAccountSkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccount:
///     type: azure-native:logic:IntegrationAccount
///     properties:
///       integrationAccountName: testIntegrationAccount
///       location: westus
///       resourceGroupName: testResourceGroup
///       sku:
///         name: Standard
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
/// $ pulumi import azure-native:logic:IntegrationAccount testIntegrationAccount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}
/// ```
class IntegrationAccount extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The integration service environment.
  late final pulumi.Output<ResourceReferenceResponse?> integrationServiceEnvironment;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// Gets the resource name.
  late final pulumi.Output<String> name;
  /// The sku.
  late final pulumi.Output<IntegrationAccountSkuResponse?> sku;
  /// The workflow state.
  late final pulumi.Output<String?> state;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccount]. {@macro pulumi_logic_integration_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccount(
    String name, {
    IntegrationAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:IntegrationAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    integrationServiceEnvironment = registerOutput<ResourceReferenceResponse?>('integrationServiceEnvironment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    sku = registerOutput<IntegrationAccountSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationAccountSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
