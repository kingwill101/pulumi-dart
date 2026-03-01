import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_sql_collector_operation_args.dart';
import 'import_sql_collector_properties_response.dart';
import 'system_data_response.dart';

/// Import SQL Collector REST resource.
///
/// Uses Azure REST API version 2024-03-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ImportSqlCollectorOperations_Create_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var importSqlCollectorOperation = new AzureNative.Migrate.ImportSqlCollectorOperation("importSqlCollectorOperation", new()
///     {
///         ImportSqlCollectorsName = "importCollector",
///         ProjectName = "contosoProject",
///         Properties = new AzureNative.Migrate.Inputs.ImportSqlCollectorPropertiesArgs
///         {
///             DiscoverySiteId = "/subscriptions/C1DB66AE-BCF9-42FD-ADC2-390E0721C351/resourceGroups/rgsqlAssessments/providers/Microsoft.OffAzure/MasterSites/testproject8566mastersite/SqlSites/testproject8566sqlsites",
///         },
///         ResourceGroupName = "rgsqlAssessments",
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewImportSqlCollectorOperation(ctx, "importSqlCollectorOperation", &migrate.ImportSqlCollectorOperationArgs{
/// 			ImportSqlCollectorsName: pulumi.String("importCollector"),
/// 			ProjectName:             pulumi.String("contosoProject"),
/// 			Properties: &migrate.ImportSqlCollectorPropertiesArgs{
/// 				DiscoverySiteId: pulumi.String("/subscriptions/C1DB66AE-BCF9-42FD-ADC2-390E0721C351/resourceGroups/rgsqlAssessments/providers/Microsoft.OffAzure/MasterSites/testproject8566mastersite/SqlSites/testproject8566sqlsites"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsqlAssessments"),
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
/// import com.pulumi.azurenative.migrate.ImportSqlCollectorOperation;
/// import com.pulumi.azurenative.migrate.ImportSqlCollectorOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.ImportSqlCollectorPropertiesArgs;
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
///         var importSqlCollectorOperation = new ImportSqlCollectorOperation("importSqlCollectorOperation", ImportSqlCollectorOperationArgs.builder()
///             .importSqlCollectorsName("importCollector")
///             .projectName("contosoProject")
///             .properties(ImportSqlCollectorPropertiesArgs.builder()
///                 .discoverySiteId("/subscriptions/C1DB66AE-BCF9-42FD-ADC2-390E0721C351/resourceGroups/rgsqlAssessments/providers/Microsoft.OffAzure/MasterSites/testproject8566mastersite/SqlSites/testproject8566sqlsites")
///                 .build())
///             .resourceGroupName("rgsqlAssessments")
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
/// const importSqlCollectorOperation = new azure_native.migrate.ImportSqlCollectorOperation("importSqlCollectorOperation", {
///     importSqlCollectorsName: "importCollector",
///     projectName: "contosoProject",
///     properties: {
///         discoverySiteId: "/subscriptions/C1DB66AE-BCF9-42FD-ADC2-390E0721C351/resourceGroups/rgsqlAssessments/providers/Microsoft.OffAzure/MasterSites/testproject8566mastersite/SqlSites/testproject8566sqlsites",
///     },
///     resourceGroupName: "rgsqlAssessments",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// import_sql_collector_operation = azure_native.migrate.ImportSqlCollectorOperation("importSqlCollectorOperation",
///     import_sql_collectors_name="importCollector",
///     project_name="contosoProject",
///     properties={
///         "discovery_site_id": "/subscriptions/C1DB66AE-BCF9-42FD-ADC2-390E0721C351/resourceGroups/rgsqlAssessments/providers/Microsoft.OffAzure/MasterSites/testproject8566mastersite/SqlSites/testproject8566sqlsites",
///     },
///     resource_group_name="rgsqlAssessments")
///
/// ```
///
/// ```yaml
/// resources:
///   importSqlCollectorOperation:
///     type: azure-native:migrate:ImportSqlCollectorOperation
///     properties:
///       importSqlCollectorsName: importCollector
///       projectName: contosoProject
///       properties:
///         discoverySiteId: /subscriptions/C1DB66AE-BCF9-42FD-ADC2-390E0721C351/resourceGroups/rgsqlAssessments/providers/Microsoft.OffAzure/MasterSites/testproject8566mastersite/SqlSites/testproject8566sqlsites
///       resourceGroupName: rgsqlAssessments
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
/// $ pulumi import azure-native:migrate:ImportSqlCollectorOperation importCollector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/importSqlCollectors/{importSqlCollectorsName}
/// ```
class ImportSqlCollectorOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ImportSqlCollectorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ImportSqlCollectorOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportSqlCollectorOperation]. {@macro pulumi_migrate_import_sql_collector_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportSqlCollectorOperation(
    String name, {
    ImportSqlCollectorOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:ImportSqlCollectorOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ImportSqlCollectorPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
