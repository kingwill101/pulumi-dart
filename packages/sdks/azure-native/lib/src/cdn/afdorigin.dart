import 'package:pulumi/pulumi.dart' as pulumi;
import 'afdorigin_args.dart';
import 'resource_reference_response.dart';
import 'shared_private_link_resource_properties_response.dart';
import 'system_data_response.dart';

/// Azure Front Door origin is the source of the content being delivered via Azure Front Door. When the edge nodes represented by an endpoint do not have the requested content cached, they attempt to fetch it from one or more of the configured origins.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AFDOrigins_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var afdOrigin = new AzureNative.Cdn.AFDOrigin("afdOrigin", new()
///     {
///         EnabledState = AzureNative.Cdn.EnabledState.Enabled,
///         HostName = "host1.blob.core.windows.net",
///         HttpPort = 80,
///         HttpsPort = 443,
///         OriginGroupName = "origingroup1",
///         OriginHostHeader = "host1.foo.com",
///         OriginName = "origin1",
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
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
/// 		_, err := cdn.NewAFDOrigin(ctx, "afdOrigin", &cdn.AFDOriginArgs{
/// 			EnabledState:      pulumi.String(cdn.EnabledStateEnabled),
/// 			HostName:          pulumi.String("host1.blob.core.windows.net"),
/// 			HttpPort:          pulumi.Int(80),
/// 			HttpsPort:         pulumi.Int(443),
/// 			OriginGroupName:   pulumi.String("origingroup1"),
/// 			OriginHostHeader:  pulumi.String("host1.foo.com"),
/// 			OriginName:        pulumi.String("origin1"),
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
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
/// import com.pulumi.azurenative.cdn.AFDOrigin;
/// import com.pulumi.azurenative.cdn.AFDOriginArgs;
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
///         var afdOrigin = new AFDOrigin("afdOrigin", AFDOriginArgs.builder()
///             .enabledState("Enabled")
///             .hostName("host1.blob.core.windows.net")
///             .httpPort(80)
///             .httpsPort(443)
///             .originGroupName("origingroup1")
///             .originHostHeader("host1.foo.com")
///             .originName("origin1")
///             .profileName("profile1")
///             .resourceGroupName("RG")
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
/// const afdOrigin = new azure_native.cdn.AFDOrigin("afdOrigin", {
///     enabledState: azure_native.cdn.EnabledState.Enabled,
///     hostName: "host1.blob.core.windows.net",
///     httpPort: 80,
///     httpsPort: 443,
///     originGroupName: "origingroup1",
///     originHostHeader: "host1.foo.com",
///     originName: "origin1",
///     profileName: "profile1",
///     resourceGroupName: "RG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// afd_origin = azure_native.cdn.AFDOrigin("afdOrigin",
///     enabled_state=azure_native.cdn.EnabledState.ENABLED,
///     host_name="host1.blob.core.windows.net",
///     http_port=80,
///     https_port=443,
///     origin_group_name="origingroup1",
///     origin_host_header="host1.foo.com",
///     origin_name="origin1",
///     profile_name="profile1",
///     resource_group_name="RG")
///
/// ```
///
/// ```yaml
/// resources:
///   afdOrigin:
///     type: azure-native:cdn:AFDOrigin
///     properties:
///       enabledState: Enabled
///       hostName: host1.blob.core.windows.net
///       httpPort: 80
///       httpsPort: 443
///       originGroupName: origingroup1
///       originHostHeader: host1.foo.com
///       originName: origin1
///       profileName: profile1
///       resourceGroupName: RG
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
/// $ pulumi import azure-native:cdn:AFDOrigin origin1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/originGroups/{originGroupName}/origins/{originName}
/// ```
class AFDOrigin extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource reference to the Azure origin resource.
  late final pulumi.Output<ResourceReferenceResponse?> azureOrigin;
  late final pulumi.Output<String> deploymentStatus;
  /// Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  late final pulumi.Output<String?> enabledState;
  /// Whether to enable certificate name check at origin level
  late final pulumi.Output<bool?> enforceCertificateNameCheck;
  /// The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  late final pulumi.Output<String?> hostName;
  /// The value of the HTTP port. Must be between 1 and 65535.
  late final pulumi.Output<int?> httpPort;
  /// The value of the HTTPS port. Must be between 1 and 65535.
  late final pulumi.Output<int?> httpsPort;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The name of the origin group which contains this origin.
  late final pulumi.Output<String> originGroupName;
  /// The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure Front Door origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  late final pulumi.Output<String?> originHostHeader;
  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  late final pulumi.Output<int?> priority;
  /// Provisioning status
  late final pulumi.Output<String> provisioningState;
  /// The properties of the private link resource for private origin.
  late final pulumi.Output<SharedPrivateLinkResourcePropertiesResponse?> sharedPrivateLinkResource;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  late final pulumi.Output<int?> weight;

  /// Creates a new [AFDOrigin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AFDOrigin]. {@macro pulumi_cdn_afdorigin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AFDOrigin(
    String name, {
    AFDOriginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:AFDOrigin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureOrigin = registerOutput<ResourceReferenceResponse?>('azureOrigin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentStatus = registerOutput<String>('deploymentStatus');
    enabledState = registerOutput<String?>('enabledState');
    enforceCertificateNameCheck = registerOutput<bool?>('enforceCertificateNameCheck');
    hostName = registerOutput<String?>('hostName');
    httpPort = registerOutput<int?>('httpPort');
    httpsPort = registerOutput<int?>('httpsPort');
    this.name = registerOutput<String>('name');
    originGroupName = registerOutput<String>('originGroupName');
    originHostHeader = registerOutput<String?>('originHostHeader');
    priority = registerOutput<int?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    sharedPrivateLinkResource = registerOutput<SharedPrivateLinkResourcePropertiesResponse?>('sharedPrivateLinkResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SharedPrivateLinkResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    weight = registerOutput<int?>('weight');
  }
}
