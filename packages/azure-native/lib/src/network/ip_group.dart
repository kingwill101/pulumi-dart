import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_group_args.dart';
import 'sub_resource_response.dart';

/// The IpGroups resource information.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate_IpGroups
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipGroup = new AzureNative.Network.IpGroup("ipGroup", new()
///     {
///         IpAddresses = new[]
///         {
///             "13.64.39.16/32",
///             "40.74.146.80/31",
///             "40.74.147.32/28",
///         },
///         IpGroupsName = "ipGroups1",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 		_, err := network.NewIpGroup(ctx, "ipGroup", &network.IpGroupArgs{
/// 			IpAddresses: pulumi.StringArray{
/// 				pulumi.String("13.64.39.16/32"),
/// 				pulumi.String("40.74.146.80/31"),
/// 				pulumi.String("40.74.147.32/28"),
/// 			},
/// 			IpGroupsName:      pulumi.String("ipGroups1"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// import com.pulumi.azurenative.network.IpGroup;
/// import com.pulumi.azurenative.network.IpGroupArgs;
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
///         var ipGroup = new IpGroup("ipGroup", IpGroupArgs.builder()
///             .ipAddresses(
///                 "13.64.39.16/32",
///                 "40.74.146.80/31",
///                 "40.74.147.32/28")
///             .ipGroupsName("ipGroups1")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("key1", "value1"))
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
/// const ipGroup = new azure_native.network.IpGroup("ipGroup", {
///     ipAddresses: [
///         "13.64.39.16/32",
///         "40.74.146.80/31",
///         "40.74.147.32/28",
///     ],
///     ipGroupsName: "ipGroups1",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ip_group = azure_native.network.IpGroup("ipGroup",
///     ip_addresses=[
///         "13.64.39.16/32",
///         "40.74.146.80/31",
///         "40.74.147.32/28",
///     ],
///     ip_groups_name="ipGroups1",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ipGroup:
///     type: azure-native:network:IpGroup
///     properties:
///       ipAddresses:
///         - 13.64.39.16/32
///         - 40.74.146.80/31
///         - 40.74.147.32/28
///       ipGroupsName: ipGroups1
///       location: West US
///       resourceGroupName: myResourceGroup
///       tags:
///         key1: value1
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
/// $ pulumi import azure-native:network:IpGroup ipGroups1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ipGroups/{ipGroupsName}
/// ```
class IpGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// List of references to Firewall Policies resources that this IpGroups is associated with.
  late final pulumi.Output<List<SubResourceResponse>> firewallPolicies;
  /// List of references to Firewall resources that this IpGroups is associated with.
  late final pulumi.Output<List<SubResourceResponse>> firewalls;
  /// IpAddresses/IpAddressPrefixes in the IpGroups resource.
  late final pulumi.Output<List<String>?> ipAddresses;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the IpGroups resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IpGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpGroup]. {@macro pulumi_network_ip_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpGroup(
    String name, {
    IpGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:IpGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.firewallPolicies = registerOutput<List<SubResourceResponse>>('firewallPolicies');
    this.firewalls = registerOutput<List<SubResourceResponse>>('firewalls');
    this.ipAddresses = registerOutput<List<String>?>('ipAddresses');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
