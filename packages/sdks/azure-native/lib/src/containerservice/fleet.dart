import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_args.dart';
import 'fleet_hub_profile_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// The Fleet resource.
///
/// Uses Azure REST API version 2024-05-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15-preview.
///
/// Other available API versions: 2022-06-02-preview, 2022-07-02-preview, 2022-09-02-preview, 2023-03-15-preview, 2023-06-15-preview, 2023-08-15-preview, 2023-10-15, 2024-02-02-preview, 2024-04-01, 2025-03-01, 2025-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a Fleet resource with a long running operation.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fleet = new AzureNative.ContainerService.Fleet("fleet", new()
///     {
///         FleetName = "fleet1",
///         HubProfile = new AzureNative.ContainerService.Inputs.FleetHubProfileArgs
///         {
///             AgentProfile = new AzureNative.ContainerService.Inputs.AgentProfileArgs
///             {
///                 VmSize = "Standard_DS1",
///             },
///             DnsPrefix = "dnsprefix1",
///         },
///         Location = "East US",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewFleet(ctx, "fleet", &containerservice.FleetArgs{
/// 			FleetName: pulumi.String("fleet1"),
/// 			HubProfile: &containerservice.FleetHubProfileArgs{
/// 				AgentProfile: &containerservice.AgentProfileArgs{
/// 					VmSize: pulumi.String("Standard_DS1"),
/// 				},
/// 				DnsPrefix: pulumi.String("dnsprefix1"),
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
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
/// import com.pulumi.azurenative.containerservice.Fleet;
/// import com.pulumi.azurenative.containerservice.FleetArgs;
/// import com.pulumi.azurenative.containerservice.inputs.FleetHubProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.AgentProfileArgs;
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
///         var fleet = new Fleet("fleet", FleetArgs.builder()
///             .fleetName("fleet1")
///             .hubProfile(FleetHubProfileArgs.builder()
///                 .agentProfile(AgentProfileArgs.builder()
///                     .vmSize("Standard_DS1")
///                     .build())
///                 .dnsPrefix("dnsprefix1")
///                 .build())
///             .location("East US")
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
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
/// const fleet = new azure_native.containerservice.Fleet("fleet", {
///     fleetName: "fleet1",
///     hubProfile: {
///         agentProfile: {
///             vmSize: "Standard_DS1",
///         },
///         dnsPrefix: "dnsprefix1",
///     },
///     location: "East US",
///     resourceGroupName: "rg1",
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fleet = azure_native.containerservice.Fleet("fleet",
///     fleet_name="fleet1",
///     hub_profile={
///         "agent_profile": {
///             "vm_size": "Standard_DS1",
///         },
///         "dns_prefix": "dnsprefix1",
///     },
///     location="East US",
///     resource_group_name="rg1",
///     tags={
///         "archv2": "",
///         "tier": "production",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   fleet:
///     type: azure-native:containerservice:Fleet
///     properties:
///       fleetName: fleet1
///       hubProfile:
///         agentProfile:
///           vmSize: Standard_DS1
///         dnsPrefix: dnsprefix1
///       location: East US
///       resourceGroupName: rg1
///       tags:
///         archv2: ""
///         tier: production
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
/// $ pulumi import azure-native:containerservice:Fleet fleet-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/fleets/{fleetName}
/// ```
class Fleet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The FleetHubProfile configures the Fleet's hub.
  late final pulumi.Output<FleetHubProfileResponse?> hubProfile;

  /// Managed identity.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_containerservice_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(String name, {FleetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:containerservice:Fleet',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    hubProfile = registerOutput<FleetHubProfileResponse?>(
      'hubProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FleetHubProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
