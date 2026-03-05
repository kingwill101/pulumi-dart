import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_args.dart';
import 'bastion_host_properties_format_response_network_acls.dart';
import 'sku_response.dart';
import 'sub_resource_response.dart';

/// Bastion Host resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Bastion Host
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bastionHost = new AzureNative.Network.BastionHost("bastionHost", new()
///     {
///         BastionHostName = "bastionhosttenant",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.BastionHostIPConfigurationArgs
///             {
///                 Name = "bastionHostIpConfiguration",
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewBastionHost(ctx, "bastionHost", &network.BastionHostArgs{
/// 			BastionHostName: pulumi.String("bastionhosttenant"),
/// 			IpConfigurations: network.BastionHostIPConfigurationArray{
/// 				&network.BastionHostIPConfigurationArgs{
/// 					Name: pulumi.String("bastionHostIpConfiguration"),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.BastionHost;
/// import com.pulumi.azurenative.network.BastionHostArgs;
/// import com.pulumi.azurenative.network.inputs.BastionHostIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var bastionHost = new BastionHost("bastionHost", BastionHostArgs.builder()
///             .bastionHostName("bastionhosttenant")
///             .ipConfigurations(BastionHostIPConfigurationArgs.builder()
///                 .name("bastionHostIpConfiguration")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
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
/// const bastionHost = new azure_native.network.BastionHost("bastionHost", {
///     bastionHostName: "bastionhosttenant",
///     ipConfigurations: [{
///         name: "bastionHostIpConfiguration",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///         },
///     }],
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bastion_host = azure_native.network.BastionHost("bastionHost",
///     bastion_host_name="bastionhosttenant",
///     ip_configurations=[{
///         "name": "bastionHostIpConfiguration",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///         },
///     }],
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   bastionHost:
///     type: azure-native:network:BastionHost
///     properties:
///       bastionHostName: bastionhosttenant
///       ipConfigurations:
///         - name: bastionHostIpConfiguration
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Bastion Host With Private Only
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bastionHost = new AzureNative.Network.BastionHost("bastionHost", new()
///     {
///         BastionHostName = "bastionhosttenant",
///         EnablePrivateOnlyBastion = true,
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.BastionHostIPConfigurationArgs
///             {
///                 Name = "bastionHostIpConfiguration",
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewBastionHost(ctx, "bastionHost", &network.BastionHostArgs{
/// 			BastionHostName:          pulumi.String("bastionhosttenant"),
/// 			EnablePrivateOnlyBastion: pulumi.Bool(true),
/// 			IpConfigurations: network.BastionHostIPConfigurationArray{
/// 				&network.BastionHostIPConfigurationArgs{
/// 					Name: pulumi.String("bastionHostIpConfiguration"),
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.BastionHost;
/// import com.pulumi.azurenative.network.BastionHostArgs;
/// import com.pulumi.azurenative.network.inputs.BastionHostIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var bastionHost = new BastionHost("bastionHost", BastionHostArgs.builder()
///             .bastionHostName("bastionhosttenant")
///             .enablePrivateOnlyBastion(true)
///             .ipConfigurations(BastionHostIPConfigurationArgs.builder()
///                 .name("bastionHostIpConfiguration")
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
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
/// const bastionHost = new azure_native.network.BastionHost("bastionHost", {
///     bastionHostName: "bastionhosttenant",
///     enablePrivateOnlyBastion: true,
///     ipConfigurations: [{
///         name: "bastionHostIpConfiguration",
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///         },
///     }],
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bastion_host = azure_native.network.BastionHost("bastionHost",
///     bastion_host_name="bastionhosttenant",
///     enable_private_only_bastion=True,
///     ip_configurations=[{
///         "name": "bastionHostIpConfiguration",
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///         },
///     }],
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   bastionHost:
///     type: azure-native:network:BastionHost
///     properties:
///       bastionHostName: bastionhosttenant
///       enablePrivateOnlyBastion: true
///       ipConfigurations:
///         - name: bastionHostIpConfiguration
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Bastion Host With Zones
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bastionHost = new AzureNative.Network.BastionHost("bastionHost", new()
///     {
///         BastionHostName = "bastionhosttenant",
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.BastionHostIPConfigurationArgs
///             {
///                 Name = "bastionHostIpConfiguration",
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewBastionHost(ctx, "bastionHost", &network.BastionHostArgs{
/// 			BastionHostName: pulumi.String("bastionhosttenant"),
/// 			IpConfigurations: network.BastionHostIPConfigurationArray{
/// 				&network.BastionHostIPConfigurationArgs{
/// 					Name: pulumi.String("bastionHostIpConfiguration"),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.BastionHost;
/// import com.pulumi.azurenative.network.BastionHostArgs;
/// import com.pulumi.azurenative.network.inputs.BastionHostIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var bastionHost = new BastionHost("bastionHost", BastionHostArgs.builder()
///             .bastionHostName("bastionhosttenant")
///             .ipConfigurations(BastionHostIPConfigurationArgs.builder()
///                 .name("bastionHostIpConfiguration")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
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
/// const bastionHost = new azure_native.network.BastionHost("bastionHost", {
///     bastionHostName: "bastionhosttenant",
///     ipConfigurations: [{
///         name: "bastionHostIpConfiguration",
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///         },
///     }],
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bastion_host = azure_native.network.BastionHost("bastionHost",
///     bastion_host_name="bastionhosttenant",
///     ip_configurations=[{
///         "name": "bastionHostIpConfiguration",
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet",
///         },
///     }],
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   bastionHost:
///     type: azure-native:network:BastionHost
///     properties:
///       bastionHostName: bastionhosttenant
///       ipConfigurations:
///         - name: bastionHostIpConfiguration
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/pipName
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet2/subnets/BastionHostSubnet
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Developer Bastion Host
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bastionHost = new AzureNative.Network.BastionHost("bastionHost", new()
///     {
///         BastionHostName = "bastionhostdeveloper",
///         IpConfigurations = new[] {},
///         NetworkAcls = new AzureNative.Network.Inputs.BastionHostPropertiesFormatNetworkAclsArgs
///         {
///             IpRules = new[]
///             {
///                 new AzureNative.Network.Inputs.IPRuleArgs
///                 {
///                     AddressPrefix = "1.1.1.1/16",
///                 },
///             },
///         },
///         ResourceGroupName = "rg2",
///         VirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/vnet2",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewBastionHost(ctx, "bastionHost", &network.BastionHostArgs{
/// 			BastionHostName:  pulumi.String("bastionhostdeveloper"),
/// 			IpConfigurations: network.BastionHostIPConfigurationArray{},
/// 			NetworkAcls: &network.BastionHostPropertiesFormatNetworkAclsArgs{
/// 				IpRules: network.IPRuleArray{
/// 					&network.IPRuleArgs{
/// 						AddressPrefix: pulumi.String("1.1.1.1/16"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg2"),
/// 			VirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/vnet2"),
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
/// import com.pulumi.azurenative.network.BastionHost;
/// import com.pulumi.azurenative.network.BastionHostArgs;
/// import com.pulumi.azurenative.network.inputs.BastionHostPropertiesFormatNetworkAclsArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var bastionHost = new BastionHost("bastionHost", BastionHostArgs.builder()
///             .bastionHostName("bastionhostdeveloper")
///             .ipConfigurations()
///             .networkAcls(BastionHostPropertiesFormatNetworkAclsArgs.builder()
///                 .ipRules(IPRuleArgs.builder()
///                     .addressPrefix("1.1.1.1/16")
///                     .build())
///                 .build())
///             .resourceGroupName("rg2")
///             .virtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/vnet2")
///                 .build())
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
/// const bastionHost = new azure_native.network.BastionHost("bastionHost", {
///     bastionHostName: "bastionhostdeveloper",
///     ipConfigurations: [],
///     networkAcls: {
///         ipRules: [{
///             addressPrefix: "1.1.1.1/16",
///         }],
///     },
///     resourceGroupName: "rg2",
///     virtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bastion_host = azure_native.network.BastionHost("bastionHost",
///     bastion_host_name="bastionhostdeveloper",
///     ip_configurations=[],
///     network_acls={
///         "ip_rules": [{
///             "address_prefix": "1.1.1.1/16",
///         }],
///     },
///     resource_group_name="rg2",
///     virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/vnet2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   bastionHost:
///     type: azure-native:network:BastionHost
///     properties:
///       bastionHostName: bastionhostdeveloper
///       ipConfigurations: []
///       networkAcls:
///         ipRules:
///           - addressPrefix: 1.1.1.1/16
///       resourceGroupName: rg2
///       virtualNetwork:
///         id: /subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/vnet2
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
/// $ pulumi import azure-native:network:BastionHost bastionhostdeveloper /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}
/// ```
class BastionHost extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Enable/Disable Copy/Paste feature of the Bastion Host resource.
  late final pulumi.Output<bool?> disableCopyPaste;
  /// FQDN for the endpoint on which bastion host is accessible.
  late final pulumi.Output<String?> dnsName;
  /// Enable/Disable File Copy feature of the Bastion Host resource.
  late final pulumi.Output<bool?> enableFileCopy;
  /// Enable/Disable IP Connect feature of the Bastion Host resource.
  late final pulumi.Output<bool?> enableIpConnect;
  /// Enable/Disable Kerberos feature of the Bastion Host resource.
  late final pulumi.Output<bool?> enableKerberos;
  /// Enable/Disable Private Only feature of the Bastion Host resource.
  late final pulumi.Output<bool?> enablePrivateOnlyBastion;
  /// Enable/Disable Session Recording feature of the Bastion Host resource.
  late final pulumi.Output<bool?> enableSessionRecording;
  /// Enable/Disable Shareable Link of the Bastion Host resource.
  late final pulumi.Output<bool?> enableShareableLink;
  /// Enable/Disable Tunneling feature of the Bastion Host resource.
  late final pulumi.Output<bool?> enableTunneling;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// IP configuration of the Bastion Host resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipConfigurations;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<BastionHostPropertiesFormatResponseNetworkAcls?> networkAcls;
  /// The provisioning state of the bastion host resource.
  late final pulumi.Output<String> provisioningState;
  /// The scale units for the Bastion Host resource.
  late final pulumi.Output<int?> scaleUnits;
  /// The sku of this Bastion Host.
  late final pulumi.Output<SkuResponse?> sku;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Reference to an existing virtual network required for Developer Bastion Host only.
  late final pulumi.Output<SubResourceResponse?> virtualNetwork;
  /// A list of availability zones denoting where the resource needs to come from.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [BastionHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BastionHost]. {@macro pulumi_network_bastion_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BastionHost(
    String name, {
    BastionHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:BastionHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disableCopyPaste = registerOutput<bool?>('disableCopyPaste');
    dnsName = registerOutput<String?>('dnsName');
    enableFileCopy = registerOutput<bool?>('enableFileCopy');
    enableIpConnect = registerOutput<bool?>('enableIpConnect');
    enableKerberos = registerOutput<bool?>('enableKerberos');
    enablePrivateOnlyBastion = registerOutput<bool?>('enablePrivateOnlyBastion');
    enableSessionRecording = registerOutput<bool?>('enableSessionRecording');
    enableShareableLink = registerOutput<bool?>('enableShareableLink');
    enableTunneling = registerOutput<bool?>('enableTunneling');
    etag = registerOutput<String>('etag');
    ipConfigurations = registerOutput<List<Map<String, dynamic>>?>('ipConfigurations');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<BastionHostPropertiesFormatResponseNetworkAcls?>('networkAcls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BastionHostPropertiesFormatResponseNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    scaleUnits = registerOutput<int?>('scaleUnits');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse?>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones');
  }
}
