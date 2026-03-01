import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_topic_args.dart';

/// Manages an EventGrid Domain Topic
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleDomain = new azure.eventgrid.Domain("example", {
///     name: "my-eventgrid-domain",
///     location: example.location,
///     resourceGroupName: example.name,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleDomainTopic = new azure.eventgrid.DomainTopic("example", {
///     name: "my-eventgrid-domain-topic",
///     domainName: exampleDomain.name,
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_domain = azure.eventgrid.Domain("example",
///     name="my-eventgrid-domain",
///     location=example.location,
///     resource_group_name=example.name,
///     tags={
///         "environment": "Production",
///     })
/// example_domain_topic = azure.eventgrid.DomainTopic("example",
///     name="my-eventgrid-domain-topic",
///     domain_name=example_domain.name,
///     resource_group_name=example.name)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleDomain = new Azure.EventGrid.Domain("example", new()
///     {
///         Name = "my-eventgrid-domain",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleDomainTopic = new Azure.EventGrid.DomainTopic("example", new()
///     {
///         Name = "my-eventgrid-domain-topic",
///         DomainName = exampleDomain.Name,
///         ResourceGroupName = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDomain, err := eventgrid.NewDomain(ctx, "example", &eventgrid.DomainArgs{
/// 			Name:              pulumi.String("my-eventgrid-domain"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventgrid.NewDomainTopic(ctx, "example", &eventgrid.DomainTopicArgs{
/// 			Name:              pulumi.String("my-eventgrid-domain-topic"),
/// 			DomainName:        exampleDomain.Name,
/// 			ResourceGroupName: example.Name,
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
/// import com.pulumi.azure.eventgrid.Domain;
/// import com.pulumi.azure.eventgrid.DomainArgs;
/// import com.pulumi.azure.eventgrid.DomainTopic;
/// import com.pulumi.azure.eventgrid.DomainTopicArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .name("my-eventgrid-domain")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleDomainTopic = new DomainTopic("exampleDomainTopic", DomainTopicArgs.builder()
///             .name("my-eventgrid-domain-topic")
///             .domainName(exampleDomain.name())
///             .resourceGroupName(example.name())
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
///       name: example-resources
///       location: West Europe
///   exampleDomain:
///     type: azure:eventgrid:Domain
///     name: example
///     properties:
///       name: my-eventgrid-domain
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tags:
///         environment: Production
///   exampleDomainTopic:
///     type: azure:eventgrid:DomainTopic
///     name: example
///     properties:
///       name: my-eventgrid-domain-topic
///       domainName: ${exampleDomain.name}
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
///
/// ## Import
///
/// EventGrid Domain Topics can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventgrid/domainTopic:DomainTopic topic1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventGrid/domains/domain1/topics/topic1
/// ```
class DomainTopic extends pulumi.CustomResource {
  /// Specifies the name of the EventGrid Domain. Changing this forces a new resource to be created.
  late final pulumi.Output<String> domainName;
  /// Specifies the name of the EventGrid Domain Topic resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [DomainTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainTopic]. {@macro pulumi_eventgrid_domain_topic_domain_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainTopic(
    String name, {
    DomainTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/domainTopic:DomainTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
