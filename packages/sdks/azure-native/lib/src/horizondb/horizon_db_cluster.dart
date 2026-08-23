import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_cluster_args.dart';
import 'horizon_db_cluster_properties_response.dart';
import 'system_data_response.dart';

/// Represents the HorizonDB cluster.
///
/// Uses Azure REST API version 2026-01-20-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a HorizonDB cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var horizonDbCluster = new AzureNative.HorizonDb.HorizonDbCluster("horizonDbCluster", new()
///     {
///         ClusterName = "examplecluster",
///         Location = "westus2",
///         Properties = new AzureNative.HorizonDb.Inputs.HorizonDbClusterPropertiesArgs
///         {
///             AdministratorLogin = "exampleadministratorlogin",
///             AdministratorLoginPassword = "examplepassword",
///             CreateMode = AzureNative.HorizonDb.CreateModeCluster.Create,
///             ReplicaCount = 2,
///             VCores = 4,
///             Version = "17",
///             ZonePlacementPolicy = AzureNative.HorizonDb.ZonePlacementPolicy.BestEffort,
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         Tags =
///         {
///             { "env", "dev" },
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
/// 	horizondb "github.com/pulumi/pulumi-azure-native-sdk/horizondb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := horizondb.NewHorizonDbCluster(ctx, "horizonDbCluster", &horizondb.HorizonDbClusterArgs{
/// 			ClusterName: pulumi.String("examplecluster"),
/// 			Location:    pulumi.String("westus2"),
/// 			Properties: &horizondb.HorizonDbClusterPropertiesArgs{
/// 				AdministratorLogin:         pulumi.String("exampleadministratorlogin"),
/// 				AdministratorLoginPassword: pulumi.String("examplepassword"),
/// 				CreateMode:                 pulumi.String(horizondb.CreateModeClusterCreate),
/// 				ReplicaCount:               pulumi.Int(2),
/// 				VCores:                     pulumi.Int(4),
/// 				Version:                    pulumi.String("17"),
/// 				ZonePlacementPolicy:        pulumi.String(horizondb.ZonePlacementPolicyBestEffort),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("dev"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_horizondb_horizondbcluster" "horizonDbCluster" {
///   cluster_name = "examplecluster"
///   location     = "westus2"
///   properties = {
///     administrator_login          = "exampleadministratorlogin"
///     administrator_login_password = "examplepassword"
///     create_mode                  = "Create"
///     replica_count                = 2
///     v_cores                      = 4
///     version                      = "17"
///     zone_placement_policy        = "BestEffort"
///   }
///   resource_group_name = "exampleresourcegroup"
///   tags = {
///     "env" = "dev"
///   }
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
/// import com.pulumi.azurenative.horizondb.HorizonDbCluster;
/// import com.pulumi.azurenative.horizondb.HorizonDbClusterArgs;
/// import com.pulumi.azurenative.horizondb.inputs.HorizonDbClusterPropertiesArgs;
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
///         var horizonDbCluster = new HorizonDbCluster("horizonDbCluster", HorizonDbClusterArgs.builder()
///             .clusterName("examplecluster")
///             .location("westus2")
///             .properties(HorizonDbClusterPropertiesArgs.builder()
///                 .administratorLogin("exampleadministratorlogin")
///                 .administratorLoginPassword("examplepassword")
///                 .createMode("Create")
///                 .replicaCount(2)
///                 .vCores(4)
///                 .version("17")
///                 .zonePlacementPolicy("BestEffort")
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
///             .tags(Map.of("env", "dev"))
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
/// const horizonDbCluster = new azure_native.horizondb.HorizonDbCluster("horizonDbCluster", {
///     clusterName: "examplecluster",
///     location: "westus2",
///     properties: {
///         administratorLogin: "exampleadministratorlogin",
///         administratorLoginPassword: "examplepassword",
///         createMode: azure_native.horizondb.CreateModeCluster.Create,
///         replicaCount: 2,
///         vCores: 4,
///         version: "17",
///         zonePlacementPolicy: azure_native.horizondb.ZonePlacementPolicy.BestEffort,
///     },
///     resourceGroupName: "exampleresourcegroup",
///     tags: {
///         env: "dev",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// horizon_db_cluster = azure_native.horizondb.HorizonDbCluster("horizonDbCluster",
///     cluster_name="examplecluster",
///     location="westus2",
///     properties={
///         "administrator_login": "exampleadministratorlogin",
///         "administrator_login_password": "examplepassword",
///         "create_mode": azure_native.horizondb.CreateModeCluster.CREATE,
///         "replica_count": 2,
///         "v_cores": 4,
///         "version": "17",
///         "zone_placement_policy": azure_native.horizondb.ZonePlacementPolicy.BEST_EFFORT,
///     },
///     resource_group_name="exampleresourcegroup",
///     tags={
///         "env": "dev",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   horizonDbCluster:
///     type: azure-native:horizondb:HorizonDbCluster
///     properties:
///       clusterName: examplecluster
///       location: westus2
///       properties:
///         administratorLogin: exampleadministratorlogin
///         administratorLoginPassword: examplepassword
///         createMode: Create
///         replicaCount: 2
///         vCores: 4
///         version: '17'
///         zonePlacementPolicy: BestEffort
///       resourceGroupName: exampleresourcegroup
///       tags:
///         env: dev
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
/// $ pulumi import azure-native:horizondb:HorizonDbCluster examplecluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HorizonDb/clusters/{clusterName}
/// ```
class HorizonDbCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<HorizonDbClusterPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HorizonDbCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizonDbCluster]. {@macro pulumi_horizondb_horizon_db_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizonDbCluster(
    String name, {
    HorizonDbClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:horizondb:HorizonDbCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HorizonDbClusterPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HorizonDbClusterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
