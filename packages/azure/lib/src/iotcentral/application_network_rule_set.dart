import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_network_rule_set_args.dart';
import 'application_network_rule_set_ip_rule.dart';

/// Manages an IoT Central Application Network Rule Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource",
///     location: "West Europe",
/// });
/// const exampleApplication = new azure.iotcentral.Application("example", {
///     name: "example-iotcentral-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     subDomain: "example-iotcentral-app-subdomain",
///     displayName: "example-iotcentral-app-display-name",
///     sku: "ST1",
///     tags: {
///         Foo: "Bar",
///     },
/// });
/// const exampleApplicationNetworkRuleSet = new azure.iotcentral.ApplicationNetworkRuleSet("example", {
///     iotcentralApplicationId: exampleApplication.id,
///     ipRules: [
///         {
///             name: "rule1",
///             ipMask: "10.0.1.0/24",
///         },
///         {
///             name: "rule2",
///             ipMask: "10.1.1.0/24",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource",
///     location="West Europe")
/// example_application = azure.iotcentral.Application("example",
///     name="example-iotcentral-app",
///     resource_group_name=example.name,
///     location=example.location,
///     sub_domain="example-iotcentral-app-subdomain",
///     display_name="example-iotcentral-app-display-name",
///     sku="ST1",
///     tags={
///         "Foo": "Bar",
///     })
/// example_application_network_rule_set = azure.iotcentral.ApplicationNetworkRuleSet("example",
///     iotcentral_application_id=example_application.id,
///     ip_rules=[
///         {
///             "name": "rule1",
///             "ip_mask": "10.0.1.0/24",
///         },
///         {
///             "name": "rule2",
///             "ip_mask": "10.1.1.0/24",
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resource",
///         Location = "West Europe",
///     });
///
///     var exampleApplication = new Azure.IotCentral.Application("example", new()
///     {
///         Name = "example-iotcentral-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SubDomain = "example-iotcentral-app-subdomain",
///         DisplayName = "example-iotcentral-app-display-name",
///         Sku = "ST1",
///         Tags =
///         {
///             { "Foo", "Bar" },
///         },
///     });
///
///     var exampleApplicationNetworkRuleSet = new Azure.IotCentral.ApplicationNetworkRuleSet("example", new()
///     {
///         IotcentralApplicationId = exampleApplication.Id,
///         IpRules = new[]
///         {
///             new Azure.IotCentral.Inputs.ApplicationNetworkRuleSetIpRuleArgs
///             {
///                 Name = "rule1",
///                 IpMask = "10.0.1.0/24",
///             },
///             new Azure.IotCentral.Inputs.ApplicationNetworkRuleSetIpRuleArgs
///             {
///                 Name = "rule2",
///                 IpMask = "10.1.1.0/24",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iotcentral"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resource"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplication, err := iotcentral.NewApplication(ctx, "example", &iotcentral.ApplicationArgs{
/// 			Name:              pulumi.String("example-iotcentral-app"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SubDomain:         pulumi.String("example-iotcentral-app-subdomain"),
/// 			DisplayName:       pulumi.String("example-iotcentral-app-display-name"),
/// 			Sku:               pulumi.String("ST1"),
/// 			Tags: pulumi.StringMap{
/// 				"Foo": pulumi.String("Bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iotcentral.NewApplicationNetworkRuleSet(ctx, "example", &iotcentral.ApplicationNetworkRuleSetArgs{
/// 			IotcentralApplicationId: exampleApplication.ID(),
/// 			IpRules: iotcentral.ApplicationNetworkRuleSetIpRuleArray{
/// 				&iotcentral.ApplicationNetworkRuleSetIpRuleArgs{
/// 					Name:   pulumi.String("rule1"),
/// 					IpMask: pulumi.String("10.0.1.0/24"),
/// 				},
/// 				&iotcentral.ApplicationNetworkRuleSetIpRuleArgs{
/// 					Name:   pulumi.String("rule2"),
/// 					IpMask: pulumi.String("10.1.1.0/24"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.iotcentral.Application;
/// import com.pulumi.azure.iotcentral.ApplicationArgs;
/// import com.pulumi.azure.iotcentral.ApplicationNetworkRuleSet;
/// import com.pulumi.azure.iotcentral.ApplicationNetworkRuleSetArgs;
/// import com.pulumi.azure.iotcentral.inputs.ApplicationNetworkRuleSetIpRuleArgs;
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
///             .name("example-resource")
///             .location("West Europe")
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-iotcentral-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .subDomain("example-iotcentral-app-subdomain")
///             .displayName("example-iotcentral-app-display-name")
///             .sku("ST1")
///             .tags(Map.of("Foo", "Bar"))
///             .build());
///
///         var exampleApplicationNetworkRuleSet = new ApplicationNetworkRuleSet("exampleApplicationNetworkRuleSet", ApplicationNetworkRuleSetArgs.builder()
///             .iotcentralApplicationId(exampleApplication.id())
///             .ipRules(
///                 ApplicationNetworkRuleSetIpRuleArgs.builder()
///                     .name("rule1")
///                     .ipMask("10.0.1.0/24")
///                     .build(),
///                 ApplicationNetworkRuleSetIpRuleArgs.builder()
///                     .name("rule2")
///                     .ipMask("10.1.1.0/24")
///                     .build())
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
///       name: example-resource
///       location: West Europe
///   exampleApplication:
///     type: azure:iotcentral:Application
///     name: example
///     properties:
///       name: example-iotcentral-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       subDomain: example-iotcentral-app-subdomain
///       displayName: example-iotcentral-app-display-name
///       sku: ST1
///       tags:
///         Foo: Bar
///   exampleApplicationNetworkRuleSet:
///     type: azure:iotcentral:ApplicationNetworkRuleSet
///     name: example
///     properties:
///       iotcentralApplicationId: ${exampleApplication.id}
///       ipRules:
///         - name: rule1
///           ipMask: 10.0.1.0/24
///         - name: rule2
///           ipMask: 10.1.1.0/24
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.IoTCentral` - 2021-11-01-preview
///
/// ## Import
///
/// IoT Central Application Network Rule Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iotcentral/applicationNetworkRuleSet:ApplicationNetworkRuleSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.IoTCentral/iotApps/app1
/// ```
class ApplicationNetworkRuleSet extends pulumi.CustomResource {
  /// Whether these IP Rules apply for device connectivity to IoT Hub and Device Provisioning Service associated with this IoT Central Application. Possible values are `true`, `false`. Defaults to `true`
  late final pulumi.Output<bool?> applyToDevice;
  /// Specifies the default action for the IoT Central Application Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  late final pulumi.Output<String?> defaultAction;
  /// The ID of the IoT Central Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iotcentralApplicationId;
  /// One or more `ip_rule` blocks as defined below.
  late final pulumi.Output<List<ApplicationNetworkRuleSetIpRule>?> ipRules;

  /// Creates a new [ApplicationNetworkRuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationNetworkRuleSet]. {@macro pulumi_iotcentral_application_network_rule_set_application_network_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationNetworkRuleSet(
    String name, {
    ApplicationNetworkRuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iotcentral/applicationNetworkRuleSet:ApplicationNetworkRuleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyToDevice = registerOutput<bool?>('applyToDevice');
    this.defaultAction = registerOutput<String?>('defaultAction');
    this.iotcentralApplicationId = registerOutput<String>('iotcentralApplicationId');
    this.ipRules = registerOutput<List<ApplicationNetworkRuleSetIpRule>?>('ipRules');
  }
}
