import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_manifest_args.dart';
import 'artifact_manifest_properties_format_response.dart';
import 'system_data_response.dart';

/// Artifact manifest properties.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update the artifact manifest resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var artifactManifest = new AzureNative.HybridNetwork.ArtifactManifest("artifactManifest", new()
///     {
///         ArtifactManifestName = "TestManifest",
///         ArtifactStoreName = "TestArtifactStore",
///         Location = "eastus",
///         Properties = new AzureNative.HybridNetwork.Inputs.ArtifactManifestPropertiesFormatArgs
///         {
///             Artifacts = new[]
///             {
///                 new AzureNative.HybridNetwork.Inputs.ManifestArtifactFormatArgs
///                 {
///                     ArtifactName = "fed-rbac",
///                     ArtifactType = AzureNative.HybridNetwork.ArtifactType.OCIArtifact,
///                     ArtifactVersion = "1.0.0",
///                 },
///                 new AzureNative.HybridNetwork.Inputs.ManifestArtifactFormatArgs
///                 {
///                     ArtifactName = "nginx",
///                     ArtifactType = AzureNative.HybridNetwork.ArtifactType.OCIArtifact,
///                     ArtifactVersion = "v1",
///                 },
///             },
///         },
///         PublisherName = "TestPublisher",
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewArtifactManifest(ctx, "artifactManifest", &hybridnetwork.ArtifactManifestArgs{
/// 			ArtifactManifestName: pulumi.String("TestManifest"),
/// 			ArtifactStoreName:    pulumi.String("TestArtifactStore"),
/// 			Location:             pulumi.String("eastus"),
/// 			Properties: &hybridnetwork.ArtifactManifestPropertiesFormatArgs{
/// 				Artifacts: hybridnetwork.ManifestArtifactFormatArray{
/// 					&hybridnetwork.ManifestArtifactFormatArgs{
/// 						ArtifactName:    pulumi.String("fed-rbac"),
/// 						ArtifactType:    pulumi.String(hybridnetwork.ArtifactTypeOCIArtifact),
/// 						ArtifactVersion: pulumi.String("1.0.0"),
/// 					},
/// 					&hybridnetwork.ManifestArtifactFormatArgs{
/// 						ArtifactName:    pulumi.String("nginx"),
/// 						ArtifactType:    pulumi.String(hybridnetwork.ArtifactTypeOCIArtifact),
/// 						ArtifactVersion: pulumi.String("v1"),
/// 					},
/// 				},
/// 			},
/// 			PublisherName:     pulumi.String("TestPublisher"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.ArtifactManifest;
/// import com.pulumi.azurenative.hybridnetwork.ArtifactManifestArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ArtifactManifestPropertiesFormatArgs;
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
///         var artifactManifest = new ArtifactManifest("artifactManifest", ArtifactManifestArgs.builder()
///             .artifactManifestName("TestManifest")
///             .artifactStoreName("TestArtifactStore")
///             .location("eastus")
///             .properties(ArtifactManifestPropertiesFormatArgs.builder()
///                 .artifacts(
///                     ManifestArtifactFormatArgs.builder()
///                         .artifactName("fed-rbac")
///                         .artifactType("OCIArtifact")
///                         .artifactVersion("1.0.0")
///                         .build(),
///                     ManifestArtifactFormatArgs.builder()
///                         .artifactName("nginx")
///                         .artifactType("OCIArtifact")
///                         .artifactVersion("v1")
///                         .build())
///                 .build())
///             .publisherName("TestPublisher")
///             .resourceGroupName("rg")
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
/// const artifactManifest = new azure_native.hybridnetwork.ArtifactManifest("artifactManifest", {
///     artifactManifestName: "TestManifest",
///     artifactStoreName: "TestArtifactStore",
///     location: "eastus",
///     properties: {
///         artifacts: [
///             {
///                 artifactName: "fed-rbac",
///                 artifactType: azure_native.hybridnetwork.ArtifactType.OCIArtifact,
///                 artifactVersion: "1.0.0",
///             },
///             {
///                 artifactName: "nginx",
///                 artifactType: azure_native.hybridnetwork.ArtifactType.OCIArtifact,
///                 artifactVersion: "v1",
///             },
///         ],
///     },
///     publisherName: "TestPublisher",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// artifact_manifest = azure_native.hybridnetwork.ArtifactManifest("artifactManifest",
///     artifact_manifest_name="TestManifest",
///     artifact_store_name="TestArtifactStore",
///     location="eastus",
///     properties={
///         "artifacts": [
///             {
///                 "artifact_name": "fed-rbac",
///                 "artifact_type": azure_native.hybridnetwork.ArtifactType.OCI_ARTIFACT,
///                 "artifact_version": "1.0.0",
///             },
///             {
///                 "artifact_name": "nginx",
///                 "artifact_type": azure_native.hybridnetwork.ArtifactType.OCI_ARTIFACT,
///                 "artifact_version": "v1",
///             },
///         ],
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   artifactManifest:
///     type: azure-native:hybridnetwork:ArtifactManifest
///     properties:
///       artifactManifestName: TestManifest
///       artifactStoreName: TestArtifactStore
///       location: eastus
///       properties:
///         artifacts:
///           - artifactName: fed-rbac
///             artifactType: OCIArtifact
///             artifactVersion: 1.0.0
///           - artifactName: nginx
///             artifactType: OCIArtifact
///             artifactVersion: v1
///       publisherName: TestPublisher
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:hybridnetwork:ArtifactManifest TestManifest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/publishers/{publisherName}/artifactStores/{artifactStoreName}/artifactManifests/{artifactManifestName}
/// ```
class ArtifactManifest extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Artifact manifest properties.
  late final pulumi.Output<ArtifactManifestPropertiesFormatResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ArtifactManifest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArtifactManifest]. {@macro pulumi_hybridnetwork_artifact_manifest_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArtifactManifest(
    String name, {
    ArtifactManifestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridnetwork:ArtifactManifest',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ArtifactManifestPropertiesFormatResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
