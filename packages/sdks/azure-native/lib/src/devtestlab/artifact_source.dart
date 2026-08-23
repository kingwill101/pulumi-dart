import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_source_args.dart';
import 'system_data_response.dart';

/// Properties of an artifact source.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ArtifactSources_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var artifactSource = new AzureNative.DevTestLab.ArtifactSource("artifactSource", new()
///     {
///         ArmTemplateFolderPath = "{armTemplateFolderPath}",
///         BranchRef = "{branchRef}",
///         DisplayName = "{displayName}",
///         FolderPath = "{folderPath}",
///         LabName = "{labName}",
///         Name = "{artifactSourceName}",
///         ResourceGroupName = "resourceGroupName",
///         SecurityToken = "{securityToken}",
///         SourceType = "{VsoGit|GitHub|StorageAccount}",
///         Status = "{Enabled|Disabled}",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
///         Uri = "{artifactSourceUri}",
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewArtifactSource(ctx, "artifactSource", &devtestlab.ArtifactSourceArgs{
/// 			ArmTemplateFolderPath: pulumi.String("{armTemplateFolderPath}"),
/// 			BranchRef:             pulumi.String("{branchRef}"),
/// 			DisplayName:           pulumi.String("{displayName}"),
/// 			FolderPath:            pulumi.String("{folderPath}"),
/// 			LabName:               pulumi.String("{labName}"),
/// 			Name:                  pulumi.String("{artifactSourceName}"),
/// 			ResourceGroupName:     pulumi.String("resourceGroupName"),
/// 			SecurityToken:         pulumi.String("{securityToken}"),
/// 			SourceType:            pulumi.String("{VsoGit|GitHub|StorageAccount}"),
/// 			Status:                pulumi.String("{Enabled|Disabled}"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
/// 			Uri: pulumi.String("{artifactSourceUri}"),
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
/// resource "azure-native_devtestlab_artifactsource" "artifactSource" {
///   arm_template_folder_path = "{armTemplateFolderPath}"
///   branch_ref               = "{branchRef}"
///   display_name             = "{displayName}"
///   folder_path              = "{folderPath}"
///   lab_name                 = "{labName}"
///   name                     = "{artifactSourceName}"
///   resource_group_name      = "resourceGroupName"
///   security_token           = "{securityToken}"
///   source_type              = "{VsoGit|GitHub|StorageAccount}"
///   status                   = "{Enabled|Disabled}"
///   tags = {
///     "tagName1" = "tagValue1"
///   }
///   uri = "{artifactSourceUri}"
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
/// import com.pulumi.azurenative.devtestlab.ArtifactSource;
/// import com.pulumi.azurenative.devtestlab.ArtifactSourceArgs;
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
///         var artifactSource = new ArtifactSource("artifactSource", ArtifactSourceArgs.builder()
///             .armTemplateFolderPath("{armTemplateFolderPath}")
///             .branchRef("{branchRef}")
///             .displayName("{displayName}")
///             .folderPath("{folderPath}")
///             .labName("{labName}")
///             .name("{artifactSourceName}")
///             .resourceGroupName("resourceGroupName")
///             .securityToken("{securityToken}")
///             .sourceType("{VsoGit|GitHub|StorageAccount}")
///             .status("{Enabled|Disabled}")
///             .tags(Map.of("tagName1", "tagValue1"))
///             .uri("{artifactSourceUri}")
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
/// const artifactSource = new azure_native.devtestlab.ArtifactSource("artifactSource", {
///     armTemplateFolderPath: "{armTemplateFolderPath}",
///     branchRef: "{branchRef}",
///     displayName: "{displayName}",
///     folderPath: "{folderPath}",
///     labName: "{labName}",
///     name: "{artifactSourceName}",
///     resourceGroupName: "resourceGroupName",
///     securityToken: "{securityToken}",
///     sourceType: "{VsoGit|GitHub|StorageAccount}",
///     status: "{Enabled|Disabled}",
///     tags: {
///         tagName1: "tagValue1",
///     },
///     uri: "{artifactSourceUri}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// artifact_source = azure_native.devtestlab.ArtifactSource("artifactSource",
///     arm_template_folder_path="{armTemplateFolderPath}",
///     branch_ref="{branchRef}",
///     display_name="{displayName}",
///     folder_path="{folderPath}",
///     lab_name="{labName}",
///     name="{artifactSourceName}",
///     resource_group_name="resourceGroupName",
///     security_token="{securityToken}",
///     source_type="{VsoGit|GitHub|StorageAccount}",
///     status="{Enabled|Disabled}",
///     tags={
///         "tagName1": "tagValue1",
///     },
///     uri="{artifactSourceUri}")
///
/// ```
///
/// ```yaml
/// resources:
///   artifactSource:
///     type: azure-native:devtestlab:ArtifactSource
///     properties:
///       armTemplateFolderPath: '{armTemplateFolderPath}'
///       branchRef: '{branchRef}'
///       displayName: '{displayName}'
///       folderPath: '{folderPath}'
///       labName: '{labName}'
///       name: '{artifactSourceName}'
///       resourceGroupName: resourceGroupName
///       securityToken: '{securityToken}'
///       sourceType: '{VsoGit|GitHub|StorageAccount}'
///       status: '{Enabled|Disabled}'
///       tags:
///         tagName1: tagValue1
///       uri: '{artifactSourceUri}'
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
/// $ pulumi import azure-native:devtestlab:ArtifactSource {artifactSourceName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/artifactsources/{name}
/// ```
class ArtifactSource extends pulumi.CustomResource {
  /// The folder containing Azure Resource Manager templates.
  late final pulumi.Output<String?> armTemplateFolderPath;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The artifact source's branch reference.
  late final pulumi.Output<String?> branchRef;
  /// The artifact source's creation date.
  late final pulumi.Output<String> createdDate;
  /// The artifact source's display name.
  late final pulumi.Output<String?> displayName;
  /// The folder containing artifacts.
  late final pulumi.Output<String?> folderPath;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The security token to authenticate to the artifact source.
  late final pulumi.Output<String?> securityToken;
  /// The artifact source's type.
  late final pulumi.Output<String?> sourceType;
  /// Indicates if the artifact source is enabled (values: Enabled, Disabled).
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;
  /// The artifact source's URI.
  late final pulumi.Output<String?> uri;

  /// Creates a new [ArtifactSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArtifactSource]. {@macro pulumi_devtestlab_artifact_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArtifactSource(
    String name, {
    ArtifactSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:ArtifactSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    armTemplateFolderPath = registerOutput<String?>('armTemplateFolderPath');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    branchRef = registerOutput<String?>('branchRef');
    createdDate = registerOutput<String>('createdDate');
    displayName = registerOutput<String?>('displayName');
    folderPath = registerOutput<String?>('folderPath');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    securityToken = registerOutput<String?>('securityToken');
    sourceType = registerOutput<String?>('sourceType');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    uri = registerOutput<String?>('uri');
  }
}
