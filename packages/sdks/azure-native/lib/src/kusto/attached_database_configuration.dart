import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_database_configuration_args.dart';
import 'table_level_sharing_properties_response.dart';

/// Class representing an attached database configuration.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// Other available API versions: 2019-09-07, 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15, 2025-02-14. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AttachedDatabaseConfigurationsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var attachedDatabaseConfiguration = new AzureNative.Kusto.AttachedDatabaseConfiguration("attachedDatabaseConfiguration", new()
///     {
///         AttachedDatabaseConfigurationName = "attachedDatabaseConfigurationsTest",
///         ClusterName = "kustoCluster2",
///         ClusterResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Kusto/Clusters/kustoCluster2",
///         DatabaseName = "kustodatabase",
///         DatabaseNameOverride = "overridekustodatabase",
///         DefaultPrincipalsModificationKind = AzureNative.Kusto.DefaultPrincipalsModificationKind.Union,
///         Location = "westus",
///         ResourceGroupName = "kustorptest",
///         TableLevelSharingProperties = new AzureNative.Kusto.Inputs.TableLevelSharingPropertiesArgs
///         {
///             ExternalTablesToExclude = new[]
///             {
///                 "ExternalTable2",
///             },
///             ExternalTablesToInclude = new[]
///             {
///                 "ExternalTable1",
///             },
///             MaterializedViewsToExclude = new[]
///             {
///                 "MaterializedViewTable2",
///             },
///             MaterializedViewsToInclude = new[]
///             {
///                 "MaterializedViewTable1",
///             },
///             TablesToExclude = new[]
///             {
///                 "Table2",
///             },
///             TablesToInclude = new[]
///             {
///                 "Table1",
///             },
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewAttachedDatabaseConfiguration(ctx, "attachedDatabaseConfiguration", &kusto.AttachedDatabaseConfigurationArgs{
/// 			AttachedDatabaseConfigurationName: pulumi.String("attachedDatabaseConfigurationsTest"),
/// 			ClusterName:                       pulumi.String("kustoCluster2"),
/// 			ClusterResourceId:                 pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Kusto/Clusters/kustoCluster2"),
/// 			DatabaseName:                      pulumi.String("kustodatabase"),
/// 			DatabaseNameOverride:              pulumi.String("overridekustodatabase"),
/// 			DefaultPrincipalsModificationKind: pulumi.String(kusto.DefaultPrincipalsModificationKindUnion),
/// 			Location:                          pulumi.String("westus"),
/// 			ResourceGroupName:                 pulumi.String("kustorptest"),
/// 			TableLevelSharingProperties: &kusto.TableLevelSharingPropertiesArgs{
/// 				ExternalTablesToExclude: pulumi.StringArray{
/// 					pulumi.String("ExternalTable2"),
/// 				},
/// 				ExternalTablesToInclude: pulumi.StringArray{
/// 					pulumi.String("ExternalTable1"),
/// 				},
/// 				MaterializedViewsToExclude: pulumi.StringArray{
/// 					pulumi.String("MaterializedViewTable2"),
/// 				},
/// 				MaterializedViewsToInclude: pulumi.StringArray{
/// 					pulumi.String("MaterializedViewTable1"),
/// 				},
/// 				TablesToExclude: pulumi.StringArray{
/// 					pulumi.String("Table2"),
/// 				},
/// 				TablesToInclude: pulumi.StringArray{
/// 					pulumi.String("Table1"),
/// 				},
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
/// resource "azure-native_kusto_attacheddatabaseconfiguration" "attachedDatabaseConfiguration" {
///   attached_database_configuration_name = "attachedDatabaseConfigurationsTest"
///   cluster_name                         = "kustoCluster2"
///   cluster_resource_id                  = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Kusto/Clusters/kustoCluster2"
///   database_name                        = "kustodatabase"
///   database_name_override               = "overridekustodatabase"
///   default_principals_modification_kind = "Union"
///   location                             = "westus"
///   resource_group_name                  = "kustorptest"
///   table_level_sharing_properties = {
///     external_tables_to_exclude    = ["ExternalTable2"]
///     external_tables_to_include    = ["ExternalTable1"]
///     materialized_views_to_exclude = ["MaterializedViewTable2"]
///     materialized_views_to_include = ["MaterializedViewTable1"]
///     tables_to_exclude             = ["Table2"]
///     tables_to_include             = ["Table1"]
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
/// import com.pulumi.azurenative.kusto.AttachedDatabaseConfiguration;
/// import com.pulumi.azurenative.kusto.AttachedDatabaseConfigurationArgs;
/// import com.pulumi.azurenative.kusto.inputs.TableLevelSharingPropertiesArgs;
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
///         var attachedDatabaseConfiguration = new AttachedDatabaseConfiguration("attachedDatabaseConfiguration", AttachedDatabaseConfigurationArgs.builder()
///             .attachedDatabaseConfigurationName("attachedDatabaseConfigurationsTest")
///             .clusterName("kustoCluster2")
///             .clusterResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Kusto/Clusters/kustoCluster2")
///             .databaseName("kustodatabase")
///             .databaseNameOverride("overridekustodatabase")
///             .defaultPrincipalsModificationKind("Union")
///             .location("westus")
///             .resourceGroupName("kustorptest")
///             .tableLevelSharingProperties(TableLevelSharingPropertiesArgs.builder()
///                 .externalTablesToExclude("ExternalTable2")
///                 .externalTablesToInclude("ExternalTable1")
///                 .materializedViewsToExclude("MaterializedViewTable2")
///                 .materializedViewsToInclude("MaterializedViewTable1")
///                 .tablesToExclude("Table2")
///                 .tablesToInclude("Table1")
///                 .build())
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
/// const attachedDatabaseConfiguration = new azure_native.kusto.AttachedDatabaseConfiguration("attachedDatabaseConfiguration", {
///     attachedDatabaseConfigurationName: "attachedDatabaseConfigurationsTest",
///     clusterName: "kustoCluster2",
///     clusterResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Kusto/Clusters/kustoCluster2",
///     databaseName: "kustodatabase",
///     databaseNameOverride: "overridekustodatabase",
///     defaultPrincipalsModificationKind: azure_native.kusto.DefaultPrincipalsModificationKind.Union,
///     location: "westus",
///     resourceGroupName: "kustorptest",
///     tableLevelSharingProperties: {
///         externalTablesToExclude: ["ExternalTable2"],
///         externalTablesToInclude: ["ExternalTable1"],
///         materializedViewsToExclude: ["MaterializedViewTable2"],
///         materializedViewsToInclude: ["MaterializedViewTable1"],
///         tablesToExclude: ["Table2"],
///         tablesToInclude: ["Table1"],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// attached_database_configuration = azure_native.kusto.AttachedDatabaseConfiguration("attachedDatabaseConfiguration",
///     attached_database_configuration_name="attachedDatabaseConfigurationsTest",
///     cluster_name="kustoCluster2",
///     cluster_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Kusto/Clusters/kustoCluster2",
///     database_name="kustodatabase",
///     database_name_override="overridekustodatabase",
///     default_principals_modification_kind=azure_native.kusto.DefaultPrincipalsModificationKind.UNION,
///     location="westus",
///     resource_group_name="kustorptest",
///     table_level_sharing_properties={
///         "external_tables_to_exclude": ["ExternalTable2"],
///         "external_tables_to_include": ["ExternalTable1"],
///         "materialized_views_to_exclude": ["MaterializedViewTable2"],
///         "materialized_views_to_include": ["MaterializedViewTable1"],
///         "tables_to_exclude": ["Table2"],
///         "tables_to_include": ["Table1"],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   attachedDatabaseConfiguration:
///     type: azure-native:kusto:AttachedDatabaseConfiguration
///     properties:
///       attachedDatabaseConfigurationName: attachedDatabaseConfigurationsTest
///       clusterName: kustoCluster2
///       clusterResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Kusto/Clusters/kustoCluster2
///       databaseName: kustodatabase
///       databaseNameOverride: overridekustodatabase
///       defaultPrincipalsModificationKind: Union
///       location: westus
///       resourceGroupName: kustorptest
///       tableLevelSharingProperties:
///         externalTablesToExclude:
///           - ExternalTable2
///         externalTablesToInclude:
///           - ExternalTable1
///         materializedViewsToExclude:
///           - MaterializedViewTable2
///         materializedViewsToInclude:
///           - MaterializedViewTable1
///         tablesToExclude:
///           - Table2
///         tablesToInclude:
///           - Table1
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
/// $ pulumi import azure-native:kusto:AttachedDatabaseConfiguration kustoCluster2/attachedDatabaseConfigurationsTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/attachedDatabaseConfigurations/{attachedDatabaseConfigurationName}
/// ```
class AttachedDatabaseConfiguration extends pulumi.CustomResource {
  /// The list of databases from the clusterResourceId which are currently attached to the cluster.
  late final pulumi.Output<List<String>> attachedDatabaseNames;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource id of the cluster where the databases you would like to attach reside.
  late final pulumi.Output<String> clusterResourceId;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  late final pulumi.Output<String> databaseName;
  /// Overrides the original database name. Relevant only when attaching to a specific database.
  late final pulumi.Output<String?> databaseNameOverride;
  /// Adds a prefix to the attached databases name. When following an entire cluster, that prefix would be added to all of the databases original names from leader cluster.
  late final pulumi.Output<String?> databaseNamePrefix;
  /// The default principals modification kind
  late final pulumi.Output<String> defaultPrincipalsModificationKind;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Table level sharing specifications
  late final pulumi.Output<TableLevelSharingPropertiesResponse?> tableLevelSharingProperties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AttachedDatabaseConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttachedDatabaseConfiguration]. {@macro pulumi_kusto_attached_database_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttachedDatabaseConfiguration(
    String name, {
    AttachedDatabaseConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:AttachedDatabaseConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachedDatabaseNames = registerOutput<List<String>>('attachedDatabaseNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    databaseName = registerOutput<String>('databaseName');
    databaseNameOverride = registerOutput<String?>('databaseNameOverride');
    databaseNamePrefix = registerOutput<String?>('databaseNamePrefix');
    defaultPrincipalsModificationKind = registerOutput<String>('defaultPrincipalsModificationKind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tableLevelSharingProperties = registerOutput<TableLevelSharingPropertiesResponse?>('tableLevelSharingProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableLevelSharingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AttachedDatabaseConfiguration] resource.
  AttachedDatabaseConfiguration.reference(String urn)
    : super(
        'azure-native:kusto:AttachedDatabaseConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attachedDatabaseNames = registerOutput<List<String>>('attachedDatabaseNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    databaseName = registerOutput<String>('databaseName');
    databaseNameOverride = registerOutput<String?>('databaseNameOverride');
    databaseNamePrefix = registerOutput<String?>('databaseNamePrefix');
    defaultPrincipalsModificationKind = registerOutput<String>('defaultPrincipalsModificationKind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tableLevelSharingProperties = registerOutput<TableLevelSharingPropertiesResponse?>('tableLevelSharingProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableLevelSharingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
