import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_args.dart';
import 'monitor_datadog_organization.dart';
import 'monitor_identity.dart';
import 'monitor_user.dart';

/// Manages a datadog Monitor.
///
/// ## Example Usage
///
/// ### Monitor creation with linking to Datadog organization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-datadog",
///     location: "West US 2",
/// });
/// const exampleMonitor = new azure.datadog.Monitor("example", {
///     name: "example-monitor",
///     resourceGroupName: example.name,
///     location: example.location,
///     datadogOrganization: {
///         apiKey: "XXXX",
///         applicationKey: "XXXX",
///     },
///     user: {
///         name: "Example",
///         email: "abc@xyz.com",
///     },
///     skuName: "Linked",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-datadog",
///     location="West US 2")
/// example_monitor = azure.datadog.Monitor("example",
///     name="example-monitor",
///     resource_group_name=example.name,
///     location=example.location,
///     datadog_organization={
///         "api_key": "XXXX",
///         "application_key": "XXXX",
///     },
///     user={
///         "name": "Example",
///         "email": "abc@xyz.com",
///     },
///     sku_name="Linked",
///     identity={
///         "type": "SystemAssigned",
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
///         Name = "example-datadog",
///         Location = "West US 2",
///     });
///
///     var exampleMonitor = new Azure.Datadog.Monitor("example", new()
///     {
///         Name = "example-monitor",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatadogOrganization = new Azure.Datadog.Inputs.MonitorDatadogOrganizationArgs
///         {
///             ApiKey = "XXXX",
///             ApplicationKey = "XXXX",
///         },
///         User = new Azure.Datadog.Inputs.MonitorUserArgs
///         {
///             Name = "Example",
///             Email = "abc@xyz.com",
///         },
///         SkuName = "Linked",
///         Identity = new Azure.Datadog.Inputs.MonitorIdentityArgs
///         {
///             Type = "SystemAssigned",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datadog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-datadog"),
/// 			Location: pulumi.String("West US 2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datadog.NewMonitor(ctx, "example", &datadog.MonitorArgs{
/// 			Name:              pulumi.String("example-monitor"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatadogOrganization: &datadog.MonitorDatadogOrganizationArgs{
/// 				ApiKey:         pulumi.String("XXXX"),
/// 				ApplicationKey: pulumi.String("XXXX"),
/// 			},
/// 			User: &datadog.MonitorUserArgs{
/// 				Name:  pulumi.String("Example"),
/// 				Email: pulumi.String("abc@xyz.com"),
/// 			},
/// 			SkuName: pulumi.String("Linked"),
/// 			Identity: &datadog.MonitorIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
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
/// import com.pulumi.azure.datadog.Monitor;
/// import com.pulumi.azure.datadog.MonitorArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorDatadogOrganizationArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorUserArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorIdentityArgs;
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
///             .name("example-datadog")
///             .location("West US 2")
///             .build());
///
///         var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
///             .name("example-monitor")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datadogOrganization(MonitorDatadogOrganizationArgs.builder()
///                 .apiKey("XXXX")
///                 .applicationKey("XXXX")
///                 .build())
///             .user(MonitorUserArgs.builder()
///                 .name("Example")
///                 .email("abc@xyz.com")
///                 .build())
///             .skuName("Linked")
///             .identity(MonitorIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
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
///       name: example-datadog
///       location: West US 2
///   exampleMonitor:
///     type: azure:datadog:Monitor
///     name: example
///     properties:
///       name: example-monitor
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datadogOrganization:
///         apiKey: XXXX
///         applicationKey: XXXX
///       user:
///         name: Example
///         email: abc@xyz.com
///       skuName: Linked
///       identity:
///         type: SystemAssigned
/// ```
///
///
/// ## Role Assignment
///
/// To enable metrics flow, perform role assignment on the identity created above. `Monitoring reader(43d0d8ad-25c7-4714-9337-8ba259a9fe05)` role is required .
///
/// ### Role assignment on the monitor created
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const monitoringReader = azure.authorization.getRoleDefinition({
///     name: "Monitoring Reader",
/// });
/// const example = new azure.authorization.Assignment("example", {
///     scope: primary.then(primary => primary.id),
///     roleDefinitionId: monitoringReader.then(monitoringReader => monitoringReader.roleDefinitionId),
///     principalId: exampleAzurermDatadogMonitor.identity[0].principalId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// monitoring_reader = azure.authorization.get_role_definition(name="Monitoring Reader")
/// example = azure.authorization.Assignment("example",
///     scope=primary.id,
///     role_definition_id=monitoring_reader.role_definition_id,
///     principal_id=example_azurerm_datadog_monitor["identity"][0]["principalId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var monitoringReader = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Monitoring Reader",
///     });
///
///     var example = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionId = monitoringReader.Apply(getRoleDefinitionResult => getRoleDefinitionResult.RoleDefinitionId),
///         PrincipalId = exampleAzurermDatadogMonitor.Identity[0].PrincipalId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		monitoringReader, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name: pulumi.StringRef("Monitoring Reader"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:            pulumi.String(primary.Id),
/// 			RoleDefinitionId: pulumi.String(monitoringReader.RoleDefinitionId),
/// 			PrincipalId:      pulumi.Any(exampleAzurermDatadogMonitor.Identity[0].PrincipalId),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var monitoringReader = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Monitoring Reader")
///             .build());
///
///         var example = new Assignment("example", AssignmentArgs.builder()
///             .scope(primary.id())
///             .roleDefinitionId(monitoringReader.roleDefinitionId())
///             .principalId(exampleAzurermDatadogMonitor.identity()[0].principalId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:authorization:Assignment
///     properties:
///       scope: ${primary.id}
///       roleDefinitionId: ${monitoringReader.roleDefinitionId}
///       principalId: ${exampleAzurermDatadogMonitor.identity[0].principalId}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   monitoringReader:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Monitoring Reader
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Datadog` - 2021-03-01
///
/// ## Import
///
/// Datadog Monitors can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datadog/monitor:Monitor example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Datadog/monitors/monitor1
/// ```
class Monitor extends pulumi.CustomResource {
  /// A `datadog_organization` block as defined below.
  late final pulumi.Output<MonitorDatadogOrganization> datadogOrganization;
  /// A `identity` block as defined below.
  late final pulumi.Output<MonitorIdentity?> identity;
  /// The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  late final pulumi.Output<String> location;
  /// Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state.
  late final pulumi.Output<String> marketplaceSubscriptionStatus;
  /// Is monitoring enabled? Defaults to `true`.
  late final pulumi.Output<bool?> monitoringEnabled;
  /// The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name which should be used for this sku.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags which should be assigned to the Datadog Monitor.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `user` block as defined below.
  late final pulumi.Output<MonitorUser> user;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_datadog_monitor_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datadog/monitor:Monitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.datadogOrganization = registerOutput<MonitorDatadogOrganization>('datadogOrganization');
    this.identity = registerOutput<MonitorIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.marketplaceSubscriptionStatus = registerOutput<String>('marketplaceSubscriptionStatus');
    this.monitoringEnabled = registerOutput<bool?>('monitoringEnabled');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.user = registerOutput<MonitorUser>('user');
  }
}
