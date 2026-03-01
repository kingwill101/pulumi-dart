import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_configuration_args.dart';
import 'partner_configuration_partner_authorization.dart';

/// Manages an Event Grid Partner Configuration.
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
/// const examplePartnerConfiguration = new azure.eventgrid.PartnerConfiguration("example", {
///     resourceGroupName: example.name,
///     defaultMaximumExpirationTimeInDays: 14,
///     partnerAuthorizations: [{
///         partnerRegistrationId: "804a11ca-ce9b-4158-8e94-3c8dc7a072ec",
///         partnerName: "Auth0",
///         authorizationExpirationTimeInUtc: "2025-02-05T00:00:00Z",
///     }],
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
/// example_partner_configuration = azure.eventgrid.PartnerConfiguration("example",
///     resource_group_name=example.name,
///     default_maximum_expiration_time_in_days=14,
///     partner_authorizations=[{
///         "partner_registration_id": "804a11ca-ce9b-4158-8e94-3c8dc7a072ec",
///         "partner_name": "Auth0",
///         "authorization_expiration_time_in_utc": "2025-02-05T00:00:00Z",
///     }],
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
///     var examplePartnerConfiguration = new Azure.EventGrid.PartnerConfiguration("example", new()
///     {
///         ResourceGroupName = example.Name,
///         DefaultMaximumExpirationTimeInDays = 14,
///         PartnerAuthorizations = new[]
///         {
///             new Azure.EventGrid.Inputs.PartnerConfigurationPartnerAuthorizationArgs
///             {
///                 PartnerRegistrationId = "804a11ca-ce9b-4158-8e94-3c8dc7a072ec",
///                 PartnerName = "Auth0",
///                 AuthorizationExpirationTimeInUtc = "2025-02-05T00:00:00Z",
///             },
///         },
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
/// 		_, err = eventgrid.NewPartnerConfiguration(ctx, "example", &eventgrid.PartnerConfigurationArgs{
/// 			ResourceGroupName:                  example.Name,
/// 			DefaultMaximumExpirationTimeInDays: pulumi.Int(14),
/// 			PartnerAuthorizations: eventgrid.PartnerConfigurationPartnerAuthorizationArray{
/// 				&eventgrid.PartnerConfigurationPartnerAuthorizationArgs{
/// 					PartnerRegistrationId:            pulumi.String("804a11ca-ce9b-4158-8e94-3c8dc7a072ec"),
/// 					PartnerName:                      pulumi.String("Auth0"),
/// 					AuthorizationExpirationTimeInUtc: pulumi.String("2025-02-05T00:00:00Z"),
/// 				},
/// 			},
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
/// import com.pulumi.azure.eventgrid.PartnerConfiguration;
/// import com.pulumi.azure.eventgrid.PartnerConfigurationArgs;
/// import com.pulumi.azure.eventgrid.inputs.PartnerConfigurationPartnerAuthorizationArgs;
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
///         var examplePartnerConfiguration = new PartnerConfiguration("examplePartnerConfiguration", PartnerConfigurationArgs.builder()
///             .resourceGroupName(example.name())
///             .defaultMaximumExpirationTimeInDays(14)
///             .partnerAuthorizations(PartnerConfigurationPartnerAuthorizationArgs.builder()
///                 .partnerRegistrationId("804a11ca-ce9b-4158-8e94-3c8dc7a072ec")
///                 .partnerName("Auth0")
///                 .authorizationExpirationTimeInUtc("2025-02-05T00:00:00Z")
///                 .build())
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
///   examplePartnerConfiguration:
///     type: azure:eventgrid:PartnerConfiguration
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       defaultMaximumExpirationTimeInDays: 14
///       partnerAuthorizations:
///         - partnerRegistrationId: 804a11ca-ce9b-4158-8e94-3c8dc7a072ec
///           partnerName: Auth0
///           authorizationExpirationTimeInUtc: 2025-02-05T00:00:00Z
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
/// Event Grid Partner Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventgrid/partnerConfiguration:PartnerConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1
/// ```
class PartnerConfiguration extends pulumi.CustomResource {
  /// Time used to validate the authorization expiration time for each authorized partner. Defaults to `7`.
  late final pulumi.Output<int?> defaultMaximumExpirationTimeInDays;
  /// One or more `partner_authorization` blocks as defined below.
  late final pulumi.Output<List<PartnerConfigurationPartnerAuthorization>?> partnerAuthorizations;
  /// The name of the Resource Group where the Event Grid Partner Configuration should exist. Changing this forces a new Event Grid Partner Configuration to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Event Grid Partner Configuration.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PartnerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerConfiguration]. {@macro pulumi_eventgrid_partner_configuration_partner_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerConfiguration(
    String name, {
    PartnerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/partnerConfiguration:PartnerConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultMaximumExpirationTimeInDays = registerOutput<int?>('defaultMaximumExpirationTimeInDays');
    this.partnerAuthorizations = registerOutput<List<PartnerConfigurationPartnerAuthorization>?>('partnerAuthorizations');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
