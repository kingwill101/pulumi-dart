import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_pricing_args.dart';
import 'subscription_pricing_extension.dart';

/// Manages the Pricing Tier for Azure Security Center in the current subscription.
///
/// > **Note:** Deletion of this resource will reset the pricing tier to `Free`
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.securitycenter.SubscriptionPricing("example", {
///     tier: "Standard",
///     resourceType: "VirtualMachines",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.securitycenter.SubscriptionPricing("example",
///     tier="Standard",
///     resource_type="VirtualMachines")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.SecurityCenter.SubscriptionPricing("example", new()
///     {
///         Tier = "Standard",
///         ResourceType = "VirtualMachines",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewSubscriptionPricing(ctx, "example", &securitycenter.SubscriptionPricingArgs{
/// 			Tier:         pulumi.String("Standard"),
/// 			ResourceType: pulumi.String("VirtualMachines"),
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
/// import com.pulumi.azure.securitycenter.SubscriptionPricing;
/// import com.pulumi.azure.securitycenter.SubscriptionPricingArgs;
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
///         var example = new SubscriptionPricing("example", SubscriptionPricingArgs.builder()
///             .tier("Standard")
///             .resourceType("VirtualMachines")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:securitycenter:SubscriptionPricing
///     properties:
///       tier: Standard
///       resourceType: VirtualMachines
/// ```
///
///
/// ### Using Extensions with Defender CSPM
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example1 = new azure.securitycenter.SubscriptionPricing("example1", {
///     tier: "Standard",
///     resourceType: "CloudPosture",
///     extensions: [
///         {
///             name: "ContainerRegistriesVulnerabilityAssessments",
///         },
///         {
///             name: "AgentlessVmScanning",
///             additionalExtensionProperties: {
///                 ExclusionTags: "[]",
///             },
///         },
///         {
///             name: "AgentlessDiscoveryForKubernetes",
///         },
///         {
///             name: "SensitiveDataDiscovery",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example1 = azure.securitycenter.SubscriptionPricing("example1",
///     tier="Standard",
///     resource_type="CloudPosture",
///     extensions=[
///         {
///             "name": "ContainerRegistriesVulnerabilityAssessments",
///         },
///         {
///             "name": "AgentlessVmScanning",
///             "additional_extension_properties": {
///                 "ExclusionTags": "[]",
///             },
///         },
///         {
///             "name": "AgentlessDiscoveryForKubernetes",
///         },
///         {
///             "name": "SensitiveDataDiscovery",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example1 = new Azure.SecurityCenter.SubscriptionPricing("example1", new()
///     {
///         Tier = "Standard",
///         ResourceType = "CloudPosture",
///         Extensions = new[]
///         {
///             new Azure.SecurityCenter.Inputs.SubscriptionPricingExtensionArgs
///             {
///                 Name = "ContainerRegistriesVulnerabilityAssessments",
///             },
///             new Azure.SecurityCenter.Inputs.SubscriptionPricingExtensionArgs
///             {
///                 Name = "AgentlessVmScanning",
///                 AdditionalExtensionProperties =
///                 {
///                     { "ExclusionTags", "[]" },
///                 },
///             },
///             new Azure.SecurityCenter.Inputs.SubscriptionPricingExtensionArgs
///             {
///                 Name = "AgentlessDiscoveryForKubernetes",
///             },
///             new Azure.SecurityCenter.Inputs.SubscriptionPricingExtensionArgs
///             {
///                 Name = "SensitiveDataDiscovery",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewSubscriptionPricing(ctx, "example1", &securitycenter.SubscriptionPricingArgs{
/// 			Tier:         pulumi.String("Standard"),
/// 			ResourceType: pulumi.String("CloudPosture"),
/// 			Extensions: securitycenter.SubscriptionPricingExtensionArray{
/// 				&securitycenter.SubscriptionPricingExtensionArgs{
/// 					Name: pulumi.String("ContainerRegistriesVulnerabilityAssessments"),
/// 				},
/// 				&securitycenter.SubscriptionPricingExtensionArgs{
/// 					Name: pulumi.String("AgentlessVmScanning"),
/// 					AdditionalExtensionProperties: pulumi.StringMap{
/// 						"ExclusionTags": pulumi.String("[]"),
/// 					},
/// 				},
/// 				&securitycenter.SubscriptionPricingExtensionArgs{
/// 					Name: pulumi.String("AgentlessDiscoveryForKubernetes"),
/// 				},
/// 				&securitycenter.SubscriptionPricingExtensionArgs{
/// 					Name: pulumi.String("SensitiveDataDiscovery"),
/// 				},
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
/// import com.pulumi.azure.securitycenter.SubscriptionPricing;
/// import com.pulumi.azure.securitycenter.SubscriptionPricingArgs;
/// import com.pulumi.azure.securitycenter.inputs.SubscriptionPricingExtensionArgs;
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
///         var example1 = new SubscriptionPricing("example1", SubscriptionPricingArgs.builder()
///             .tier("Standard")
///             .resourceType("CloudPosture")
///             .extensions(
///                 SubscriptionPricingExtensionArgs.builder()
///                     .name("ContainerRegistriesVulnerabilityAssessments")
///                     .build(),
///                 SubscriptionPricingExtensionArgs.builder()
///                     .name("AgentlessVmScanning")
///                     .additionalExtensionProperties(Map.of("ExclusionTags", "[]"))
///                     .build(),
///                 SubscriptionPricingExtensionArgs.builder()
///                     .name("AgentlessDiscoveryForKubernetes")
///                     .build(),
///                 SubscriptionPricingExtensionArgs.builder()
///                     .name("SensitiveDataDiscovery")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example1:
///     type: azure:securitycenter:SubscriptionPricing
///     properties:
///       tier: Standard
///       resourceType: CloudPosture
///       extensions:
///         - name: ContainerRegistriesVulnerabilityAssessments
///         - name: AgentlessVmScanning
///           additionalExtensionProperties:
///             ExclusionTags: '[]'
///         - name: AgentlessDiscoveryForKubernetes
///         - name: SensitiveDataDiscovery
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Security` - 2023-01-01
///
/// ## Import
///
/// The pricing tier can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/subscriptionPricing:SubscriptionPricing example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Security/pricings/<resource_type>
/// ```
class SubscriptionPricing extends pulumi.CustomResource {
  /// One or more `extension` blocks as defined below.
  late final pulumi.Output<List<SubscriptionPricingExtension>?> extensions;
  /// The resource type this setting affects. Possible values are `AI`, `Api`, `AppServices`, `ContainerRegistry`, `KeyVaults`, `KubernetesService`, `SqlServers`, `SqlServerVirtualMachines`, `StorageAccounts`, `VirtualMachines`, `Arm`, `Dns`, `OpenSourceRelationalDatabases`, `Containers`, `CosmosDbs` and `CloudPosture`. Defaults to `VirtualMachines`
  late final pulumi.Output<String?> resourceType;
  /// Resource type pricing subplan. Contact your MSFT representative for possible values. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> subplan;
  /// The pricing tier to use. Possible values are `Free` and `Standard`.
  late final pulumi.Output<String> tier;

  /// Creates a new [SubscriptionPricing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionPricing]. {@macro pulumi_securitycenter_subscription_pricing_subscription_pricing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionPricing(
    String name, {
    SubscriptionPricingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/subscriptionPricing:SubscriptionPricing',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.extensions = registerOutput<List<SubscriptionPricingExtension>?>('extensions');
    this.resourceType = registerOutput<String?>('resourceType');
    this.subplan = registerOutput<String?>('subplan');
    this.tier = registerOutput<String>('tier');
  }
}
