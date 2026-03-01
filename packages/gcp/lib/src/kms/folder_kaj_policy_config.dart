import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_kaj_policy_config_args.dart';
import 'folder_kaj_policy_config_default_key_access_justification_policy.dart';

/// ## Example Usage
///
/// ### Kms Folder Kaj Policy Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
/// import * as time from "@pulumiverse/time";
///
/// // Create Folder in GCP Organization.
/// const kajFolder = new gcp.organizations.Folder("kaj_folder", {
///     displayName: "folder-kajc",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const projectSuffix = new random.index.Id("project_suffix", {byteLength: 4});
/// // Create a project for enabling KMS API.
/// const kmsProject = new gcp.organizations.Project("kms_project", {
///     projectId: `kms-api-project${projectSuffix.hex}`,
///     name: `kms-api-project${projectSuffix.hex}`,
///     folderId: kajFolder.folderId,
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// }, {
///     dependsOn: [kajFolder],
/// });
/// // Enable the Cloud KMS API.
/// const kmsApiService = new gcp.projects.Service("kms_api_service", {
///     service: "cloudkms.googleapis.com",
///     project: kmsProject.projectId,
///     disableDependentServices: true,
/// }, {
///     dependsOn: [kmsProject],
/// });
/// const waitEnableServiceApi = new time.Sleep("wait_enable_service_api", {createDuration: "30s"}, {
///     dependsOn: [kmsApiService],
/// });
/// // Update folder level KAJ default policy
/// const example = new gcp.kms.FolderKajPolicyConfig("example", {
///     folder: kajFolder.folderId,
///     defaultKeyAccessJustificationPolicy: {
///         allowedAccessReasons: [
///             "CUSTOMER_INITIATED_ACCESS",
///             "GOOGLE_INITIATED_SYSTEM_OPERATION",
///         ],
///     },
/// }, {
///     dependsOn: [waitEnableServiceApi],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
/// import pulumiverse_time as time
///
/// # Create Folder in GCP Organization.
/// kaj_folder = gcp.organizations.Folder("kaj_folder",
///     display_name="folder-kajc",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// project_suffix = random.index.Id("project_suffix", byte_length=4)
/// # Create a project for enabling KMS API.
/// kms_project = gcp.organizations.Project("kms_project",
///     project_id=f"kms-api-project{project_suffix['hex']}",
///     name=f"kms-api-project{project_suffix['hex']}",
///     folder_id=kaj_folder.folder_id,
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE",
///     opts = pulumi.ResourceOptions(depends_on=[kaj_folder]))
/// # Enable the Cloud KMS API.
/// kms_api_service = gcp.projects.Service("kms_api_service",
///     service="cloudkms.googleapis.com",
///     project=kms_project.project_id,
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[kms_project]))
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[kms_api_service]))
/// # Update folder level KAJ default policy
/// example = gcp.kms.FolderKajPolicyConfig("example",
///     folder=kaj_folder.folder_id,
///     default_key_access_justification_policy={
///         "allowed_access_reasons": [
///             "CUSTOMER_INITIATED_ACCESS",
///             "GOOGLE_INITIATED_SYSTEM_OPERATION",
///         ],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create Folder in GCP Organization.
///     var kajFolder = new Gcp.Organizations.Folder("kaj_folder", new()
///     {
///         DisplayName = "folder-kajc",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var projectSuffix = new Random.Index.Id("project_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     // Create a project for enabling KMS API.
///     var kmsProject = new Gcp.Organizations.Project("kms_project", new()
///     {
///         ProjectId = $"kms-api-project{projectSuffix.Hex}",
///         Name = $"kms-api-project{projectSuffix.Hex}",
///         FolderId = kajFolder.FolderId,
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kajFolder,
///         },
///     });
///
///     // Enable the Cloud KMS API.
///     var kmsApiService = new Gcp.Projects.Service("kms_api_service", new()
///     {
///         ServiceName = "cloudkms.googleapis.com",
///         Project = kmsProject.ProjectId,
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kmsProject,
///         },
///     });
///
///     var waitEnableServiceApi = new Time.Sleep("wait_enable_service_api", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kmsApiService,
///         },
///     });
///
///     // Update folder level KAJ default policy
///     var example = new Gcp.Kms.FolderKajPolicyConfig("example", new()
///     {
///         Folder = kajFolder.FolderId,
///         DefaultKeyAccessJustificationPolicy = new Gcp.Kms.Inputs.FolderKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs
///         {
///             AllowedAccessReasons = new[]
///             {
///                 "CUSTOMER_INITIATED_ACCESS",
///                 "GOOGLE_INITIATED_SYSTEM_OPERATION",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitEnableServiceApi,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create Folder in GCP Organization.
/// 		kajFolder, err := organizations.NewFolder(ctx, "kaj_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder-kajc"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		projectSuffix, err := random.NewId(ctx, "project_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a project for enabling KMS API.
/// 		kmsProject, err := organizations.NewProject(ctx, "kms_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.Sprintf("kms-api-project%v", projectSuffix.Hex),
/// 			Name:           pulumi.Sprintf("kms-api-project%v", projectSuffix.Hex),
/// 			FolderId:       kajFolder.FolderId,
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kajFolder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable the Cloud KMS API.
/// 		kmsApiService, err := projects.NewService(ctx, "kms_api_service", &projects.ServiceArgs{
/// 			Service:                  pulumi.String("cloudkms.googleapis.com"),
/// 			Project:                  kmsProject.ProjectId,
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kmsProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitEnableServiceApi, err := time.NewSleep(ctx, "wait_enable_service_api", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kmsApiService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Update folder level KAJ default policy
/// 		_, err = kms.NewFolderKajPolicyConfig(ctx, "example", &kms.FolderKajPolicyConfigArgs{
/// 			Folder: kajFolder.FolderId,
/// 			DefaultKeyAccessJustificationPolicy: &kms.FolderKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs{
/// 				AllowedAccessReasons: pulumi.StringArray{
/// 					pulumi.String("CUSTOMER_INITIATED_ACCESS"),
/// 					pulumi.String("GOOGLE_INITIATED_SYSTEM_OPERATION"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitEnableServiceApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.kms.FolderKajPolicyConfig;
/// import com.pulumi.gcp.kms.FolderKajPolicyConfigArgs;
/// import com.pulumi.gcp.kms.inputs.FolderKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         // Create Folder in GCP Organization.
///         var kajFolder = new Folder("kajFolder", FolderArgs.builder()
///             .displayName("folder-kajc")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var projectSuffix = new Id("projectSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         // Create a project for enabling KMS API.
///         var kmsProject = new Project("kmsProject", ProjectArgs.builder()
///             .projectId(String.format("kms-api-project%s", projectSuffix.hex()))
///             .name(String.format("kms-api-project%s", projectSuffix.hex()))
///             .folderId(kajFolder.folderId())
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kajFolder)
///                 .build());
///
///         // Enable the Cloud KMS API.
///         var kmsApiService = new Service("kmsApiService", ServiceArgs.builder()
///             .service("cloudkms.googleapis.com")
///             .project(kmsProject.projectId())
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsProject)
///                 .build());
///
///         var waitEnableServiceApi = new Sleep("waitEnableServiceApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsApiService)
///                 .build());
///
///         // Update folder level KAJ default policy
///         var example = new FolderKajPolicyConfig("example", FolderKajPolicyConfigArgs.builder()
///             .folder(kajFolder.folderId())
///             .defaultKeyAccessJustificationPolicy(FolderKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs.builder()
///                 .allowedAccessReasons(
///                     "CUSTOMER_INITIATED_ACCESS",
///                     "GOOGLE_INITIATED_SYSTEM_OPERATION")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitEnableServiceApi)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create Folder in GCP Organization.
///   kajFolder:
///     type: gcp:organizations:Folder
///     name: kaj_folder
///     properties:
///       displayName: folder-kajc
///       parent: organizations/123456789
///       deletionProtection: false
///   projectSuffix:
///     type: random:Id
///     name: project_suffix
///     properties:
///       byteLength: 4
///   # Create a project for enabling KMS API.
///   kmsProject:
///     type: gcp:organizations:Project
///     name: kms_project
///     properties:
///       projectId: kms-api-project${projectSuffix.hex}
///       name: kms-api-project${projectSuffix.hex}
///       folderId: ${kajFolder.folderId}
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///     options:
///       dependsOn:
///         - ${kajFolder}
///   # Enable the Cloud KMS API.
///   kmsApiService:
///     type: gcp:projects:Service
///     name: kms_api_service
///     properties:
///       service: cloudkms.googleapis.com
///       project: ${kmsProject.projectId}
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${kmsProject}
///   waitEnableServiceApi:
///     type: time:Sleep
///     name: wait_enable_service_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${kmsApiService}
///   # Update folder level KAJ default policy
///   example:
///     type: gcp:kms:FolderKajPolicyConfig
///     properties:
///       folder: ${kajFolder.folderId}
///       defaultKeyAccessJustificationPolicy:
///         allowedAccessReasons:
///           - CUSTOMER_INITIATED_ACCESS
///           - GOOGLE_INITIATED_SYSTEM_OPERATION
///     options:
///       dependsOn:
///         - ${waitEnableServiceApi}
/// ```
///
///
/// ## Import
///
/// FolderKajPolicyConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/kajPolicyConfig`
///
/// * `{{folder}}`
///
/// When using the `pulumi import` command, FolderKajPolicyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig default folders/{{folder}}/kajPolicyConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig default {{folder}}
/// ```
class FolderKajPolicyConfig extends pulumi.CustomResource {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this folder. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  late final pulumi.Output<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?> defaultKeyAccessJustificationPolicy;
  /// The numeric folder number for which to retrieve config.
  late final pulumi.Output<String> folder;

  /// Creates a new [FolderKajPolicyConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderKajPolicyConfig]. {@macro pulumi_kms_folder_kaj_policy_config_folder_kaj_policy_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderKajPolicyConfig(
    String name, {
    FolderKajPolicyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultKeyAccessJustificationPolicy = registerOutput<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy');
    this.folder = registerOutput<String>('folder');
  }
}
