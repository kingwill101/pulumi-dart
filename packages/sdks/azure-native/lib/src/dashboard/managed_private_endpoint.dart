import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_private_endpoint_args.dart';
import 'managed_private_endpoint_connection_state_response.dart';
import 'system_data_response.dart';

/// The managed private endpoint resource type.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2022-10-01-preview, 2023-09-01, 2023-10-01-preview, 2024-11-01-preview, 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagedPrivateEndpoint_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedPrivateEndpoint = new AzureNative.Dashboard.ManagedPrivateEndpoint("managedPrivateEndpoint", new()
///     {
///         GroupIds = new[]
///         {
///             "grafana",
///         },
///         Location = "West US",
///         ManagedPrivateEndpointName = "myMPEName",
///         PrivateLinkResourceId = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-000000000000/resourceGroups/xx-rg/providers/Microsoft.Kusto/Clusters/sampleKustoResource",
///         PrivateLinkResourceRegion = "West US",
///         PrivateLinkServiceUrl = "my-self-hosted-influxdb.westus.mydomain.com",
///         RequestMessage = "Example Request Message",
///         ResourceGroupName = "myResourceGroup",
///         WorkspaceName = "myWorkspace",
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
/// 	dashboard "github.com/pulumi/pulumi-azure-native-sdk/dashboard/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dashboard.NewManagedPrivateEndpoint(ctx, "managedPrivateEndpoint", &dashboard.ManagedPrivateEndpointArgs{
/// 			GroupIds: pulumi.StringArray{
/// 				pulumi.String("grafana"),
/// 			},
/// 			Location:                   pulumi.String("West US"),
/// 			ManagedPrivateEndpointName: pulumi.String("myMPEName"),
/// 			PrivateLinkResourceId:      pulumi.String("/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-000000000000/resourceGroups/xx-rg/providers/Microsoft.Kusto/Clusters/sampleKustoResource"),
/// 			PrivateLinkResourceRegion:  pulumi.String("West US"),
/// 			PrivateLinkServiceUrl:      pulumi.String("my-self-hosted-influxdb.westus.mydomain.com"),
/// 			RequestMessage:             pulumi.String("Example Request Message"),
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
/// 			WorkspaceName:              pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.dashboard.ManagedPrivateEndpoint;
/// import com.pulumi.azurenative.dashboard.ManagedPrivateEndpointArgs;
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
///         var managedPrivateEndpoint = new ManagedPrivateEndpoint("managedPrivateEndpoint", ManagedPrivateEndpointArgs.builder()
///             .groupIds("grafana")
///             .location("West US")
///             .managedPrivateEndpointName("myMPEName")
///             .privateLinkResourceId("/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-000000000000/resourceGroups/xx-rg/providers/Microsoft.Kusto/Clusters/sampleKustoResource")
///             .privateLinkResourceRegion("West US")
///             .privateLinkServiceUrl("my-self-hosted-influxdb.westus.mydomain.com")
///             .requestMessage("Example Request Message")
///             .resourceGroupName("myResourceGroup")
///             .workspaceName("myWorkspace")
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
/// const managedPrivateEndpoint = new azure_native.dashboard.ManagedPrivateEndpoint("managedPrivateEndpoint", {
///     groupIds: ["grafana"],
///     location: "West US",
///     managedPrivateEndpointName: "myMPEName",
///     privateLinkResourceId: "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-000000000000/resourceGroups/xx-rg/providers/Microsoft.Kusto/Clusters/sampleKustoResource",
///     privateLinkResourceRegion: "West US",
///     privateLinkServiceUrl: "my-self-hosted-influxdb.westus.mydomain.com",
///     requestMessage: "Example Request Message",
///     resourceGroupName: "myResourceGroup",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_private_endpoint = azure_native.dashboard.ManagedPrivateEndpoint("managedPrivateEndpoint",
///     group_ids=["grafana"],
///     location="West US",
///     managed_private_endpoint_name="myMPEName",
///     private_link_resource_id="/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-000000000000/resourceGroups/xx-rg/providers/Microsoft.Kusto/Clusters/sampleKustoResource",
///     private_link_resource_region="West US",
///     private_link_service_url="my-self-hosted-influxdb.westus.mydomain.com",
///     request_message="Example Request Message",
///     resource_group_name="myResourceGroup",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   managedPrivateEndpoint:
///     type: azure-native:dashboard:ManagedPrivateEndpoint
///     properties:
///       groupIds:
///         - grafana
///       location: West US
///       managedPrivateEndpointName: myMPEName
///       privateLinkResourceId: /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-000000000000/resourceGroups/xx-rg/providers/Microsoft.Kusto/Clusters/sampleKustoResource
///       privateLinkResourceRegion: West US
///       privateLinkServiceUrl: my-self-hosted-influxdb.westus.mydomain.com
///       requestMessage: Example Request Message
///       resourceGroupName: myResourceGroup
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:dashboard:ManagedPrivateEndpoint myMPEName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Dashboard/grafana/{workspaceName}/managedPrivateEndpoints/{managedPrivateEndpointName}
/// ```
class ManagedPrivateEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The state of managed private endpoint connection.
  late final pulumi.Output<ManagedPrivateEndpointConnectionStateResponse>
  connectionState;

  /// The group Ids of the managed private endpoint.
  late final pulumi.Output<List<String>?> groupIds;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The ARM resource ID of the resource for which the managed private endpoint is pointing to.
  late final pulumi.Output<String?> privateLinkResourceId;

  /// The region of the resource to which the managed private endpoint is pointing to.
  late final pulumi.Output<String?> privateLinkResourceRegion;

  /// The private IP of private endpoint after approval. This property is empty before connection is approved.
  late final pulumi.Output<String> privateLinkServicePrivateIP;

  /// The URL of the data store behind the private link service. It would be the URL in the Grafana data source configuration page without the protocol and port.
  late final pulumi.Output<String?> privateLinkServiceUrl;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// User input request message of the managed private endpoint.
  late final pulumi.Output<String?> requestMessage;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedPrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPrivateEndpoint]. {@macro pulumi_dashboard_managed_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPrivateEndpoint(
    String name, {
    ManagedPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dashboard:ManagedPrivateEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionState =
        registerOutput<ManagedPrivateEndpointConnectionStateResponse>(
          'connectionState',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedPrivateEndpointConnectionStateResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    groupIds = registerOutput<List<String>?>('groupIds');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateLinkResourceId = registerOutput<String?>('privateLinkResourceId');
    privateLinkResourceRegion = registerOutput<String?>(
      'privateLinkResourceRegion',
    );
    privateLinkServicePrivateIP = registerOutput<String>(
      'privateLinkServicePrivateIP',
    );
    privateLinkServiceUrl = registerOutput<String?>('privateLinkServiceUrl');
    provisioningState = registerOutput<String>('provisioningState');
    requestMessage = registerOutput<String?>('requestMessage');
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
