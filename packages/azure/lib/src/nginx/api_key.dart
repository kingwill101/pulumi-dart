import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_args.dart';

/// Manages the Dataplane API Key for an Nginx Deployment.
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
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationMethod: "Static",
///     sku: "Standard",
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             name: "NGINX.NGINXPLUS/nginxDeployments",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const exampleDeployment = new azure.nginx.Deployment("example", {
///     name: "example-nginx",
///     resourceGroupName: example.name,
///     sku: "standardv3_Monthly",
///     location: example.location,
///     automaticUpgradeChannel: "stable",
///     frontendPublic: {
///         ipAddresses: [examplePublicIp.id],
///     },
///     networkInterfaces: [{
///         subnetId: exampleSubnet.id,
///     }],
///     capacity: 20,
///     email: "user@test.com",
/// });
/// const exampleApiKey = new azure.nginx.ApiKey("example", {
///     name: "example-api-key",
///     nginxDeploymentId: exampleDeployment.id,
///     secretText: "727c8642-6807-4254-9d02-ae93bfad21de",
///     endDateTime: "2027-01-01T00:00:00Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_method="Static",
///     sku="Standard",
///     tags={
///         "environment": "Production",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "name": "NGINX.NGINXPLUS/nginxDeployments",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// example_deployment = azure.nginx.Deployment("example",
///     name="example-nginx",
///     resource_group_name=example.name,
///     sku="standardv3_Monthly",
///     location=example.location,
///     automatic_upgrade_channel="stable",
///     frontend_public={
///         "ip_addresses": [example_public_ip.id],
///     },
///     network_interfaces=[{
///         "subnet_id": example_subnet.id,
///     }],
///     capacity=20,
///     email="user@test.com")
/// example_api_key = azure.nginx.ApiKey("example",
///     name="example-api-key",
///     nginx_deployment_id=example_deployment.id,
///     secret_text="727c8642-6807-4254-9d02-ae93bfad21de",
///     end_date_time="2027-01-01T00:00:00Z")
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
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///         Tags =
///         {
///             { "environment", "Production" },
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
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "NGINX.NGINXPLUS/nginxDeployments",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleDeployment = new Azure.Nginx.Deployment("example", new()
///     {
///         Name = "example-nginx",
///         ResourceGroupName = example.Name,
///         Sku = "standardv3_Monthly",
///         Location = example.Location,
///         AutomaticUpgradeChannel = "stable",
///         FrontendPublic = new Azure.Nginx.Inputs.DeploymentFrontendPublicArgs
///         {
///             IpAddresses = new[]
///             {
///                 examplePublicIp.Id,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Nginx.Inputs.DeploymentNetworkInterfaceArgs
///             {
///                 SubnetId = exampleSubnet.Id,
///             },
///         },
///         Capacity = 20,
///         Email = "user@test.com",
///     });
///
///     var exampleApiKey = new Azure.Nginx.ApiKey("example", new()
///     {
///         Name = "example-api-key",
///         NginxDeploymentId = exampleDeployment.Id,
///         SecretText = "727c8642-6807-4254-9d02-ae93bfad21de",
///         EndDateTime = "2027-01-01T00:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/nginx"
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
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("NGINX.NGINXPLUS/nginxDeployments"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDeployment, err := nginx.NewDeployment(ctx, "example", &nginx.DeploymentArgs{
/// 			Name:                    pulumi.String("example-nginx"),
/// 			ResourceGroupName:       example.Name,
/// 			Sku:                     pulumi.String("standardv3_Monthly"),
/// 			Location:                example.Location,
/// 			AutomaticUpgradeChannel: pulumi.String("stable"),
/// 			FrontendPublic: &nginx.DeploymentFrontendPublicArgs{
/// 				IpAddresses: pulumi.StringArray{
/// 					examplePublicIp.ID(),
/// 				},
/// 			},
/// 			NetworkInterfaces: nginx.DeploymentNetworkInterfaceArray{
/// 				&nginx.DeploymentNetworkInterfaceArgs{
/// 					SubnetId: exampleSubnet.ID(),
/// 				},
/// 			},
/// 			Capacity: pulumi.Int(20),
/// 			Email:    pulumi.String("user@test.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nginx.NewApiKey(ctx, "example", &nginx.ApiKeyArgs{
/// 			Name:              pulumi.String("example-api-key"),
/// 			NginxDeploymentId: exampleDeployment.ID(),
/// 			SecretText:        pulumi.String("727c8642-6807-4254-9d02-ae93bfad21de"),
/// 			EndDateTime:       pulumi.String("2027-01-01T00:00:00Z"),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.nginx.Deployment;
/// import com.pulumi.azure.nginx.DeploymentArgs;
/// import com.pulumi.azure.nginx.inputs.DeploymentFrontendPublicArgs;
/// import com.pulumi.azure.nginx.inputs.DeploymentNetworkInterfaceArgs;
/// import com.pulumi.azure.nginx.ApiKey;
/// import com.pulumi.azure.nginx.ApiKeyArgs;
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
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .tags(Map.of("environment", "Production"))
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
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("NGINX.NGINXPLUS/nginxDeployments")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleDeployment = new Deployment("exampleDeployment", DeploymentArgs.builder()
///             .name("example-nginx")
///             .resourceGroupName(example.name())
///             .sku("standardv3_Monthly")
///             .location(example.location())
///             .automaticUpgradeChannel("stable")
///             .frontendPublic(DeploymentFrontendPublicArgs.builder()
///                 .ipAddresses(examplePublicIp.id())
///                 .build())
///             .networkInterfaces(DeploymentNetworkInterfaceArgs.builder()
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .capacity(20)
///             .email("user@test.com")
///             .build());
///
///         var exampleApiKey = new ApiKey("exampleApiKey", ApiKeyArgs.builder()
///             .name("example-api-key")
///             .nginxDeploymentId(exampleDeployment.id())
///             .secretText("727c8642-6807-4254-9d02-ae93bfad21de")
///             .endDateTime("2027-01-01T00:00:00Z")
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
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationMethod: Static
///       sku: Standard
///       tags:
///         environment: Production
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
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: delegation
///           serviceDelegation:
///             name: NGINX.NGINXPLUS/nginxDeployments
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleDeployment:
///     type: azure:nginx:Deployment
///     name: example
///     properties:
///       name: example-nginx
///       resourceGroupName: ${example.name}
///       sku: standardv3_Monthly
///       location: ${example.location}
///       automaticUpgradeChannel: stable
///       frontendPublic:
///         ipAddresses:
///           - ${examplePublicIp.id}
///       networkInterfaces:
///         - subnetId: ${exampleSubnet.id}
///       capacity: 20
///       email: user@test.com
///   exampleApiKey:
///     type: azure:nginx:ApiKey
///     name: example
///     properties:
///       name: example-api-key
///       nginxDeploymentId: ${exampleDeployment.id}
///       secretText: 727c8642-6807-4254-9d02-ae93bfad21de
///       endDateTime: 2027-01-01T00:00:00Z
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Nginx.NginxPlus` - 2024-11-01-preview
///
/// ## Import
///
/// An NGINX Dataplane API Key can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:nginx/apiKey:ApiKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Nginx.NginxPlus/nginxDeployments/deploy1/apiKeys/key1
/// ```
class ApiKey extends pulumi.CustomResource {
  /// The RFC3339 formatted date-time after which this Dataplane API Key is no longer valid. The maximum value is now+2y.
  late final pulumi.Output<String> endDateTime;
  /// The first three characters of the secret text to help identify it in use.
  late final pulumi.Output<String> hint;
  /// The name of the NGINX Dataplane API Key. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the NGINX Deployment that the API key is associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> nginxDeploymentId;
  /// The value used as the Dataplane API Key. The API key requirements can be found in the [NGINXaaS Documentation](https://docs.nginx.com/nginxaas/azure/quickstart/loadbalancer-kubernetes/#create-an-nginxaas-data-plane-api-key).
  late final pulumi.Output<String> secretText;

  /// Creates a new [ApiKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiKey]. {@macro pulumi_nginx_api_key_api_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiKey(
    String name, {
    ApiKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:nginx/apiKey:ApiKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endDateTime = registerOutput<String>('endDateTime');
    this.hint = registerOutput<String>('hint');
    this.name = registerOutput<String>('name');
    this.nginxDeploymentId = registerOutput<String>('nginxDeploymentId');
    this.secretText = registerOutput<String>('secretText');
  }
}
