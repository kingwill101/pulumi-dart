import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_app_response.dart';
import 'database_info_response.dart';
import 'mi_sql_connection_info_response.dart';
import 'project_args.dart';
import 'system_data_response.dart';

/// A project resource
///
/// Uses Azure REST API version 2023-07-15-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-30.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Projects_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new AzureNative.DataMigration.Project("project", new()
///     {
///         GroupName = "DmsSdkRg",
///         Location = "southcentralus",
///         ProjectName = "DmsSdkProject",
///         ServiceName = "DmsSdkService",
///         SourcePlatform = AzureNative.DataMigration.ProjectSourcePlatform.SQL,
///         TargetPlatform = AzureNative.DataMigration.ProjectTargetPlatform.SQLDB,
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewProject(ctx, "project", &datamigration.ProjectArgs{
/// 			GroupName:      pulumi.String("DmsSdkRg"),
/// 			Location:       pulumi.String("southcentralus"),
/// 			ProjectName:    pulumi.String("DmsSdkProject"),
/// 			ServiceName:    pulumi.String("DmsSdkService"),
/// 			SourcePlatform: pulumi.String(datamigration.ProjectSourcePlatformSQL),
/// 			TargetPlatform: pulumi.String(datamigration.ProjectTargetPlatformSQLDB),
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
/// import com.pulumi.azurenative.datamigration.Project;
/// import com.pulumi.azurenative.datamigration.ProjectArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .groupName("DmsSdkRg")
///             .location("southcentralus")
///             .projectName("DmsSdkProject")
///             .serviceName("DmsSdkService")
///             .sourcePlatform("SQL")
///             .targetPlatform("SQLDB")
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
/// const project = new azure_native.datamigration.Project("project", {
///     groupName: "DmsSdkRg",
///     location: "southcentralus",
///     projectName: "DmsSdkProject",
///     serviceName: "DmsSdkService",
///     sourcePlatform: azure_native.datamigration.ProjectSourcePlatform.SQL,
///     targetPlatform: azure_native.datamigration.ProjectTargetPlatform.SQLDB,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project = azure_native.datamigration.Project("project",
///     group_name="DmsSdkRg",
///     location="southcentralus",
///     project_name="DmsSdkProject",
///     service_name="DmsSdkService",
///     source_platform=azure_native.datamigration.ProjectSourcePlatform.SQL,
///     target_platform=azure_native.datamigration.ProjectTargetPlatform.SQLDB)
///
/// ```
///
/// ```yaml
/// resources:
///   project:
///     type: azure-native:datamigration:Project
///     properties:
///       groupName: DmsSdkRg
///       location: southcentralus
///       projectName: DmsSdkProject
///       serviceName: DmsSdkService
///       sourcePlatform: SQL
///       targetPlatform: SQLDB
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
/// $ pulumi import azure-native:datamigration:Project DmsSdkProject /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/projects/{projectName}
/// ```
class Project extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Field that defines the Azure active directory application info, used to connect to the target Azure resource
  late final pulumi.Output<AzureActiveDirectoryAppResponse?> azureAuthenticationInfo;
  /// UTC Date and time when project was created
  late final pulumi.Output<String> creationTime;
  /// List of DatabaseInfo
  late final pulumi.Output<List<DatabaseInfoResponse>?> databasesInfo;
  /// HTTP strong entity tag value. This is ignored if submitted.
  late final pulumi.Output<String?> etag;
  late final pulumi.Output<String?> location;
  late final pulumi.Output<String> name;
  /// The project's provisioning state
  late final pulumi.Output<String> provisioningState;
  /// Information for connecting to source
  late final pulumi.Output<MiSqlConnectionInfoResponse?> sourceConnectionInfo;
  /// Source platform for the project
  late final pulumi.Output<String> sourcePlatform;
  late final pulumi.Output<SystemDataResponse> systemData;
  late final pulumi.Output<Map<String, String>?> tags;
  /// Information for connecting to target
  late final pulumi.Output<MiSqlConnectionInfoResponse?> targetConnectionInfo;
  /// Target platform for the project
  late final pulumi.Output<String> targetPlatform;
  late final pulumi.Output<String> type;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_datamigration_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datamigration:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.azureAuthenticationInfo = registerOutput<AzureActiveDirectoryAppResponse?>('azureAuthenticationInfo');
    this.creationTime = registerOutput<String>('creationTime');
    this.databasesInfo = registerOutput<List<DatabaseInfoResponse>?>('databasesInfo');
    this.etag = registerOutput<String?>('etag');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sourceConnectionInfo = registerOutput<MiSqlConnectionInfoResponse?>('sourceConnectionInfo');
    this.sourcePlatform = registerOutput<String>('sourcePlatform');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetConnectionInfo = registerOutput<MiSqlConnectionInfoResponse?>('targetConnectionInfo');
    this.targetPlatform = registerOutput<String>('targetPlatform');
    this.type = registerOutput<String>('type');
  }
}
