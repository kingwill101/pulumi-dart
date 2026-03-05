import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_args.dart';
import 'scheduler_properties_response.dart';
import 'system_data_response.dart';

/// A Durable Task Scheduler resource
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-10-01-preview.
///
/// Other available API versions: 2025-04-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native durabletask [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Schedulers_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduler = new AzureNative.DurableTask.Scheduler("scheduler", new()
///     {
///         Location = "northcentralus",
///         Properties = new AzureNative.DurableTask.Inputs.SchedulerPropertiesArgs
///         {
///             IpAllowlist = new[]
///             {
///                 "10.0.0.0/8",
///             },
///             Sku = new AzureNative.DurableTask.Inputs.SchedulerSkuArgs
///             {
///                 Name = "Dedicated",
///             },
///         },
///         ResourceGroupName = "rgopenapi",
///         SchedulerName = "testscheduler",
///         Tags =
///         {
///             { "key2138", "fjaeecgnvqd" },
///             { "key7131", "ryohwcoiccwsnewjigfmijz" },
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
/// 	durabletask "github.com/pulumi/pulumi-azure-native-sdk/durabletask/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := durabletask.NewScheduler(ctx, "scheduler", &durabletask.SchedulerArgs{
/// 			Location: pulumi.String("northcentralus"),
/// 			Properties: &durabletask.SchedulerPropertiesArgs{
/// 				IpAllowlist: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/8"),
/// 				},
/// 				Sku: &durabletask.SchedulerSkuArgs{
/// 					Name: pulumi.String("Dedicated"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 			SchedulerName:     pulumi.String("testscheduler"),
/// 			Tags: pulumi.StringMap{
/// 				"key2138": pulumi.String("fjaeecgnvqd"),
/// 				"key7131": pulumi.String("ryohwcoiccwsnewjigfmijz"),
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
/// import com.pulumi.azurenative.durabletask.Scheduler;
/// import com.pulumi.azurenative.durabletask.SchedulerArgs;
/// import com.pulumi.azurenative.durabletask.inputs.SchedulerPropertiesArgs;
/// import com.pulumi.azurenative.durabletask.inputs.SchedulerSkuArgs;
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
///         var scheduler = new Scheduler("scheduler", SchedulerArgs.builder()
///             .location("northcentralus")
///             .properties(SchedulerPropertiesArgs.builder()
///                 .ipAllowlist("10.0.0.0/8")
///                 .sku(SchedulerSkuArgs.builder()
///                     .name("Dedicated")
///                     .build())
///                 .build())
///             .resourceGroupName("rgopenapi")
///             .schedulerName("testscheduler")
///             .tags(Map.ofEntries(
///                 Map.entry("key2138", "fjaeecgnvqd"),
///                 Map.entry("key7131", "ryohwcoiccwsnewjigfmijz")
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
/// const scheduler = new azure_native.durabletask.Scheduler("scheduler", {
///     location: "northcentralus",
///     properties: {
///         ipAllowlist: ["10.0.0.0/8"],
///         sku: {
///             name: "Dedicated",
///         },
///     },
///     resourceGroupName: "rgopenapi",
///     schedulerName: "testscheduler",
///     tags: {
///         key2138: "fjaeecgnvqd",
///         key7131: "ryohwcoiccwsnewjigfmijz",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduler = azure_native.durabletask.Scheduler("scheduler",
///     location="northcentralus",
///     properties={
///         "ip_allowlist": ["10.0.0.0/8"],
///         "sku": {
///             "name": "Dedicated",
///         },
///     },
///     resource_group_name="rgopenapi",
///     scheduler_name="testscheduler",
///     tags={
///         "key2138": "fjaeecgnvqd",
///         "key7131": "ryohwcoiccwsnewjigfmijz",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   scheduler:
///     type: azure-native:durabletask:Scheduler
///     properties:
///       location: northcentralus
///       properties:
///         ipAllowlist:
///           - 10.0.0.0/8
///         sku:
///           name: Dedicated
///       resourceGroupName: rgopenapi
///       schedulerName: testscheduler
///       tags:
///         key2138: fjaeecgnvqd
///         key7131: ryohwcoiccwsnewjigfmijz
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
/// $ pulumi import azure-native:durabletask:Scheduler fwxpolhofploqzwdooyg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DurableTask/schedulers/{schedulerName}
/// ```
class Scheduler extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SchedulerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Scheduler].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Scheduler]. {@macro pulumi_durabletask_scheduler_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Scheduler(
    String name, {
    SchedulerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:durabletask:Scheduler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SchedulerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SchedulerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
