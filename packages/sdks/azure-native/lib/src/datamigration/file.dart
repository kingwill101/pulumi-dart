import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_args.dart';
import 'project_file_properties_response.dart';
import 'system_data_response.dart';

/// A file resource
///
/// Uses Azure REST API version 2023-07-15-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-30.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Files_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var file = new AzureNative.DataMigration.File("file", new()
///     {
///         FileName = "x114d023d8",
///         GroupName = "DmsSdkRg",
///         ProjectName = "DmsSdkProject",
///         Properties = new AzureNative.DataMigration.Inputs.ProjectFilePropertiesArgs
///         {
///             FilePath = "DmsSdkFilePath/DmsSdkFile.sql",
///         },
///         ServiceName = "DmsSdkService",
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
/// 		_, err := datamigration.NewFile(ctx, "file", &datamigration.FileArgs{
/// 			FileName:    pulumi.String("x114d023d8"),
/// 			GroupName:   pulumi.String("DmsSdkRg"),
/// 			ProjectName: pulumi.String("DmsSdkProject"),
/// 			Properties: &datamigration.ProjectFilePropertiesArgs{
/// 				FilePath: pulumi.String("DmsSdkFilePath/DmsSdkFile.sql"),
/// 			},
/// 			ServiceName: pulumi.String("DmsSdkService"),
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
/// resource "azure-native_datamigration_file" "file" {
///   file_name    = "x114d023d8"
///   group_name   = "DmsSdkRg"
///   project_name = "DmsSdkProject"
///   properties = {
///     file_path = "DmsSdkFilePath/DmsSdkFile.sql"
///   }
///   service_name = "DmsSdkService"
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
/// import com.pulumi.azurenative.datamigration.File;
/// import com.pulumi.azurenative.datamigration.FileArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ProjectFilePropertiesArgs;
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
///         var file = new File("file", FileArgs.builder()
///             .fileName("x114d023d8")
///             .groupName("DmsSdkRg")
///             .projectName("DmsSdkProject")
///             .properties(ProjectFilePropertiesArgs.builder()
///                 .filePath("DmsSdkFilePath/DmsSdkFile.sql")
///                 .build())
///             .serviceName("DmsSdkService")
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
/// const file = new azure_native.datamigration.File("file", {
///     fileName: "x114d023d8",
///     groupName: "DmsSdkRg",
///     projectName: "DmsSdkProject",
///     properties: {
///         filePath: "DmsSdkFilePath/DmsSdkFile.sql",
///     },
///     serviceName: "DmsSdkService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file = azure_native.datamigration.File("file",
///     file_name="x114d023d8",
///     group_name="DmsSdkRg",
///     project_name="DmsSdkProject",
///     properties={
///         "file_path": "DmsSdkFilePath/DmsSdkFile.sql",
///     },
///     service_name="DmsSdkService")
///
/// ```
///
/// ```yaml
/// resources:
///   file:
///     type: azure-native:datamigration:File
///     properties:
///       fileName: x114d023d8
///       groupName: DmsSdkRg
///       projectName: DmsSdkProject
///       properties:
///         filePath: DmsSdkFilePath/DmsSdkFile.sql
///       serviceName: DmsSdkService
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
/// $ pulumi import azure-native:datamigration:File x114d023d8 /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/projects/{projectName}/files/{fileName}
/// ```
class File extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// HTTP strong entity tag value. This is ignored if submitted.
  late final pulumi.Output<String?> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Custom file properties
  late final pulumi.Output<ProjectFilePropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [File].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [File]. {@macro pulumi_datamigration_file_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  File(
    String name, {
    FileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datamigration:File',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProjectFilePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectFilePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
