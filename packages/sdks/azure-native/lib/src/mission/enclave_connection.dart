import 'package:pulumi/pulumi.dart' as pulumi;
import 'enclave_connection_args.dart';
import 'system_data_response.dart';

/// EnclaveConnection Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EnclaveConnection_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enclaveConnection = new AzureNative.Mission.EnclaveConnection("enclaveConnection", new()
///     {
///         CommunityResourceId = "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity",
///         DestinationEndpointId = "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/virtualenclaves/TestMyEnclave/enclaveendpoints/TestMyEnclaveEndpoint",
///         EnclaveConnectionName = "TestMyEnclaveConnection",
///         Location = "West US",
///         ResourceGroupName = "rgopenapi",
///         SourceCidr = "10.0.0.0/24",
///         SourceResourceId = "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave",
///         Tags =
///         {
///             { "sampletag", "samplevalue" },
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
/// 	mission "github.com/pulumi/pulumi-azure-native-sdk/mission/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mission.NewEnclaveConnection(ctx, "enclaveConnection", &mission.EnclaveConnectionArgs{
/// 			CommunityResourceId:   pulumi.String("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity"),
/// 			DestinationEndpointId: pulumi.String("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/virtualenclaves/TestMyEnclave/enclaveendpoints/TestMyEnclaveEndpoint"),
/// 			EnclaveConnectionName: pulumi.String("TestMyEnclaveConnection"),
/// 			Location:              pulumi.String("West US"),
/// 			ResourceGroupName:     pulumi.String("rgopenapi"),
/// 			SourceCidr:            pulumi.String("10.0.0.0/24"),
/// 			SourceResourceId:      pulumi.String("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave"),
/// 			Tags: pulumi.StringMap{
/// 				"sampletag": pulumi.String("samplevalue"),
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
/// import com.pulumi.azurenative.mission.EnclaveConnection;
/// import com.pulumi.azurenative.mission.EnclaveConnectionArgs;
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
///         var enclaveConnection = new EnclaveConnection("enclaveConnection", EnclaveConnectionArgs.builder()
///             .communityResourceId("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity")
///             .destinationEndpointId("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/virtualenclaves/TestMyEnclave/enclaveendpoints/TestMyEnclaveEndpoint")
///             .enclaveConnectionName("TestMyEnclaveConnection")
///             .location("West US")
///             .resourceGroupName("rgopenapi")
///             .sourceCidr("10.0.0.0/24")
///             .sourceResourceId("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave")
///             .tags(Map.of("sampletag", "samplevalue"))
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
/// const enclaveConnection = new azure_native.mission.EnclaveConnection("enclaveConnection", {
///     communityResourceId: "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity",
///     destinationEndpointId: "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/virtualenclaves/TestMyEnclave/enclaveendpoints/TestMyEnclaveEndpoint",
///     enclaveConnectionName: "TestMyEnclaveConnection",
///     location: "West US",
///     resourceGroupName: "rgopenapi",
///     sourceCidr: "10.0.0.0/24",
///     sourceResourceId: "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave",
///     tags: {
///         sampletag: "samplevalue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// enclave_connection = azure_native.mission.EnclaveConnection("enclaveConnection",
///     community_resource_id="/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity",
///     destination_endpoint_id="/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/virtualenclaves/TestMyEnclave/enclaveendpoints/TestMyEnclaveEndpoint",
///     enclave_connection_name="TestMyEnclaveConnection",
///     location="West US",
///     resource_group_name="rgopenapi",
///     source_cidr="10.0.0.0/24",
///     source_resource_id="/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave",
///     tags={
///         "sampletag": "samplevalue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   enclaveConnection:
///     type: azure-native:mission:EnclaveConnection
///     properties:
///       communityResourceId: /subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity
///       destinationEndpointId: /subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/Microsoft.Mission/virtualenclaves/TestMyEnclave/enclaveendpoints/TestMyEnclaveEndpoint
///       enclaveConnectionName: TestMyEnclaveConnection
///       location: West US
///       resourceGroupName: rgopenapi
///       sourceCidr: 10.0.0.0/24
///       sourceResourceId: /subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/TestMyRg/providers/microsoft.mission/virtualenclaves/TestMyEnclave
///       tags:
///         sampletag: samplevalue
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
/// $ pulumi import azure-native:mission:EnclaveConnection TestMyEnclaveConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Mission/enclaveConnections/{enclaveConnectionName}
/// ```
class EnclaveConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Community Resource Id.
  late final pulumi.Output<String> communityResourceId;
  /// Destination Endpoint Resource Id.
  late final pulumi.Output<String> destinationEndpointId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning State.
  late final pulumi.Output<String> provisioningState;
  /// List of resource ids modified by enclave Connections.
  late final pulumi.Output<List<String>> resourceCollection;
  /// Source CIDR.
  late final pulumi.Output<String?> sourceCidr;
  /// Source Resource Id.
  late final pulumi.Output<String> sourceResourceId;
  /// The state of the enclaveConnection.
  late final pulumi.Output<String> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnclaveConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnclaveConnection]. {@macro pulumi_mission_enclave_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnclaveConnection(
    String name, {
    EnclaveConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mission:EnclaveConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    communityResourceId = registerOutput<String>('communityResourceId');
    destinationEndpointId = registerOutput<String>('destinationEndpointId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCollection = registerOutput<List<String>>('resourceCollection');
    sourceCidr = registerOutput<String?>('sourceCidr');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
