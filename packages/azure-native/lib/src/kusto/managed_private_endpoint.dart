import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_private_endpoint_args.dart';
import 'system_data_response.dart';

/// Class representing a managed private endpoint.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// Other available API versions: 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoManagedPrivateEndpointsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedPrivateEndpoint = new AzureNative.Kusto.ManagedPrivateEndpoint("managedPrivateEndpoint", new()
///     {
///         ClusterName = "kustoCluster",
///         GroupId = "blob",
///         ManagedPrivateEndpointName = "managedPrivateEndpointTest",
///         PrivateLinkResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/storageAccountTest",
///         RequestMessage = "Please Approve.",
///         ResourceGroupName = "kustorptest",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewManagedPrivateEndpoint(ctx, "managedPrivateEndpoint", &kusto.ManagedPrivateEndpointArgs{
/// 			ClusterName:                pulumi.String("kustoCluster"),
/// 			GroupId:                    pulumi.String("blob"),
/// 			ManagedPrivateEndpointName: pulumi.String("managedPrivateEndpointTest"),
/// 			PrivateLinkResourceId:      pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/storageAccountTest"),
/// 			RequestMessage:             pulumi.String("Please Approve."),
/// 			ResourceGroupName:          pulumi.String("kustorptest"),
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
/// import com.pulumi.azurenative.kusto.ManagedPrivateEndpoint;
/// import com.pulumi.azurenative.kusto.ManagedPrivateEndpointArgs;
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
///             .clusterName("kustoCluster")
///             .groupId("blob")
///             .managedPrivateEndpointName("managedPrivateEndpointTest")
///             .privateLinkResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/storageAccountTest")
///             .requestMessage("Please Approve.")
///             .resourceGroupName("kustorptest")
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
/// const managedPrivateEndpoint = new azure_native.kusto.ManagedPrivateEndpoint("managedPrivateEndpoint", {
///     clusterName: "kustoCluster",
///     groupId: "blob",
///     managedPrivateEndpointName: "managedPrivateEndpointTest",
///     privateLinkResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/storageAccountTest",
///     requestMessage: "Please Approve.",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_private_endpoint = azure_native.kusto.ManagedPrivateEndpoint("managedPrivateEndpoint",
///     cluster_name="kustoCluster",
///     group_id="blob",
///     managed_private_endpoint_name="managedPrivateEndpointTest",
///     private_link_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/storageAccountTest",
///     request_message="Please Approve.",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   managedPrivateEndpoint:
///     type: azure-native:kusto:ManagedPrivateEndpoint
///     properties:
///       clusterName: kustoCluster
///       groupId: blob
///       managedPrivateEndpointName: managedPrivateEndpointTest
///       privateLinkResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/storageAccountTest
///       requestMessage: Please Approve.
///       resourceGroupName: kustorptest
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
/// $ pulumi import azure-native:kusto:ManagedPrivateEndpoint kustoCluster/KustoDatabase8/managedPrivateEndpointTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/managedPrivateEndpoints/{managedPrivateEndpointName}
/// ```
class ManagedPrivateEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The groupId in which the managed private endpoint is created.
  late final pulumi.Output<String> groupId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The ARM resource ID of the resource for which the managed private endpoint is created.
  late final pulumi.Output<String> privateLinkResourceId;
  /// The region of the resource to which the managed private endpoint is created.
  late final pulumi.Output<String?> privateLinkResourceRegion;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The user request message.
  late final pulumi.Output<String?> requestMessage;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedPrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPrivateEndpoint]. {@macro pulumi_kusto_managed_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPrivateEndpoint(
    String name, {
    ManagedPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:ManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    this.privateLinkResourceId = registerOutput<String>('privateLinkResourceId');
    this.privateLinkResourceRegion = registerOutput<String?>('privateLinkResourceRegion');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.requestMessage = registerOutput<String?>('requestMessage');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
