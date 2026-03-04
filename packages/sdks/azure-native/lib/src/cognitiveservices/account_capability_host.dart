import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_capability_host_args.dart';
import 'capability_host_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Account CapabilityHost.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accountCapabilityHost = new AzureNative.CognitiveServices.AccountCapabilityHost("accountCapabilityHost", new()
///     {
///         AccountName = "account-1",
///         CapabilityHostName = "capabilityHostName",
///         CapabilityHostProperties = new AzureNative.CognitiveServices.Inputs.CapabilityHostArgs
///         {
///             CustomerSubnet = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := cognitiveservices.NewAccountCapabilityHost(ctx, "accountCapabilityHost", &cognitiveservices.AccountCapabilityHostArgs{
/// 			AccountName:        pulumi.String("account-1"),
/// 			CapabilityHostName: pulumi.String("capabilityHostName"),
/// 			CapabilityHostProperties: &cognitiveservices.CapabilityHostArgs{
/// 				CustomerSubnet: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.cognitiveservices.AccountCapabilityHost;
/// import com.pulumi.azurenative.cognitiveservices.AccountCapabilityHostArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.CapabilityHostArgs;
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
///         var accountCapabilityHost = new AccountCapabilityHost("accountCapabilityHost", AccountCapabilityHostArgs.builder()
///             .accountName("account-1")
///             .capabilityHostName("capabilityHostName")
///             .capabilityHostProperties(CapabilityHostArgs.builder()
///                 .customerSubnet("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet")
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const accountCapabilityHost = new azure_native.cognitiveservices.AccountCapabilityHost("accountCapabilityHost", {
///     accountName: "account-1",
///     capabilityHostName: "capabilityHostName",
///     capabilityHostProperties: {
///         customerSubnet: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account_capability_host = azure_native.cognitiveservices.AccountCapabilityHost("accountCapabilityHost",
///     account_name="account-1",
///     capability_host_name="capabilityHostName",
///     capability_host_properties={
///         "customer_subnet": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   accountCapabilityHost:
///     type: azure-native:cognitiveservices:AccountCapabilityHost
///     properties:
///       accountName: account-1
///       capabilityHostName: capabilityHostName
///       capabilityHostProperties:
///         customerSubnet: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:cognitiveservices:AccountCapabilityHost capabilityHostName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/capabilityHosts/{capabilityHostName}
/// ```
class AccountCapabilityHost extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<CapabilityHostResponse> capabilityHostProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AccountCapabilityHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountCapabilityHost]. {@macro pulumi_cognitiveservices_account_capability_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountCapabilityHost(
    String name, {
    AccountCapabilityHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:AccountCapabilityHost',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    capabilityHostProperties = registerOutput<CapabilityHostResponse>(
      'capabilityHostProperties',
    );
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
