import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_replica_args.dart';
import 'horizon_db_replica_properties_response.dart';
import 'system_data_response.dart';

/// Represents the HorizonDB replica.
///
/// Uses Azure REST API version 2026-01-20-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a HorizonDB replica
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var horizonDbReplica = new AzureNative.HorizonDb.HorizonDbReplica("horizonDbReplica", new()
///     {
///         ClusterName = "examplecluster",
///         PoolName = "examplepool",
///         Properties = new AzureNative.HorizonDb.Inputs.HorizonDbReplicaPropertiesArgs
///         {
///             AvailabilityZone = "1",
///             Role = AzureNative.HorizonDb.ReplicaRole.Read,
///         },
///         ReplicaName = "examplereplica",
///         ResourceGroupName = "exampleresourcegroup",
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
/// 	horizondb "github.com/pulumi/pulumi-azure-native-sdk/horizondb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := horizondb.NewHorizonDbReplica(ctx, "horizonDbReplica", &horizondb.HorizonDbReplicaArgs{
/// 			ClusterName: pulumi.String("examplecluster"),
/// 			PoolName:    pulumi.String("examplepool"),
/// 			Properties: &horizondb.HorizonDbReplicaPropertiesArgs{
/// 				AvailabilityZone: pulumi.String("1"),
/// 				Role:             pulumi.String(horizondb.ReplicaRoleRead),
/// 			},
/// 			ReplicaName:       pulumi.String("examplereplica"),
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_horizondb_horizondbreplica" "horizonDbReplica" {
///   cluster_name = "examplecluster"
///   pool_name    = "examplepool"
///   properties = {
///     availability_zone = "1"
///     role              = "Read"
///   }
///   replica_name        = "examplereplica"
///   resource_group_name = "exampleresourcegroup"
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
/// import com.pulumi.azurenative.horizondb.HorizonDbReplica;
/// import com.pulumi.azurenative.horizondb.HorizonDbReplicaArgs;
/// import com.pulumi.azurenative.horizondb.inputs.HorizonDbReplicaPropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var horizonDbReplica = new HorizonDbReplica("horizonDbReplica", HorizonDbReplicaArgs.builder()
///             .clusterName("examplecluster")
///             .poolName("examplepool")
///             .properties(HorizonDbReplicaPropertiesArgs.builder()
///                 .availabilityZone("1")
///                 .role("Read")
///                 .build())
///             .replicaName("examplereplica")
///             .resourceGroupName("exampleresourcegroup")
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
/// const horizonDbReplica = new azure_native.horizondb.HorizonDbReplica("horizonDbReplica", {
///     clusterName: "examplecluster",
///     poolName: "examplepool",
///     properties: {
///         availabilityZone: "1",
///         role: azure_native.horizondb.ReplicaRole.Read,
///     },
///     replicaName: "examplereplica",
///     resourceGroupName: "exampleresourcegroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// horizon_db_replica = azure_native.horizondb.HorizonDbReplica("horizonDbReplica",
///     cluster_name="examplecluster",
///     pool_name="examplepool",
///     properties={
///         "availability_zone": "1",
///         "role": azure_native.horizondb.ReplicaRole.READ,
///     },
///     replica_name="examplereplica",
///     resource_group_name="exampleresourcegroup")
///
/// ```
///
/// ```yaml
/// resources:
///   horizonDbReplica:
///     type: azure-native:horizondb:HorizonDbReplica
///     properties:
///       clusterName: examplecluster
///       poolName: examplepool
///       properties:
///         availabilityZone: '1'
///         role: Read
///       replicaName: examplereplica
///       resourceGroupName: exampleresourcegroup
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
/// $ pulumi import azure-native:horizondb:HorizonDbReplica examplereplica /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HorizonDb/clusters/{clusterName}/pools/{poolName}/replicas/{replicaName}
/// ```
class HorizonDbReplica extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<HorizonDbReplicaPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HorizonDbReplica].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizonDbReplica]. {@macro pulumi_horizondb_horizon_db_replica_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizonDbReplica(
    String name, {
    HorizonDbReplicaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:horizondb:HorizonDbReplica',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HorizonDbReplicaPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HorizonDbReplicaPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [HorizonDbReplica] resource.
  HorizonDbReplica.reference(String urn)
    : super(
        'azure-native:horizondb:HorizonDbReplica',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HorizonDbReplicaPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HorizonDbReplicaPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
