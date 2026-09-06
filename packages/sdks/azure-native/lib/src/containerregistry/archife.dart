import 'package:pulumi/pulumi.dart' as pulumi;
import 'archife_args.dart';
import 'archive_package_source_properties_response.dart';
import 'system_data_response.dart';

/// An object that represents a archive for a container registry.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ArchiveCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var archife = new AzureNative.ContainerRegistry.Archife("archife", new()
///     {
///         ArchiveName = "myArchiveName",
///         PackageSource = new AzureNative.ContainerRegistry.Inputs.ArchivePackageSourcePropertiesArgs
///         {
///             Type = AzureNative.ContainerRegistry.PackageSourceType.Remote,
///             Url = "string",
///         },
///         PackageType = "rpm",
///         PublishedVersion = "string",
///         RegistryName = "myRegistry",
///         RepositoryEndpointPrefix = "string",
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
/// 		_, err := containerregistry.NewArchife(ctx, "archife", &containerregistry.ArchifeArgs{
/// 			ArchiveName: pulumi.String("myArchiveName"),
/// 			PackageSource: &containerregistry.ArchivePackageSourcePropertiesArgs{
/// 				Type: pulumi.String(containerregistry.PackageSourceTypeRemote),
/// 				Url:  pulumi.String("string"),
/// 			},
/// 			PackageType:              pulumi.String("rpm"),
/// 			PublishedVersion:         pulumi.String("string"),
/// 			RegistryName:             pulumi.String("myRegistry"),
/// 			RepositoryEndpointPrefix: pulumi.String("string"),
/// 			ResourceGroupName:        pulumi.String("myResourceGroup"),
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
/// resource "azure-native_containerregistry_archife" "archife" {
///   archive_name = "myArchiveName"
///   package_source = {
///     type = "remote"
///     url  = "string"
///   }
///   package_type               = "rpm"
///   published_version          = "string"
///   registry_name              = "myRegistry"
///   repository_endpoint_prefix = "string"
///   resource_group_name        = "myResourceGroup"
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
/// import com.pulumi.azurenative.containerregistry.Archife;
/// import com.pulumi.azurenative.containerregistry.ArchifeArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.ArchivePackageSourcePropertiesArgs;
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
///         var archife = new Archife("archife", ArchifeArgs.builder()
///             .archiveName("myArchiveName")
///             .packageSource(ArchivePackageSourcePropertiesArgs.builder()
///                 .type("remote")
///                 .url("string")
///                 .build())
///             .packageType("rpm")
///             .publishedVersion("string")
///             .registryName("myRegistry")
///             .repositoryEndpointPrefix("string")
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
/// const archife = new azure_native.containerregistry.Archife("archife", {
///     archiveName: "myArchiveName",
///     packageSource: {
///         type: azure_native.containerregistry.PackageSourceType.Remote,
///         url: "string",
///     },
///     packageType: "rpm",
///     publishedVersion: "string",
///     registryName: "myRegistry",
///     repositoryEndpointPrefix: "string",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// archife = azure_native.containerregistry.Archife("archife",
///     archive_name="myArchiveName",
///     package_source={
///         "type": azure_native.containerregistry.PackageSourceType.REMOTE,
///         "url": "string",
///     },
///     package_type="rpm",
///     published_version="string",
///     registry_name="myRegistry",
///     repository_endpoint_prefix="string",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   archife:
///     type: azure-native:containerregistry:Archife
///     properties:
///       archiveName: myArchiveName
///       packageSource:
///         type: remote
///         url: string
///       packageType: rpm
///       publishedVersion: string
///       registryName: myRegistry
///       repositoryEndpointPrefix: string
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
/// $ pulumi import azure-native:containerregistry:Archife myArchiveName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/packages/{packageType}/archives/{archiveName}
/// ```
class Archife extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The package source of the archive.
  late final pulumi.Output<ArchivePackageSourcePropertiesResponse?> packageSource;
  /// The provisioning state of the archive at the time the operation was called.
  late final pulumi.Output<String> provisioningState;
  /// The published version of the archive.
  late final pulumi.Output<String?> publishedVersion;
  late final pulumi.Output<String> repositoryEndpoint;
  late final pulumi.Output<String?> repositoryEndpointPrefix;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Archife].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Archife]. {@macro pulumi_containerregistry_archife_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Archife(
    String name, {
    ArchifeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:Archife',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    packageSource = registerOutput<ArchivePackageSourcePropertiesResponse?>('packageSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArchivePackageSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    publishedVersion = registerOutput<String?>('publishedVersion');
    repositoryEndpoint = registerOutput<String>('repositoryEndpoint');
    repositoryEndpointPrefix = registerOutput<String?>('repositoryEndpointPrefix');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Archife] resource.
  Archife.reference(String urn)
    : super(
        'azure-native:containerregistry:Archife',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    packageSource = registerOutput<ArchivePackageSourcePropertiesResponse?>('packageSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArchivePackageSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    publishedVersion = registerOutput<String?>('publishedVersion');
    repositoryEndpoint = registerOutput<String>('repositoryEndpoint');
    repositoryEndpointPrefix = registerOutput<String?>('repositoryEndpointPrefix');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
