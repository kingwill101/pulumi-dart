import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_statistics_response.dart';
import 'read_only_following_database_args.dart';
import 'suspension_details_response.dart';
import 'table_level_sharing_properties_response.dart';

/// Class representing a read only following database.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Kusto ReadOnly database update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var readOnlyFollowingDatabase = new AzureNative.Kusto.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", new()
///     {
///         ClusterName = "kustoCluster",
///         DatabaseName = "kustoReadOnlyDatabase",
///         HotCachePeriod = "P1D",
///         Kind = "ReadOnlyFollowing",
///         Location = "westus",
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
/// 		_, err := kusto.NewReadOnlyFollowingDatabase(ctx, "readOnlyFollowingDatabase", &kusto.ReadOnlyFollowingDatabaseArgs{
/// 			ClusterName:       pulumi.String("kustoCluster"),
/// 			DatabaseName:      pulumi.String("kustoReadOnlyDatabase"),
/// 			HotCachePeriod:    pulumi.String("P1D"),
/// 			Kind:              pulumi.String("ReadOnlyFollowing"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("kustorptest"),
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
/// resource "azure-native_kusto_readonlyfollowingdatabase" "readOnlyFollowingDatabase" {
///   cluster_name        = "kustoCluster"
///   database_name       = "kustoReadOnlyDatabase"
///   hot_cache_period    = "P1D"
///   kind                = "ReadOnlyFollowing"
///   location            = "westus"
///   resource_group_name = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.ReadOnlyFollowingDatabase;
/// import com.pulumi.azurenative.kusto.ReadOnlyFollowingDatabaseArgs;
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
///         var readOnlyFollowingDatabase = new ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", ReadOnlyFollowingDatabaseArgs.builder()
///             .clusterName("kustoCluster")
///             .databaseName("kustoReadOnlyDatabase")
///             .hotCachePeriod("P1D")
///             .kind("ReadOnlyFollowing")
///             .location("westus")
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
/// const readOnlyFollowingDatabase = new azure_native.kusto.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", {
///     clusterName: "kustoCluster",
///     databaseName: "kustoReadOnlyDatabase",
///     hotCachePeriod: "P1D",
///     kind: "ReadOnlyFollowing",
///     location: "westus",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// read_only_following_database = azure_native.kusto.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase",
///     cluster_name="kustoCluster",
///     database_name="kustoReadOnlyDatabase",
///     hot_cache_period="P1D",
///     kind="ReadOnlyFollowing",
///     location="westus",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   readOnlyFollowingDatabase:
///     type: azure-native:kusto:ReadOnlyFollowingDatabase
///     properties:
///       clusterName: kustoCluster
///       databaseName: kustoReadOnlyDatabase
///       hotCachePeriod: P1D
///       kind: ReadOnlyFollowing
///       location: westus
///       resourceGroupName: kustorptest
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Kusto ReadWrite database create or update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var readOnlyFollowingDatabase = new AzureNative.Kusto.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", new()
///     {
///         CallerRole = "Admin",
///         ClusterName = "kustoCluster",
///         DatabaseName = "KustoDatabase8",
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
/// 		_, err := kusto.NewReadOnlyFollowingDatabase(ctx, "readOnlyFollowingDatabase", &kusto.ReadOnlyFollowingDatabaseArgs{
/// 			CallerRole:        pulumi.String("Admin"),
/// 			ClusterName:       pulumi.String("kustoCluster"),
/// 			DatabaseName:      pulumi.String("KustoDatabase8"),
/// 			ResourceGroupName: pulumi.String("kustorptest"),
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
/// resource "azure-native_kusto_readonlyfollowingdatabase" "readOnlyFollowingDatabase" {
///   caller_role         = "Admin"
///   cluster_name        = "kustoCluster"
///   database_name       = "KustoDatabase8"
///   resource_group_name = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.ReadOnlyFollowingDatabase;
/// import com.pulumi.azurenative.kusto.ReadOnlyFollowingDatabaseArgs;
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
///         var readOnlyFollowingDatabase = new ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", ReadOnlyFollowingDatabaseArgs.builder()
///             .callerRole("Admin")
///             .clusterName("kustoCluster")
///             .databaseName("KustoDatabase8")
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
/// const readOnlyFollowingDatabase = new azure_native.kusto.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase", {
///     callerRole: "Admin",
///     clusterName: "kustoCluster",
///     databaseName: "KustoDatabase8",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// read_only_following_database = azure_native.kusto.ReadOnlyFollowingDatabase("readOnlyFollowingDatabase",
///     caller_role="Admin",
///     cluster_name="kustoCluster",
///     database_name="KustoDatabase8",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   readOnlyFollowingDatabase:
///     type: azure-native:kusto:ReadOnlyFollowingDatabase
///     properties:
///       callerRole: Admin
///       clusterName: kustoCluster
///       databaseName: KustoDatabase8
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
/// $ pulumi import azure-native:kusto:ReadOnlyFollowingDatabase kustoCluster/KustoDatabase8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/databases/{databaseName}
/// ```
class ReadOnlyFollowingDatabase extends pulumi.CustomResource {
  /// The name of the attached database configuration cluster
  late final pulumi.Output<String> attachedDatabaseConfigurationName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The origin of the following setup.
  late final pulumi.Output<String> databaseShareOrigin;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  late final pulumi.Output<String?> hotCachePeriod;
  /// Kind of the database
  /// Expected value is 'ReadOnlyFollowing'.
  late final pulumi.Output<String> kind;
  /// The name of the leader cluster
  late final pulumi.Output<String> leaderClusterResourceId;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The original database name, before databaseNameOverride or databaseNamePrefix where applied.
  late final pulumi.Output<String> originalDatabaseName;
  /// The principals modification kind of the database
  late final pulumi.Output<String> principalsModificationKind;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  late final pulumi.Output<String> softDeletePeriod;
  /// The statistics of the database.
  late final pulumi.Output<DatabaseStatisticsResponse> statistics;
  /// The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
  late final pulumi.Output<SuspensionDetailsResponse> suspensionDetails;
  /// Table level sharing specifications
  late final pulumi.Output<TableLevelSharingPropertiesResponse> tableLevelSharingProperties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ReadOnlyFollowingDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReadOnlyFollowingDatabase]. {@macro pulumi_kusto_read_only_following_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReadOnlyFollowingDatabase(
    String name, {
    ReadOnlyFollowingDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:ReadOnlyFollowingDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachedDatabaseConfigurationName = registerOutput<String>('attachedDatabaseConfigurationName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databaseShareOrigin = registerOutput<String>('databaseShareOrigin');
    hotCachePeriod = registerOutput<String?>('hotCachePeriod');
    kind = registerOutput<String>('kind');
    leaderClusterResourceId = registerOutput<String>('leaderClusterResourceId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    originalDatabaseName = registerOutput<String>('originalDatabaseName');
    principalsModificationKind = registerOutput<String>('principalsModificationKind');
    provisioningState = registerOutput<String>('provisioningState');
    softDeletePeriod = registerOutput<String>('softDeletePeriod');
    statistics = registerOutput<DatabaseStatisticsResponse>('statistics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseStatisticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    suspensionDetails = registerOutput<SuspensionDetailsResponse>('suspensionDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SuspensionDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableLevelSharingProperties = registerOutput<TableLevelSharingPropertiesResponse>('tableLevelSharingProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableLevelSharingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
