import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_args.dart';
import 'system_data_response.dart';

/// CDN origin is the source of the content being delivered via CDN. When the edge nodes represented by an endpoint do not have the requested content cached, they attempt to fetch it from one or more of the configured origins.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Origins_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var origin = new AzureNative.Cdn.Origin("origin", new()
///     {
///         Enabled = true,
///         EndpointName = "endpoint1",
///         HostName = "www.someDomain.net",
///         HttpPort = 80,
///         HttpsPort = 443,
///         OriginHostHeader = "www.someDomain.net",
///         OriginName = "www-someDomain-net",
///         Priority = 1,
///         PrivateLinkApprovalMessage = "Please approve the connection request for this Private Link",
///         PrivateLinkLocation = "eastus",
///         PrivateLinkResourceId = "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1",
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         Weight = 50,
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewOrigin(ctx, "origin", &cdn.OriginArgs{
/// 			Enabled:                    pulumi.Bool(true),
/// 			EndpointName:               pulumi.String("endpoint1"),
/// 			HostName:                   pulumi.String("www.someDomain.net"),
/// 			HttpPort:                   pulumi.Int(80),
/// 			HttpsPort:                  pulumi.Int(443),
/// 			OriginHostHeader:           pulumi.String("www.someDomain.net"),
/// 			OriginName:                 pulumi.String("www-someDomain-net"),
/// 			Priority:                   pulumi.Int(1),
/// 			PrivateLinkApprovalMessage: pulumi.String("Please approve the connection request for this Private Link"),
/// 			PrivateLinkLocation:        pulumi.String("eastus"),
/// 			PrivateLinkResourceId:      pulumi.String("/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1"),
/// 			ProfileName:                pulumi.String("profile1"),
/// 			ResourceGroupName:          pulumi.String("RG"),
/// 			Weight:                     pulumi.Int(50),
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
/// import com.pulumi.azurenative.cdn.Origin;
/// import com.pulumi.azurenative.cdn.OriginArgs;
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
///         var origin = new Origin("origin", OriginArgs.builder()
///             .enabled(true)
///             .endpointName("endpoint1")
///             .hostName("www.someDomain.net")
///             .httpPort(80)
///             .httpsPort(443)
///             .originHostHeader("www.someDomain.net")
///             .originName("www-someDomain-net")
///             .priority(1)
///             .privateLinkApprovalMessage("Please approve the connection request for this Private Link")
///             .privateLinkLocation("eastus")
///             .privateLinkResourceId("/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1")
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .weight(50)
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
/// const origin = new azure_native.cdn.Origin("origin", {
///     enabled: true,
///     endpointName: "endpoint1",
///     hostName: "www.someDomain.net",
///     httpPort: 80,
///     httpsPort: 443,
///     originHostHeader: "www.someDomain.net",
///     originName: "www-someDomain-net",
///     priority: 1,
///     privateLinkApprovalMessage: "Please approve the connection request for this Private Link",
///     privateLinkLocation: "eastus",
///     privateLinkResourceId: "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1",
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     weight: 50,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// origin = azure_native.cdn.Origin("origin",
///     enabled=True,
///     endpoint_name="endpoint1",
///     host_name="www.someDomain.net",
///     http_port=80,
///     https_port=443,
///     origin_host_header="www.someDomain.net",
///     origin_name="www-someDomain-net",
///     priority=1,
///     private_link_approval_message="Please approve the connection request for this Private Link",
///     private_link_location="eastus",
///     private_link_resource_id="/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1",
///     profile_name="profile1",
///     resource_group_name="RG",
///     weight=50)
///
/// ```
///
/// ```yaml
/// resources:
///   origin:
///     type: azure-native:cdn:Origin
///     properties:
///       enabled: true
///       endpointName: endpoint1
///       hostName: www.someDomain.net
///       httpPort: 80
///       httpsPort: 443
///       originHostHeader: www.someDomain.net
///       originName: www-someDomain-net
///       priority: 1
///       privateLinkApprovalMessage: Please approve the connection request for this Private Link
///       privateLinkLocation: eastus
///       privateLinkResourceId: /subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1
///       profileName: profile1
///       resourceGroupName: RG
///       weight: 50
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
/// $ pulumi import azure-native:cdn:Origin www-someDomain-net /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins/{originName}
/// ```
class Origin extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Origin is enabled for load balancing or not
  late final pulumi.Output<bool?> enabled;

  /// The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  late final pulumi.Output<String> hostName;

  /// The value of the HTTP port. Must be between 1 and 65535.
  late final pulumi.Output<int?> httpPort;

  /// The value of the HTTPS port. Must be between 1 and 65535.
  late final pulumi.Output<int?> httpsPort;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  late final pulumi.Output<String?> originHostHeader;

  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  late final pulumi.Output<int?> priority;

  /// The approval status for the connection to the Private Link
  late final pulumi.Output<String> privateEndpointStatus;

  /// The Alias of the Private Link resource. Populating this optional field indicates that this origin is 'Private'
  late final pulumi.Output<String?> privateLinkAlias;

  /// A custom message to be included in the approval request to connect to the Private Link.
  late final pulumi.Output<String?> privateLinkApprovalMessage;

  /// The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  late final pulumi.Output<String?> privateLinkLocation;

  /// The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  late final pulumi.Output<String?> privateLinkResourceId;

  /// Provisioning status of the origin.
  late final pulumi.Output<String> provisioningState;

  /// Resource status of the origin.
  late final pulumi.Output<String> resourceState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  late final pulumi.Output<int?> weight;

  /// Creates a new [Origin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Origin]. {@macro pulumi_cdn_origin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Origin(String name, {OriginArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:cdn:Origin',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enabled = registerOutput<bool?>('enabled');
    hostName = registerOutput<String>('hostName');
    httpPort = registerOutput<int?>('httpPort');
    httpsPort = registerOutput<int?>('httpsPort');
    this.name = registerOutput<String>('name');
    originHostHeader = registerOutput<String?>('originHostHeader');
    priority = registerOutput<int?>('priority');
    privateEndpointStatus = registerOutput<String>('privateEndpointStatus');
    privateLinkAlias = registerOutput<String?>('privateLinkAlias');
    privateLinkApprovalMessage = registerOutput<String?>(
      'privateLinkApprovalMessage',
    );
    privateLinkLocation = registerOutput<String?>('privateLinkLocation');
    privateLinkResourceId = registerOutput<String?>('privateLinkResourceId');
    provisioningState = registerOutput<String>('provisioningState');
    resourceState = registerOutput<String>('resourceState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    weight = registerOutput<int?>('weight');
  }
}
