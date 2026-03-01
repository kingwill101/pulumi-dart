import 'package:pulumi/pulumi.dart' as pulumi;
import 'automanage_configuration_assignment_args.dart';

/// Manages an Arc Machine Automanage Configuration Profile Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const config = new pulumi.Config();
/// // The name of the Arc Machine.
/// const arcMachineName = config.requireObject<any>("arcMachineName");
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = exampleResourceGroup.name.apply(name => azure.arcmachine.getOutput({
///     name: arcMachineName,
///     resourceGroupName: name,
/// }));
/// const exampleConfiguration = new azure.automanage.Configuration("example", {
///     name: "example-configuration",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
/// });
/// const exampleAutomanageConfigurationAssignment = new azure.arcmachine.AutomanageConfigurationAssignment("example", {
///     arcMachineId: example.apply(example => example.id),
///     configurationId: exampleConfiguration.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// config = pulumi.Config()
/// # The name of the Arc Machine.
/// arc_machine_name = config.require_object("arcMachineName")
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = example_resource_group.name.apply(lambda name: azure.arcmachine.get_output(name=arc_machine_name,
///     resource_group_name=name))
/// example_configuration = azure.automanage.Configuration("example",
///     name="example-configuration",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location)
/// example_automanage_configuration_assignment = azure.arcmachine.AutomanageConfigurationAssignment("example",
///     arc_machine_id=example.id,
///     configuration_id=example_configuration.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     // The name of the Arc Machine.
///     var arcMachineName = config.RequireObject<dynamic>("arcMachineName");
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.ArcMachine.Get.Invoke(new()
///     {
///         Name = arcMachineName,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleConfiguration = new Azure.Automanage.Configuration("example", new()
///     {
///         Name = "example-configuration",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///     });
///
///     var exampleAutomanageConfigurationAssignment = new Azure.ArcMachine.AutomanageConfigurationAssignment("example", new()
///     {
///         ArcMachineId = example.Apply(getResult => getResult.Id),
///         ConfigurationId = exampleConfiguration.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arcmachine"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automanage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		// The name of the Arc Machine.
/// 		arcMachineName := cfg.RequireObject("arcMachineName")
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := exampleResourceGroup.Name.ApplyT(func(name string) (arcmachine.GetResult, error) {
/// 			return arcmachine.GetResult(interface{}(arcmachine.Get(ctx, &arcmachine.GetArgs{
/// 				Name:              arcMachineName,
/// 				ResourceGroupName: name,
/// 			}, nil))), nil
/// 		}).(arcmachine.GetResultOutput)
/// 		exampleConfiguration, err := automanage.NewConfiguration(ctx, "example", &automanage.ConfigurationArgs{
/// 			Name:              pulumi.String("example-configuration"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arcmachine.NewAutomanageConfigurationAssignment(ctx, "example", &arcmachine.AutomanageConfigurationAssignmentArgs{
/// 			ArcMachineId: pulumi.String(example.ApplyT(func(example arcmachine.GetResult) (*string, error) {
/// 				return &example.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ConfigurationId: exampleConfiguration.ID(),
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
/// import com.pulumi.azure.arcmachine.ArcmachineFunctions;
/// import com.pulumi.azure.arcmachine.inputs.GetArgs;
/// import com.pulumi.azure.automanage.Configuration;
/// import com.pulumi.azure.automanage.ConfigurationArgs;
/// import com.pulumi.azure.arcmachine.AutomanageConfigurationAssignment;
/// import com.pulumi.azure.arcmachine.AutomanageConfigurationAssignmentArgs;
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
///         final var config = ctx.config();
///         final var arcMachineName = config.get("arcMachineName");
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = exampleResourceGroup.name().applyValue(_name -> ArcmachineFunctions.get(GetArgs.builder()
///             .name(arcMachineName)
///             .resourceGroupName(_name)
///             .build()));
///
///         var exampleConfiguration = new Configuration("exampleConfiguration", ConfigurationArgs.builder()
///             .name("example-configuration")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .build());
///
///         var exampleAutomanageConfigurationAssignment = new AutomanageConfigurationAssignment("exampleAutomanageConfigurationAssignment", AutomanageConfigurationAssignmentArgs.builder()
///             .arcMachineId(example.applyValue(_example -> _example.id()))
///             .configurationId(exampleConfiguration.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   arcMachineName:
///     type: dynamic
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleConfiguration:
///     type: azure:automanage:Configuration
///     name: example
///     properties:
///       name: example-configuration
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///   exampleAutomanageConfigurationAssignment:
///     type: azure:arcmachine:AutomanageConfigurationAssignment
///     name: example
///     properties:
///       arcMachineId: ${example.id}
///       configurationId: ${exampleConfiguration.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:arcmachine:get
///       arguments:
///         name: ${arcMachineName}
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HybridCompute` - 2022-05-04
///
/// ## Import
///
/// Virtual Machine Automanage Configuration Profile Assignment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:arcmachine/automanageConfigurationAssignment:AutomanageConfigurationAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.HybridCompute/machines/machine1/providers/Microsoft.AutoManage/configurationProfileAssignments/default
/// ```
class AutomanageConfigurationAssignment extends pulumi.CustomResource {
  /// The ARM resource ID of the Arc Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> arcMachineId;
  /// The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** For a successful creation of this resource, locate "Automanage API Access" app within your Entra ID tenant. Make sure it's granted access to the scope that includes the arc server.
  late final pulumi.Output<String> configurationId;

  /// Creates a new [AutomanageConfigurationAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutomanageConfigurationAssignment]. {@macro pulumi_arcmachine_automanage_configuration_assignment_automanage_configuration_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutomanageConfigurationAssignment(
    String name, {
    AutomanageConfigurationAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arcmachine/automanageConfigurationAssignment:AutomanageConfigurationAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arcMachineId = registerOutput<String>('arcMachineId');
    this.configurationId = registerOutput<String>('configurationId');
  }
}
