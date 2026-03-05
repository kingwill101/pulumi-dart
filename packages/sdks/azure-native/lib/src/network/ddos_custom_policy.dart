import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_custom_policy_args.dart';

/// A DDoS custom policy in a resource group.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create DDoS custom policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ddosCustomPolicy = new AzureNative.Network.DdosCustomPolicy("ddosCustomPolicy", new()
///     {
///         DdosCustomPolicyName = "test-ddos-custom-policy",
///         Location = "centraluseuap",
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewDdosCustomPolicy(ctx, "ddosCustomPolicy", &network.DdosCustomPolicyArgs{
/// 			DdosCustomPolicyName: pulumi.String("test-ddos-custom-policy"),
/// 			Location:             pulumi.String("centraluseuap"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.DdosCustomPolicy;
/// import com.pulumi.azurenative.network.DdosCustomPolicyArgs;
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
///         var ddosCustomPolicy = new DdosCustomPolicy("ddosCustomPolicy", DdosCustomPolicyArgs.builder()
///             .ddosCustomPolicyName("test-ddos-custom-policy")
///             .location("centraluseuap")
///             .resourceGroupName("rg1")
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
/// const ddosCustomPolicy = new azure_native.network.DdosCustomPolicy("ddosCustomPolicy", {
///     ddosCustomPolicyName: "test-ddos-custom-policy",
///     location: "centraluseuap",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ddos_custom_policy = azure_native.network.DdosCustomPolicy("ddosCustomPolicy",
///     ddos_custom_policy_name="test-ddos-custom-policy",
///     location="centraluseuap",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   ddosCustomPolicy:
///     type: azure-native:network:DdosCustomPolicy
///     properties:
///       ddosCustomPolicyName: test-ddos-custom-policy
///       location: centraluseuap
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:DdosCustomPolicy test-ddos-custom-policy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosCustomPolicies/{ddosCustomPolicyName}
/// ```
class DdosCustomPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the DDoS custom policy resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the DDoS custom policy resource. It uniquely identifies the resource, even if the user changes its name or migrate the resource across subscriptions or resource groups.
  late final pulumi.Output<String> resourceGuid;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DdosCustomPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DdosCustomPolicy]. {@macro pulumi_network_ddos_custom_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DdosCustomPolicy(
    String name, {
    DdosCustomPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:DdosCustomPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
