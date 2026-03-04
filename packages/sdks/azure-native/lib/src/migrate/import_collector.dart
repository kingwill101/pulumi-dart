import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_collector_args.dart';
import 'import_collector_properties_response.dart';

/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ImportCollectors_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var importCollector = new AzureNative.Migrate.ImportCollector("importCollector", new()
///     {
///         ImportCollectorName = "importCollector2952",
///         ProjectName = "rajoshCCY9671project",
///         ResourceGroupName = "markusavstestrg",
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
/// 		_, err := migrate.NewImportCollector(ctx, "importCollector", &migrate.ImportCollectorArgs{
/// 			ImportCollectorName: pulumi.String("importCollector2952"),
/// 			ProjectName:         pulumi.String("rajoshCCY9671project"),
/// 			ResourceGroupName:   pulumi.String("markusavstestrg"),
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
/// import com.pulumi.azurenative.migrate.ImportCollector;
/// import com.pulumi.azurenative.migrate.ImportCollectorArgs;
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
///         var importCollector = new ImportCollector("importCollector", ImportCollectorArgs.builder()
///             .importCollectorName("importCollector2952")
///             .projectName("rajoshCCY9671project")
///             .resourceGroupName("markusavstestrg")
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
/// const importCollector = new azure_native.migrate.ImportCollector("importCollector", {
///     importCollectorName: "importCollector2952",
///     projectName: "rajoshCCY9671project",
///     resourceGroupName: "markusavstestrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// import_collector = azure_native.migrate.ImportCollector("importCollector",
///     import_collector_name="importCollector2952",
///     project_name="rajoshCCY9671project",
///     resource_group_name="markusavstestrg")
///
/// ```
///
/// ```yaml
/// resources:
///   importCollector:
///     type: azure-native:migrate:ImportCollector
///     properties:
///       importCollectorName: importCollector2952
///       projectName: rajoshCCY9671project
///       resourceGroupName: markusavstestrg
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
/// $ pulumi import azure-native:migrate:ImportCollector importCollector2952 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/importcollectors/{importCollectorName}
/// ```
class ImportCollector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> eTag;
  late final pulumi.Output<String> name;
  late final pulumi.Output<ImportCollectorPropertiesResponse> properties;
  late final pulumi.Output<String> type;

  /// Creates a new [ImportCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportCollector]. {@macro pulumi_migrate_import_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportCollector(
    String name, {
    ImportCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:ImportCollector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ImportCollectorPropertiesResponse>(
      'properties',
    );
    type = registerOutput<String>('type');
  }
}
