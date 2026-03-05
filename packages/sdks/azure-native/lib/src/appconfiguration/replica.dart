import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_args.dart';
import 'system_data_response.dart';

/// The replica resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-08-01-preview, 2023-09-01-preview, 2024-06-01, 2024-06-15-preview, 2025-02-01-preview, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Replicas_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replica = new AzureNative.AppConfiguration.Replica("replica", new()
///     {
///         ConfigStoreName = "contoso",
///         Location = "eastus",
///         ReplicaName = "myReplicaEus",
///         ResourceGroupName = "myResourceGroup",
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
/// 	appconfiguration "github.com/pulumi/pulumi-azure-native-sdk/appconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfiguration.NewReplica(ctx, "replica", &appconfiguration.ReplicaArgs{
/// 			ConfigStoreName:   pulumi.String("contoso"),
/// 			Location:          pulumi.String("eastus"),
/// 			ReplicaName:       pulumi.String("myReplicaEus"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.appconfiguration.Replica;
/// import com.pulumi.azurenative.appconfiguration.ReplicaArgs;
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
///         var replica = new Replica("replica", ReplicaArgs.builder()
///             .configStoreName("contoso")
///             .location("eastus")
///             .replicaName("myReplicaEus")
///             .resourceGroupName("myResourceGroup")
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
/// const replica = new azure_native.appconfiguration.Replica("replica", {
///     configStoreName: "contoso",
///     location: "eastus",
///     replicaName: "myReplicaEus",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replica = azure_native.appconfiguration.Replica("replica",
///     config_store_name="contoso",
///     location="eastus",
///     replica_name="myReplicaEus",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   replica:
///     type: azure-native:appconfiguration:Replica
///     properties:
///       configStoreName: contoso
///       location: eastus
///       replicaName: myReplicaEus
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:appconfiguration:Replica myReplicaEus /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppConfiguration/configurationStores/{configStoreName}/replicas/{replicaName}
/// ```
class Replica extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The URI of the replica where the replica API will be available.
  late final pulumi.Output<String> endpoint;
  /// The location of the replica.
  late final pulumi.Output<String?> location;
  /// The name of the replica.
  late final pulumi.Output<String> name;
  /// The provisioning state of the replica.
  late final pulumi.Output<String> provisioningState;
  /// Resource system metadata.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Replica].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Replica]. {@macro pulumi_appconfiguration_replica_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Replica(
    String name, {
    ReplicaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appconfiguration:Replica',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endpoint = registerOutput<String>('endpoint');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
