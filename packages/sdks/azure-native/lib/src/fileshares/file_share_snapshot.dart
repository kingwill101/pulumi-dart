import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_snapshot_args.dart';
import 'file_share_snapshot_properties_response.dart';
import 'system_data_response.dart';

/// FileShareSnapshot resource
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### FileShareSnapshot_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileShareSnapshot = new AzureNative.FileShares.FileShareSnapshot("fileShareSnapshot", new()
///     {
///         Name = "testfilesharesnapshot",
///         Properties = new AzureNative.FileShares.Inputs.FileShareSnapshotPropertiesArgs
///         {
///             Metadata =
///             {
///                 { "key9372", "jtc" },
///             },
///         },
///         ResourceGroupName = "rgfileshares",
///         ResourceName = "fileshare",
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
/// 	fileshares "github.com/pulumi/pulumi-azure-native-sdk/fileshares/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fileshares.NewFileShareSnapshot(ctx, "fileShareSnapshot", &fileshares.FileShareSnapshotArgs{
/// 			Name: pulumi.String("testfilesharesnapshot"),
/// 			Properties: &fileshares.FileShareSnapshotPropertiesArgs{
/// 				Metadata: pulumi.StringMap{
/// 					"key9372": pulumi.String("jtc"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgfileshares"),
/// 			ResourceName:      pulumi.String("fileshare"),
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
/// import com.pulumi.azurenative.fileshares.FileShareSnapshot;
/// import com.pulumi.azurenative.fileshares.FileShareSnapshotArgs;
/// import com.pulumi.azurenative.fileshares.inputs.FileShareSnapshotPropertiesArgs;
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
///         var fileShareSnapshot = new FileShareSnapshot("fileShareSnapshot", FileShareSnapshotArgs.builder()
///             .name("testfilesharesnapshot")
///             .properties(FileShareSnapshotPropertiesArgs.builder()
///                 .metadata(Map.of("key9372", "jtc"))
///                 .build())
///             .resourceGroupName("rgfileshares")
///             .resourceName("fileshare")
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
/// const fileShareSnapshot = new azure_native.fileshares.FileShareSnapshot("fileShareSnapshot", {
///     name: "testfilesharesnapshot",
///     properties: {
///         metadata: {
///             key9372: "jtc",
///         },
///     },
///     resourceGroupName: "rgfileshares",
///     resourceName: "fileshare",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_share_snapshot = azure_native.fileshares.FileShareSnapshot("fileShareSnapshot",
///     name="testfilesharesnapshot",
///     properties={
///         "metadata": {
///             "key9372": "jtc",
///         },
///     },
///     resource_group_name="rgfileshares",
///     resource_name_="fileshare")
///
/// ```
///
/// ```yaml
/// resources:
///   fileShareSnapshot:
///     type: azure-native:fileshares:FileShareSnapshot
///     properties:
///       name: testfilesharesnapshot
///       properties:
///         metadata:
///           key9372: jtc
///       resourceGroupName: rgfileshares
///       resourceName: fileshare
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
/// $ pulumi import azure-native:fileshares:FileShareSnapshot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.FileShares/fileShares/{resourceName}/fileShareSnapshots/{name}
/// ```
class FileShareSnapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<FileShareSnapshotPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FileShareSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileShareSnapshot]. {@macro pulumi_fileshares_file_share_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileShareSnapshot(
    String name, {
    FileShareSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:fileshares:FileShareSnapshot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FileShareSnapshotPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
