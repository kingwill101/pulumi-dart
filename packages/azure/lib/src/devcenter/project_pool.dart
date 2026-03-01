import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_pool_args.dart';

/// Manages a Dev Center Project Pool.
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
/// const exampleDevCenter = new azure.devcenter.DevCenter("example", {
///     name: "example-dc",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkConnection = new azure.devcenter.NetworkConnection("example", {
///     name: "example-dcnc",
///     resourceGroupName: example.name,
///     location: example.location,
///     subnetId: exampleSubnet.id,
///     domainJoinType: "AzureADJoin",
/// });
/// const exampleAttachedNetwork = new azure.devcenter.AttachedNetwork("example", {
///     name: "example-dcet",
///     devCenterId: exampleDevCenter.id,
///     networkConnectionId: exampleNetworkConnection.id,
/// });
/// const exampleProject = new azure.devcenter.Project("example", {
///     name: "example-dcp",
///     resourceGroupName: example.name,
///     location: example.location,
///     devCenterId: exampleDevCenter.id,
/// });
/// const exampleDevBoxDefinition = new azure.devcenter.DevBoxDefinition("example", {
///     name: "example-dcet",
///     location: example.location,
///     devCenterId: exampleDevCenter.id,
///     imageReferenceId: pulumi.interpolate`${exampleDevCenter.id}/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2`,
///     skuName: "general_i_8c32gb256ssd_v2",
/// });
/// const exampleProjectPool = new azure.devcenter.ProjectPool("example", {
///     name: "example-dcpl",
///     location: example.location,
///     devCenterProjectId: exampleProject.id,
///     devBoxDefinitionName: exampleDevBoxDefinition.name,
///     localAdministratorEnabled: true,
///     devCenterAttachedNetworkName: exampleAttachedNetwork.name,
///     stopOnDisconnectGracePeriodMinutes: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_dev_center = azure.devcenter.DevCenter("example",
///     name="example-dc",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_connection = azure.devcenter.NetworkConnection("example",
///     name="example-dcnc",
///     resource_group_name=example.name,
///     location=example.location,
///     subnet_id=example_subnet.id,
///     domain_join_type="AzureADJoin")
/// example_attached_network = azure.devcenter.AttachedNetwork("example",
///     name="example-dcet",
///     dev_center_id=example_dev_center.id,
///     network_connection_id=example_network_connection.id)
/// example_project = azure.devcenter.Project("example",
///     name="example-dcp",
///     resource_group_name=example.name,
///     location=example.location,
///     dev_center_id=example_dev_center.id)
/// example_dev_box_definition = azure.devcenter.DevBoxDefinition("example",
///     name="example-dcet",
///     location=example.location,
///     dev_center_id=example_dev_center.id,
///     image_reference_id=example_dev_center.id.apply(lambda id: f"{id}/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2"),
///     sku_name="general_i_8c32gb256ssd_v2")
/// example_project_pool = azure.devcenter.ProjectPool("example",
///     name="example-dcpl",
///     location=example.location,
///     dev_center_project_id=example_project.id,
///     dev_box_definition_name=example_dev_box_definition.name,
///     local_administrator_enabled=True,
///     dev_center_attached_network_name=example_attached_network.name,
///     stop_on_disconnect_grace_period_minutes=60)
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
///     var exampleDevCenter = new Azure.DevCenter.DevCenter("example", new()
///     {
///         Name = "example-dc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.DevCenter.Inputs.DevCenterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "internal",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleNetworkConnection = new Azure.DevCenter.NetworkConnection("example", new()
///     {
///         Name = "example-dcnc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SubnetId = exampleSubnet.Id,
///         DomainJoinType = "AzureADJoin",
///     });
///
///     var exampleAttachedNetwork = new Azure.DevCenter.AttachedNetwork("example", new()
///     {
///         Name = "example-dcet",
///         DevCenterId = exampleDevCenter.Id,
///         NetworkConnectionId = exampleNetworkConnection.Id,
///     });
///
///     var exampleProject = new Azure.DevCenter.Project("example", new()
///     {
///         Name = "example-dcp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DevCenterId = exampleDevCenter.Id,
///     });
///
///     var exampleDevBoxDefinition = new Azure.DevCenter.DevBoxDefinition("example", new()
///     {
///         Name = "example-dcet",
///         Location = example.Location,
///         DevCenterId = exampleDevCenter.Id,
///         ImageReferenceId = exampleDevCenter.Id.Apply(id => $"{id}/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2"),
///         SkuName = "general_i_8c32gb256ssd_v2",
///     });
///
///     var exampleProjectPool = new Azure.DevCenter.ProjectPool("example", new()
///     {
///         Name = "example-dcpl",
///         Location = example.Location,
///         DevCenterProjectId = exampleProject.Id,
///         DevBoxDefinitionName = exampleDevBoxDefinition.Name,
///         LocalAdministratorEnabled = true,
///         DevCenterAttachedNetworkName = exampleAttachedNetwork.Name,
///         StopOnDisconnectGracePeriodMinutes = 60,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		exampleDevCenter, err := devcenter.NewDevCenter(ctx, "example", &devcenter.DevCenterArgs{
/// 			Name:              pulumi.String("example-dc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &devcenter.DevCenterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkConnection, err := devcenter.NewNetworkConnection(ctx, "example", &devcenter.NetworkConnectionArgs{
/// 			Name:              pulumi.String("example-dcnc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SubnetId:          exampleSubnet.ID(),
/// 			DomainJoinType:    pulumi.String("AzureADJoin"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAttachedNetwork, err := devcenter.NewAttachedNetwork(ctx, "example", &devcenter.AttachedNetworkArgs{
/// 			Name:                pulumi.String("example-dcet"),
/// 			DevCenterId:         exampleDevCenter.ID(),
/// 			NetworkConnectionId: exampleNetworkConnection.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProject, err := devcenter.NewProject(ctx, "example", &devcenter.ProjectArgs{
/// 			Name:              pulumi.String("example-dcp"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DevCenterId:       exampleDevCenter.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDevBoxDefinition, err := devcenter.NewDevBoxDefinition(ctx, "example", &devcenter.DevBoxDefinitionArgs{
/// 			Name:        pulumi.String("example-dcet"),
/// 			Location:    example.Location,
/// 			DevCenterId: exampleDevCenter.ID(),
/// 			ImageReferenceId: exampleDevCenter.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("%v/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2", id), nil
/// 			}).(pulumi.StringOutput),
/// 			SkuName: pulumi.String("general_i_8c32gb256ssd_v2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewProjectPool(ctx, "example", &devcenter.ProjectPoolArgs{
/// 			Name:                               pulumi.String("example-dcpl"),
/// 			Location:                           example.Location,
/// 			DevCenterProjectId:                 exampleProject.ID(),
/// 			DevBoxDefinitionName:               exampleDevBoxDefinition.Name,
/// 			LocalAdministratorEnabled:          pulumi.Bool(true),
/// 			DevCenterAttachedNetworkName:       exampleAttachedNetwork.Name,
/// 			StopOnDisconnectGracePeriodMinutes: pulumi.Int(60),
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
/// import com.pulumi.azure.devcenter.DevCenter;
/// import com.pulumi.azure.devcenter.DevCenterArgs;
/// import com.pulumi.azure.devcenter.inputs.DevCenterIdentityArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.devcenter.NetworkConnection;
/// import com.pulumi.azure.devcenter.NetworkConnectionArgs;
/// import com.pulumi.azure.devcenter.AttachedNetwork;
/// import com.pulumi.azure.devcenter.AttachedNetworkArgs;
/// import com.pulumi.azure.devcenter.Project;
/// import com.pulumi.azure.devcenter.ProjectArgs;
/// import com.pulumi.azure.devcenter.DevBoxDefinition;
/// import com.pulumi.azure.devcenter.DevBoxDefinitionArgs;
/// import com.pulumi.azure.devcenter.ProjectPool;
/// import com.pulumi.azure.devcenter.ProjectPoolArgs;
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
///         var exampleDevCenter = new DevCenter("exampleDevCenter", DevCenterArgs.builder()
///             .name("example-dc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(DevCenterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkConnection = new NetworkConnection("exampleNetworkConnection", NetworkConnectionArgs.builder()
///             .name("example-dcnc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .subnetId(exampleSubnet.id())
///             .domainJoinType("AzureADJoin")
///             .build());
///
///         var exampleAttachedNetwork = new AttachedNetwork("exampleAttachedNetwork", AttachedNetworkArgs.builder()
///             .name("example-dcet")
///             .devCenterId(exampleDevCenter.id())
///             .networkConnectionId(exampleNetworkConnection.id())
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .name("example-dcp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .devCenterId(exampleDevCenter.id())
///             .build());
///
///         var exampleDevBoxDefinition = new DevBoxDefinition("exampleDevBoxDefinition", DevBoxDefinitionArgs.builder()
///             .name("example-dcet")
///             .location(example.location())
///             .devCenterId(exampleDevCenter.id())
///             .imageReferenceId(exampleDevCenter.id().applyValue(_id -> String.format("%s/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2", _id)))
///             .skuName("general_i_8c32gb256ssd_v2")
///             .build());
///
///         var exampleProjectPool = new ProjectPool("exampleProjectPool", ProjectPoolArgs.builder()
///             .name("example-dcpl")
///             .location(example.location())
///             .devCenterProjectId(exampleProject.id())
///             .devBoxDefinitionName(exampleDevBoxDefinition.name())
///             .localAdministratorEnabled(true)
///             .devCenterAttachedNetworkName(exampleAttachedNetwork.name())
///             .stopOnDisconnectGracePeriodMinutes(60)
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
///   exampleDevCenter:
///     type: azure:devcenter:DevCenter
///     name: example
///     properties:
///       name: example-dc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkConnection:
///     type: azure:devcenter:NetworkConnection
///     name: example
///     properties:
///       name: example-dcnc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       subnetId: ${exampleSubnet.id}
///       domainJoinType: AzureADJoin
///   exampleAttachedNetwork:
///     type: azure:devcenter:AttachedNetwork
///     name: example
///     properties:
///       name: example-dcet
///       devCenterId: ${exampleDevCenter.id}
///       networkConnectionId: ${exampleNetworkConnection.id}
///   exampleProject:
///     type: azure:devcenter:Project
///     name: example
///     properties:
///       name: example-dcp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       devCenterId: ${exampleDevCenter.id}
///   exampleDevBoxDefinition:
///     type: azure:devcenter:DevBoxDefinition
///     name: example
///     properties:
///       name: example-dcet
///       location: ${example.location}
///       devCenterId: ${exampleDevCenter.id}
///       imageReferenceId: ${exampleDevCenter.id}/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2
///       skuName: general_i_8c32gb256ssd_v2
///   exampleProjectPool:
///     type: azure:devcenter:ProjectPool
///     name: example
///     properties:
///       name: example-dcpl
///       location: ${example.location}
///       devCenterProjectId: ${exampleProject.id}
///       devBoxDefinitionName: ${exampleDevBoxDefinition.name}
///       localAdministratorEnabled: true
///       devCenterAttachedNetworkName: ${exampleAttachedNetwork.name}
///       stopOnDisconnectGracePeriodMinutes: 60
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevCenter` - 2025-02-01
///
/// ## Import
///
/// An existing Dev Center Project Pool can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/projectPool:ProjectPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevCenter/projects/project1/pools/pool1
/// ```
class ProjectPool extends pulumi.CustomResource {
  /// The name of the Dev Center Dev Box Definition.
  late final pulumi.Output<String> devBoxDefinitionName;
  /// The name of the Dev Center Attached Network in parent Project of the Dev Center Project Pool.
  late final pulumi.Output<String> devCenterAttachedNetworkName;
  /// The ID of the associated Dev Center Project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> devCenterProjectId;
  /// Specifies whether owners of Dev Boxes in the Dev Center Project Pool are added as local administrators on the Dev Box.
  late final pulumi.Output<bool> localAdministratorEnabled;
  /// The Azure Region where the Dev Center Project Pool should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A list of the regions of the managed Virtual Network. When specified, the Dev Center Project Pool will use a Microsoft managed network.
  ///
  /// > **Note:** Currently only one region can be specified for `managed_virtual_network_regions`.
  late final pulumi.Output<String?> managedVirtualNetworkRegions;
  /// Specifies the name of this Dev Center Project Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies whether Dev Boxes in the Pool will have SSO enabled or disabled. Defaults to `false`.
  late final pulumi.Output<bool?> singleSignOnEnabled;
  /// The specified time in minutes to wait before stopping a Dev Center Dev Box once disconnect is detected. Possible values are between `60` and `480`.
  late final pulumi.Output<int?> stopOnDisconnectGracePeriodMinutes;
  /// A mapping of tags which should be assigned to the Dev Center Project Pool.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ProjectPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectPool]. {@macro pulumi_devcenter_project_pool_project_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectPool(
    String name, {
    ProjectPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/projectPool:ProjectPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.devBoxDefinitionName = registerOutput<String>('devBoxDefinitionName');
    this.devCenterAttachedNetworkName = registerOutput<String>('devCenterAttachedNetworkName');
    this.devCenterProjectId = registerOutput<String>('devCenterProjectId');
    this.localAdministratorEnabled = registerOutput<bool>('localAdministratorEnabled');
    this.location = registerOutput<String>('location');
    this.managedVirtualNetworkRegions = registerOutput<String?>('managedVirtualNetworkRegions');
    this.name = registerOutput<String>('name');
    this.singleSignOnEnabled = registerOutput<bool?>('singleSignOnEnabled');
    this.stopOnDisconnectGracePeriodMinutes = registerOutput<int?>('stopOnDisconnectGracePeriodMinutes');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
