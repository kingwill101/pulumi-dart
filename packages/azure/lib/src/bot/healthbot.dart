import 'package:pulumi/pulumi.dart' as pulumi;
import 'healthbot_args.dart';

/// Manages a Healthbot Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-healthbot",
///     location: "West Europe",
/// });
/// const exampleHealthbot = new azure.bot.Healthbot("example", {
///     name: "example-bot",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "F0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-healthbot",
///     location="West Europe")
/// example_healthbot = azure.bot.Healthbot("example",
///     name="example-bot",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="F0")
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
///         Name = "example-healthbot",
///         Location = "West Europe",
///     });
///
///     var exampleHealthbot = new Azure.Bot.Healthbot("example", new()
///     {
///         Name = "example-bot",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "F0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/bot"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-healthbot"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bot.NewHealthbot(ctx, "example", &bot.HealthbotArgs{
/// 			Name:              pulumi.String("example-bot"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("F0"),
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
/// import com.pulumi.azure.bot.Healthbot;
/// import com.pulumi.azure.bot.HealthbotArgs;
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
///             .name("example-healthbot")
///             .location("West Europe")
///             .build());
///
///         var exampleHealthbot = new Healthbot("exampleHealthbot", HealthbotArgs.builder()
///             .name("example-bot")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("F0")
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
///       name: example-healthbot
///       location: West Europe
///   exampleHealthbot:
///     type: azure:bot:Healthbot
///     name: example
///     properties:
///       name: example-bot
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: F0
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HealthBot` - 2025-05-25
///
/// ## Import
///
/// Healthbot Service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/healthbot:Healthbot example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.HealthBot/healthBots/bot1
/// ```
class Healthbot extends pulumi.CustomResource {
  /// The management portal url.
  late final pulumi.Output<String> botManagementPortalUrl;
  /// Specifies The Azure Region where the resource exists. Changing this force a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies The name of the Healthbot Service resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name which should be used for the SKU of the service. Possible values are `C0`, `C1`, `F0`, `PES` and `S1`.
  ///
  /// > **Note:** Downgrading to `F0` forces a new resource to be created.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags which should be assigned to the service.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Healthbot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Healthbot]. {@macro pulumi_bot_healthbot_healthbot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Healthbot(
    String name, {
    HealthbotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/healthbot:Healthbot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.botManagementPortalUrl = registerOutput<String>('botManagementPortalUrl');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
