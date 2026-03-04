import 'package:pulumi/pulumi.dart' as pulumi;
import 'enclave_endpoint_args.dart';
import 'system_data_response.dart';

/// EnclaveEndpoint Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EnclaveEndpoints_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enclaveEndpoint = new AzureNative.Mission.EnclaveEndpoint("enclaveEndpoint", new()
///     {
///         EnclaveEndpointName = "TestMyEnclaveEndpoint",
///         Location = "West US",
///         ResourceGroupName = "rgopenapi",
///         RuleCollection = new[]
///         {
///             new AzureNative.Mission.Inputs.EnclaveEndpointDestinationRuleArgs
///             {
///                 Destination = "10.0.0.0/24",
///                 EndpointRuleName = "54CEECEF-2C30-488E-946F-D20F414D99BA",
///                 Ports = "443",
///                 Protocols = new[]
///                 {
///                     AzureNative.Mission.EnclaveEndpointProtocol.TCP,
///                 },
///             },
///         },
///         Tags =
///         {
///             { "sampletag", "samplevalue" },
///         },
///         VirtualEnclaveName = "TestMyEnclave",
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
/// 		_, err := mission.NewEnclaveEndpoint(ctx, "enclaveEndpoint", &mission.EnclaveEndpointArgs{
/// 			EnclaveEndpointName: pulumi.String("TestMyEnclaveEndpoint"),
/// 			Location:            pulumi.String("West US"),
/// 			ResourceGroupName:   pulumi.String("rgopenapi"),
/// 			RuleCollection: mission.EnclaveEndpointDestinationRuleArray{
/// 				&mission.EnclaveEndpointDestinationRuleArgs{
/// 					Destination:      pulumi.String("10.0.0.0/24"),
/// 					EndpointRuleName: pulumi.String("54CEECEF-2C30-488E-946F-D20F414D99BA"),
/// 					Ports:            pulumi.String("443"),
/// 					Protocols: pulumi.StringArray{
/// 						pulumi.String(mission.EnclaveEndpointProtocolTCP),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"sampletag": pulumi.String("samplevalue"),
/// 			},
/// 			VirtualEnclaveName: pulumi.String("TestMyEnclave"),
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
/// import com.pulumi.azurenative.mission.EnclaveEndpoint;
/// import com.pulumi.azurenative.mission.EnclaveEndpointArgs;
/// import com.pulumi.azurenative.mission.inputs.EnclaveEndpointDestinationRuleArgs;
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
///         var enclaveEndpoint = new EnclaveEndpoint("enclaveEndpoint", EnclaveEndpointArgs.builder()
///             .enclaveEndpointName("TestMyEnclaveEndpoint")
///             .location("West US")
///             .resourceGroupName("rgopenapi")
///             .ruleCollection(EnclaveEndpointDestinationRuleArgs.builder()
///                 .destination("10.0.0.0/24")
///                 .endpointRuleName("54CEECEF-2C30-488E-946F-D20F414D99BA")
///                 .ports("443")
///                 .protocols("TCP")
///                 .build())
///             .tags(Map.of("sampletag", "samplevalue"))
///             .virtualEnclaveName("TestMyEnclave")
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
/// const enclaveEndpoint = new azure_native.mission.EnclaveEndpoint("enclaveEndpoint", {
///     enclaveEndpointName: "TestMyEnclaveEndpoint",
///     location: "West US",
///     resourceGroupName: "rgopenapi",
///     ruleCollection: [{
///         destination: "10.0.0.0/24",
///         endpointRuleName: "54CEECEF-2C30-488E-946F-D20F414D99BA",
///         ports: "443",
///         protocols: [azure_native.mission.EnclaveEndpointProtocol.TCP],
///     }],
///     tags: {
///         sampletag: "samplevalue",
///     },
///     virtualEnclaveName: "TestMyEnclave",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// enclave_endpoint = azure_native.mission.EnclaveEndpoint("enclaveEndpoint",
///     enclave_endpoint_name="TestMyEnclaveEndpoint",
///     location="West US",
///     resource_group_name="rgopenapi",
///     rule_collection=[{
///         "destination": "10.0.0.0/24",
///         "endpoint_rule_name": "54CEECEF-2C30-488E-946F-D20F414D99BA",
///         "ports": "443",
///         "protocols": [azure_native.mission.EnclaveEndpointProtocol.TCP],
///     }],
///     tags={
///         "sampletag": "samplevalue",
///     },
///     virtual_enclave_name="TestMyEnclave")
///
/// ```
///
/// ```yaml
/// resources:
///   enclaveEndpoint:
///     type: azure-native:mission:EnclaveEndpoint
///     properties:
///       enclaveEndpointName: TestMyEnclaveEndpoint
///       location: West US
///       resourceGroupName: rgopenapi
///       ruleCollection:
///         - destination: 10.0.0.0/24
///           endpointRuleName: 54CEECEF-2C30-488E-946F-D20F414D99BA
///           ports: '443'
///           protocols:
///             - TCP
///       tags:
///         sampletag: samplevalue
///       virtualEnclaveName: TestMyEnclave
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
/// $ pulumi import azure-native:mission:EnclaveEndpoint TestMyEnclaveEndpoint /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Mission/virtualEnclaves/{virtualEnclaveName}/enclaveEndpoints/{enclaveEndpointName}
/// ```
class EnclaveEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning State.
  late final pulumi.Output<String> provisioningState;

  /// List of resource ids created by community endpoint.
  late final pulumi.Output<List<String>> resourceCollection;

  /// Enclave Endpoint Rule Collection.
  late final pulumi.Output<List<Map<String, dynamic>>> ruleCollection;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnclaveEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnclaveEndpoint]. {@macro pulumi_mission_enclave_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnclaveEndpoint(
    String name, {
    EnclaveEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:mission:EnclaveEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCollection = registerOutput<List<String>>('resourceCollection');
    ruleCollection = registerOutput<List<Map<String, dynamic>>>(
      'ruleCollection',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
