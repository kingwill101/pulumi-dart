import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_endpoint_args.dart';

/// Manages a Data Collection Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleDataCollectionEndpoint = new azure.monitoring.DataCollectionEndpoint("example", {
///     name: "example-mdce",
///     resourceGroupName: example.name,
///     location: example.location,
///     kind: "Windows",
///     publicNetworkAccessEnabled: true,
///     description: "monitor_data_collection_endpoint example",
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_data_collection_endpoint = azure.monitoring.DataCollectionEndpoint("example",
///     name="example-mdce",
///     resource_group_name=example.name,
///     location=example.location,
///     kind="Windows",
///     public_network_access_enabled=True,
///     description="monitor_data_collection_endpoint example",
///     tags={
///         "foo": "bar",
///     })
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleDataCollectionEndpoint = new Azure.Monitoring.DataCollectionEndpoint("example", new()
///     {
///         Name = "example-mdce",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Kind = "Windows",
///         PublicNetworkAccessEnabled = true,
///         Description = "monitor_data_collection_endpoint example",
///         Tags =
///         {
///             { "foo", "bar" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewDataCollectionEndpoint(ctx, "example", &monitoring.DataCollectionEndpointArgs{
/// 			Name:                       pulumi.String("example-mdce"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Kind:                       pulumi.String("Windows"),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(true),
/// 			Description:                pulumi.String("monitor_data_collection_endpoint example"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.azure.monitoring.DataCollectionEndpoint;
/// import com.pulumi.azure.monitoring.DataCollectionEndpointArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleDataCollectionEndpoint = new DataCollectionEndpoint("exampleDataCollectionEndpoint", DataCollectionEndpointArgs.builder()
///             .name("example-mdce")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .kind("Windows")
///             .publicNetworkAccessEnabled(true)
///             .description("monitor_data_collection_endpoint example")
///             .tags(Map.of("foo", "bar"))
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
///       name: example-rg
///       location: West Europe
///   exampleDataCollectionEndpoint:
///     type: azure:monitoring:DataCollectionEndpoint
///     name: example
///     properties:
///       name: example-mdce
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       kind: Windows
///       publicNetworkAccessEnabled: true
///       description: monitor_data_collection_endpoint example
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2023-03-11
///
/// ## Import
///
/// Data Collection Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/dataCollectionEndpoint:DataCollectionEndpoint example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Insights/dataCollectionEndpoints/endpoint1
/// ```
class DataCollectionEndpoint extends pulumi.CustomResource {
  /// The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`.
  late final pulumi.Output<String> configurationAccessEndpoint;
  /// Specifies a description for the Data Collection Endpoint.
  late final pulumi.Output<String?> description;
  /// The immutable ID of the Data Collection Endpoint.
  late final pulumi.Output<String> immutableId;
  /// The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`.
  late final pulumi.Output<String?> kind;
  /// The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  late final pulumi.Output<String> location;
  /// The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`.
  late final pulumi.Output<String> logsIngestionEndpoint;
  /// The endpoint used for ingesting metrics, e.g., `https://mydce-abcd.eastus-1.metrics.ingest.monitor.azure.com`.
  late final pulumi.Output<String> metricsIngestionEndpoint;
  /// The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created.
  late final pulumi.Output<String> name;
  /// Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`. Default to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Data Collection Endpoint.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DataCollectionEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCollectionEndpoint]. {@macro pulumi_monitoring_data_collection_endpoint_data_collection_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCollectionEndpoint(
    String name, {
    DataCollectionEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/dataCollectionEndpoint:DataCollectionEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configurationAccessEndpoint = registerOutput<String>('configurationAccessEndpoint');
    this.description = registerOutput<String?>('description');
    this.immutableId = registerOutput<String>('immutableId');
    this.kind = registerOutput<String?>('kind');
    this.location = registerOutput<String>('location');
    this.logsIngestionEndpoint = registerOutput<String>('logsIngestionEndpoint');
    this.metricsIngestionEndpoint = registerOutput<String>('metricsIngestionEndpoint');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
