import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_version_args.dart';
import 'system_data_response.dart';

/// An object that represents an export pipeline for a container registry.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ArchiveVersionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var archiveVersion = new AzureNative.ContainerRegistry.ArchiveVersion("archiveVersion", new()
///     {
///         ArchiveName = "myArchiveName",
///         ArchiveVersionName = "myArchiveVersionName",
///         PackageType = "rpm",
///         RegistryName = "myRegistry",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewArchiveVersion(ctx, "archiveVersion", &containerregistry.ArchiveVersionArgs{
/// 			ArchiveName:        pulumi.String("myArchiveName"),
/// 			ArchiveVersionName: pulumi.String("myArchiveVersionName"),
/// 			PackageType:        pulumi.String("rpm"),
/// 			RegistryName:       pulumi.String("myRegistry"),
/// 			ResourceGroupName:  pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.containerregistry.ArchiveVersion;
/// import com.pulumi.azurenative.containerregistry.ArchiveVersionArgs;
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
///         var archiveVersion = new ArchiveVersion("archiveVersion", ArchiveVersionArgs.builder()
///             .archiveName("myArchiveName")
///             .archiveVersionName("myArchiveVersionName")
///             .packageType("rpm")
///             .registryName("myRegistry")
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
/// const archiveVersion = new azure_native.containerregistry.ArchiveVersion("archiveVersion", {
///     archiveName: "myArchiveName",
///     archiveVersionName: "myArchiveVersionName",
///     packageType: "rpm",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// archive_version = azure_native.containerregistry.ArchiveVersion("archiveVersion",
///     archive_name="myArchiveName",
///     archive_version_name="myArchiveVersionName",
///     package_type="rpm",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   archiveVersion:
///     type: azure-native:containerregistry:ArchiveVersion
///     properties:
///       archiveName: myArchiveName
///       archiveVersionName: myArchiveVersionName
///       packageType: rpm
///       registryName: myRegistry
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
/// $ pulumi import azure-native:containerregistry:ArchiveVersion myArchiveVersionName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/packages/{packageType}/archives/{archiveName}/versions/{archiveVersionName}
/// ```
class ArchiveVersion extends pulumi.CustomResource {
  /// The detailed error message for the archive version in the case of failure.
  late final pulumi.Output<String?> archiveVersionErrorMessage;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The provisioning state of the archive at the time the operation was called.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ArchiveVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArchiveVersion]. {@macro pulumi_containerregistry_archive_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArchiveVersion(
    String name, {
    ArchiveVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:ArchiveVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.archiveVersionErrorMessage = registerOutput<String?>('archiveVersionErrorMessage');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
