import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_ipprefix_args.dart';
import 'extended_location_response.dart';
import 'sub_resource_response.dart';

/// Custom IP prefix resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create custom IP prefix allocation method
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customIPPrefix = new AzureNative.Network.CustomIPPrefix("customIPPrefix", new()
///     {
///         Cidr = "0.0.0.0/24",
///         CustomIpPrefixName = "test-customipprefix",
///         Location = "westus",
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
/// 		_, err := network.NewCustomIPPrefix(ctx, "customIPPrefix", &network.CustomIPPrefixArgs{
/// 			Cidr:               pulumi.String("0.0.0.0/24"),
/// 			CustomIpPrefixName: pulumi.String("test-customipprefix"),
/// 			Location:           pulumi.String("westus"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.CustomIPPrefix;
/// import com.pulumi.azurenative.network.CustomIPPrefixArgs;
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
///         var customIPPrefix = new CustomIPPrefix("customIPPrefix", CustomIPPrefixArgs.builder()
///             .cidr("0.0.0.0/24")
///             .customIpPrefixName("test-customipprefix")
///             .location("westus")
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
/// const customIPPrefix = new azure_native.network.CustomIPPrefix("customIPPrefix", {
///     cidr: "0.0.0.0/24",
///     customIpPrefixName: "test-customipprefix",
///     location: "westus",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_ip_prefix = azure_native.network.CustomIPPrefix("customIPPrefix",
///     cidr="0.0.0.0/24",
///     custom_ip_prefix_name="test-customipprefix",
///     location="westus",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   customIPPrefix:
///     type: azure-native:network:CustomIPPrefix
///     properties:
///       cidr: 0.0.0.0/24
///       customIpPrefixName: test-customipprefix
///       location: westus
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:CustomIPPrefix test-customipprefix /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/customIpPrefixes/{customIpPrefixName}
/// ```
class CustomIPPrefix extends pulumi.CustomResource {
  /// The ASN for CIDR advertising. Should be an integer as string.
  late final pulumi.Output<String?> asn;
  /// Authorization message for WAN validation.
  late final pulumi.Output<String?> authorizationMessage;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The list of all Children for IPv6 /48 CustomIpPrefix.
  late final pulumi.Output<List<SubResourceResponse>> childCustomIpPrefixes;
  /// The prefix range in CIDR notation. Should include the start address and the prefix length.
  late final pulumi.Output<String?> cidr;
  /// The commissioned state of the Custom IP Prefix.
  late final pulumi.Output<String?> commissionedState;
  /// The Parent CustomIpPrefix for IPv6 /64 CustomIpPrefix.
  late final pulumi.Output<SubResourceResponse?> customIpPrefixParent;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Whether to do express route advertise.
  late final pulumi.Output<bool?> expressRouteAdvertise;
  /// The extended location of the custom IP prefix.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The reason why resource is in failed state.
  late final pulumi.Output<String> failedReason;
  /// The Geo for CIDR advertising. Should be an Geo code.
  late final pulumi.Output<String?> geo;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Whether to Advertise the range to Internet.
  late final pulumi.Output<bool?> noInternetAdvertise;
  /// Type of custom IP prefix. Should be Singular, Parent, or Child.
  late final pulumi.Output<String?> prefixType;
  /// The provisioning state of the custom IP prefix resource.
  late final pulumi.Output<String> provisioningState;
  /// The list of all referenced PublicIpPrefixes.
  late final pulumi.Output<List<SubResourceResponse>> publicIpPrefixes;
  /// The resource GUID property of the custom IP prefix resource.
  late final pulumi.Output<String> resourceGuid;
  /// Signed message for WAN validation.
  late final pulumi.Output<String?> signedMessage;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [CustomIPPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomIPPrefix]. {@macro pulumi_network_custom_ipprefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomIPPrefix(
    String name, {
    CustomIPPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:CustomIPPrefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.asn = registerOutput<String?>('asn');
    this.authorizationMessage = registerOutput<String?>('authorizationMessage');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.childCustomIpPrefixes = registerOutput<List<SubResourceResponse>>('childCustomIpPrefixes');
    this.cidr = registerOutput<String?>('cidr');
    this.commissionedState = registerOutput<String?>('commissionedState');
    this.customIpPrefixParent = registerOutput<SubResourceResponse?>('customIpPrefixParent');
    this.etag = registerOutput<String>('etag');
    this.expressRouteAdvertise = registerOutput<bool?>('expressRouteAdvertise');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.failedReason = registerOutput<String>('failedReason');
    this.geo = registerOutput<String?>('geo');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.noInternetAdvertise = registerOutput<bool?>('noInternetAdvertise');
    this.prefixType = registerOutput<String?>('prefixType');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicIpPrefixes = registerOutput<List<SubResourceResponse>>('publicIpPrefixes');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.signedMessage = registerOutput<String?>('signedMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
