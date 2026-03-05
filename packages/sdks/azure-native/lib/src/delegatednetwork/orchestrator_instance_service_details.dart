import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_details_response.dart';
import 'orchestrator_identity_response.dart';
import 'orchestrator_instance_service_details_args.dart';

/// Represents an instance of a orchestrator.
///
/// Uses Azure REST API version 2023-06-27-preview. In version 2.x of the Azure Native provider, it used API version 2021-03-15.
///
/// Other available API versions: 2021-03-15, 2023-05-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native delegatednetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create orchestrator instance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orchestratorInstanceServiceDetails = new AzureNative.DelegatedNetwork.OrchestratorInstanceServiceDetails("orchestratorInstanceServiceDetails", new()
///     {
///         ApiServerEndpoint = "https://testk8s.cloudapp.net",
///         ClusterRootCA = "ddsadsad344mfdsfdl",
///         ControllerDetails = new AzureNative.DelegatedNetwork.Inputs.ControllerDetailsArgs
///         {
///             Id = "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/testcontroller",
///         },
///         Identity = new AzureNative.DelegatedNetwork.Inputs.OrchestratorIdentityArgs
///         {
///             Type = AzureNative.DelegatedNetwork.ResourceIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.DelegatedNetwork.OrchestratorKind.Kubernetes,
///         Location = "West US",
///         OrchestratorAppId = "546192d7-503f-477a-9cfe-4efc3ee2b6e1",
///         OrchestratorTenantId = "da6192d7-503f-477a-9cfe-4efc3ee2b6c3",
///         PrivateLinkResourceId = "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/privateLinkServices/plresource1",
///         ResourceGroupName = "TestRG",
///         ResourceName = "testk8s1",
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
/// 	delegatednetwork "github.com/pulumi/pulumi-azure-native-sdk/delegatednetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := delegatednetwork.NewOrchestratorInstanceServiceDetails(ctx, "orchestratorInstanceServiceDetails", &delegatednetwork.OrchestratorInstanceServiceDetailsArgs{
/// 			ApiServerEndpoint: pulumi.String("https://testk8s.cloudapp.net"),
/// 			ClusterRootCA:     pulumi.String("ddsadsad344mfdsfdl"),
/// 			ControllerDetails: &delegatednetwork.ControllerDetailsTypeArgs{
/// 				Id: pulumi.String("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/testcontroller"),
/// 			},
/// 			Identity: &delegatednetwork.OrchestratorIdentityArgs{
/// 				Type: delegatednetwork.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Kind:                  pulumi.String(delegatednetwork.OrchestratorKindKubernetes),
/// 			Location:              pulumi.String("West US"),
/// 			OrchestratorAppId:     pulumi.String("546192d7-503f-477a-9cfe-4efc3ee2b6e1"),
/// 			OrchestratorTenantId:  pulumi.String("da6192d7-503f-477a-9cfe-4efc3ee2b6c3"),
/// 			PrivateLinkResourceId: pulumi.String("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/privateLinkServices/plresource1"),
/// 			ResourceGroupName:     pulumi.String("TestRG"),
/// 			ResourceName:          pulumi.String("testk8s1"),
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
/// import com.pulumi.azurenative.delegatednetwork.OrchestratorInstanceServiceDetails;
/// import com.pulumi.azurenative.delegatednetwork.OrchestratorInstanceServiceDetailsArgs;
/// import com.pulumi.azurenative.delegatednetwork.inputs.ControllerDetailsArgs;
/// import com.pulumi.azurenative.delegatednetwork.inputs.OrchestratorIdentityArgs;
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
///         var orchestratorInstanceServiceDetails = new OrchestratorInstanceServiceDetails("orchestratorInstanceServiceDetails", OrchestratorInstanceServiceDetailsArgs.builder()
///             .apiServerEndpoint("https://testk8s.cloudapp.net")
///             .clusterRootCA("ddsadsad344mfdsfdl")
///             .controllerDetails(ControllerDetailsArgs.builder()
///                 .id("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/testcontroller")
///                 .build())
///             .identity(OrchestratorIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("Kubernetes")
///             .location("West US")
///             .orchestratorAppId("546192d7-503f-477a-9cfe-4efc3ee2b6e1")
///             .orchestratorTenantId("da6192d7-503f-477a-9cfe-4efc3ee2b6c3")
///             .privateLinkResourceId("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/privateLinkServices/plresource1")
///             .resourceGroupName("TestRG")
///             .resourceName("testk8s1")
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
/// const orchestratorInstanceServiceDetails = new azure_native.delegatednetwork.OrchestratorInstanceServiceDetails("orchestratorInstanceServiceDetails", {
///     apiServerEndpoint: "https://testk8s.cloudapp.net",
///     clusterRootCA: "ddsadsad344mfdsfdl",
///     controllerDetails: {
///         id: "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/testcontroller",
///     },
///     identity: {
///         type: azure_native.delegatednetwork.ResourceIdentityType.SystemAssigned,
///     },
///     kind: azure_native.delegatednetwork.OrchestratorKind.Kubernetes,
///     location: "West US",
///     orchestratorAppId: "546192d7-503f-477a-9cfe-4efc3ee2b6e1",
///     orchestratorTenantId: "da6192d7-503f-477a-9cfe-4efc3ee2b6c3",
///     privateLinkResourceId: "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/privateLinkServices/plresource1",
///     resourceGroupName: "TestRG",
///     resourceName: "testk8s1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// orchestrator_instance_service_details = azure_native.delegatednetwork.OrchestratorInstanceServiceDetails("orchestratorInstanceServiceDetails",
///     api_server_endpoint="https://testk8s.cloudapp.net",
///     cluster_root_ca="ddsadsad344mfdsfdl",
///     controller_details={
///         "id": "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/testcontroller",
///     },
///     identity={
///         "type": azure_native.delegatednetwork.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.delegatednetwork.OrchestratorKind.KUBERNETES,
///     location="West US",
///     orchestrator_app_id="546192d7-503f-477a-9cfe-4efc3ee2b6e1",
///     orchestrator_tenant_id="da6192d7-503f-477a-9cfe-4efc3ee2b6c3",
///     private_link_resource_id="/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/privateLinkServices/plresource1",
///     resource_group_name="TestRG",
///     resource_name_="testk8s1")
///
/// ```
///
/// ```yaml
/// resources:
///   orchestratorInstanceServiceDetails:
///     type: azure-native:delegatednetwork:OrchestratorInstanceServiceDetails
///     properties:
///       apiServerEndpoint: https://testk8s.cloudapp.net
///       clusterRootCA: ddsadsad344mfdsfdl
///       controllerDetails:
///         id: /subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/testcontroller
///       identity:
///         type: SystemAssigned
///       kind: Kubernetes
///       location: West US
///       orchestratorAppId: 546192d7-503f-477a-9cfe-4efc3ee2b6e1
///       orchestratorTenantId: da6192d7-503f-477a-9cfe-4efc3ee2b6c3
///       privateLinkResourceId: /subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/privateLinkServices/plresource1
///       resourceGroupName: TestRG
///       resourceName: testk8s1
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
/// $ pulumi import azure-native:delegatednetwork:OrchestratorInstanceServiceDetails testk8s1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DelegatedNetwork/orchestrators/{resourceName}
/// ```
class OrchestratorInstanceServiceDetails extends pulumi.CustomResource {
  /// K8s APIServer url. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  late final pulumi.Output<String?> apiServerEndpoint;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// RootCA certificate of kubernetes cluster base64 encoded
  late final pulumi.Output<String?> clusterRootCA;
  /// Properties of the controller.
  late final pulumi.Output<ControllerDetailsResponse> controllerDetails;
  /// The identity of the orchestrator
  late final pulumi.Output<OrchestratorIdentityResponse?> identity;
  /// The kind of workbook. Choices are user and shared.
  late final pulumi.Output<String> kind;
  /// Location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// AAD ID used with apiserver
  late final pulumi.Output<String?> orchestratorAppId;
  /// TenantID of server App ID
  late final pulumi.Output<String?> orchestratorTenantId;
  /// private link arm resource id. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  late final pulumi.Output<String?> privateLinkResourceId;
  /// The current state of orchestratorInstance resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource guid.
  late final pulumi.Output<String> resourceGuid;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of resource.
  late final pulumi.Output<String> type;

  /// Creates a new [OrchestratorInstanceServiceDetails].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrchestratorInstanceServiceDetails]. {@macro pulumi_delegatednetwork_orchestrator_instance_service_details_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrchestratorInstanceServiceDetails(
    String name, {
    OrchestratorInstanceServiceDetailsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:delegatednetwork:OrchestratorInstanceServiceDetails',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiServerEndpoint = registerOutput<String?>('apiServerEndpoint');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterRootCA = registerOutput<String?>('clusterRootCA');
    controllerDetails = registerOutput<ControllerDetailsResponse>('controllerDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControllerDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<OrchestratorIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratorIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    orchestratorAppId = registerOutput<String?>('orchestratorAppId');
    orchestratorTenantId = registerOutput<String?>('orchestratorTenantId');
    privateLinkResourceId = registerOutput<String?>('privateLinkResourceId');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
