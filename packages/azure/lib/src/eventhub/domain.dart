import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_identity.dart';
import 'domain_inbound_ip_rule.dart';
import 'domain_input_mapping_default_values.dart';
import 'domain_input_mapping_fields.dart';

/// Manages an EventGrid Domain
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
/// 		_, err = eventgrid.NewDomain(ctx, "example", &eventgrid.DomainArgs{
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
/// EventGrid Domains can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/domain:Domain domain1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventGrid/domains/domain1
/// ```
class Domain extends pulumi.CustomResource {
  /// Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to `true`.
  late final pulumi.Output<bool?> autoCreateTopicWithFirstSubscription;
  /// Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to `true`.
  late final pulumi.Output<bool?> autoDeleteTopicWithLastSubscription;
  /// The Endpoint associated with the EventGrid Domain.
  late final pulumi.Output<String> endpoint;
  /// An `identity` block as defined below.
  late final pulumi.Output<DomainIdentity?> identity;
  /// One or more `inbound_ip_rule` blocks as defined below.
  late final pulumi.Output<List<DomainInboundIpRule>?> inboundIpRules;
  /// A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<DomainInputMappingDefaultValues?> inputMappingDefaultValues;
  /// A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<DomainInputMappingFields?> inputMappingFields;
  /// Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> inputSchema;
  /// Whether local authentication methods is enabled for the EventGrid Domain. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the EventGrid Domain resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Primary Shared Access Key associated with the EventGrid Domain.
  late final pulumi.Output<String> primaryAccessKey;
  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Shared Access Key associated with the EventGrid Domain.
  late final pulumi.Output<String> secondaryAccessKey;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_eventhub_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoCreateTopicWithFirstSubscription = registerOutput<bool?>('autoCreateTopicWithFirstSubscription');
    this.autoDeleteTopicWithLastSubscription = registerOutput<bool?>('autoDeleteTopicWithLastSubscription');
    this.endpoint = registerOutput<String>('endpoint');
    this.identity = registerOutput<DomainIdentity?>('identity');
    this.inboundIpRules = registerOutput<List<DomainInboundIpRule>?>('inboundIpRules');
    this.inputMappingDefaultValues = registerOutput<DomainInputMappingDefaultValues?>('inputMappingDefaultValues');
    this.inputMappingFields = registerOutput<DomainInputMappingFields?>('inputMappingFields');
    this.inputSchema = registerOutput<String?>('inputSchema');
    this.localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.primaryAccessKey = registerOutput<String>('primaryAccessKey');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
