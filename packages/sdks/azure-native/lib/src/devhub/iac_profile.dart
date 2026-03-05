import 'package:pulumi/pulumi.dart' as pulumi;
import 'iac_profile_args.dart';
import 'system_data_response.dart';

/// Resource representation of a IacProfile.
///
/// Uses Azure REST API version 2024-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-08-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create IacProfile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iacProfile = new AzureNative.DevHub.IacProfile("iacProfile", new()
///     {
///         IacProfileName = "profile1",
///         Location = "eastus",
///         RepositoryName = "localtest",
///         RepositoryOwner = "qfai",
///         ResourceGroupName = "resourceGroup1",
///         Stages = new[]
///         {
///             new AzureNative.DevHub.Inputs.StagePropertiesArgs
///             {
///                 Dependencies = new() { },
///                 GitEnvironment = "Terraform",
///                 StageName = "dev",
///             },
///             new AzureNative.DevHub.Inputs.StagePropertiesArgs
///             {
///                 Dependencies = new[]
///                 {
///                     "dev",
///                 },
///                 GitEnvironment = "Terraform",
///                 StageName = "qa",
///             },
///         },
///         StorageAccountName = "iacbackend",
///         StorageAccountResourceGroup = "test",
///         StorageAccountSubscription = "586c20df-c465-4f10-8673-65aa4859e7ca",
///         StorageContainerName = "tfbackend",
///         Templates = new[]
///         {
///             new AzureNative.DevHub.Inputs.IacTemplatePropertiesArgs
///             {
///                 InstanceName = "quickinstance",
///                 InstanceStage = "dev",
///                 QuickStartTemplateType = AzureNative.DevHub.QuickStartTemplateType.HCIAKS,
///                 TemplateName = "hciaksss",
///             },
///         },
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
/// 	devhub "github.com/pulumi/pulumi-azure-native-sdk/devhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devhub.NewIacProfile(ctx, "iacProfile", &devhub.IacProfileArgs{
/// 			IacProfileName:    pulumi.String("profile1"),
/// 			Location:          pulumi.String("eastus"),
/// 			RepositoryName:    pulumi.String("localtest"),
/// 			RepositoryOwner:   pulumi.String("qfai"),
/// 			ResourceGroupName: pulumi.String("resourceGroup1"),
/// 			Stages: devhub.StagePropertiesArray{
/// 				&devhub.StagePropertiesArgs{
/// 					Dependencies:   pulumi.StringArray{},
/// 					GitEnvironment: pulumi.String("Terraform"),
/// 					StageName:      pulumi.String("dev"),
/// 				},
/// 				&devhub.StagePropertiesArgs{
/// 					Dependencies: pulumi.StringArray{
/// 						pulumi.String("dev"),
/// 					},
/// 					GitEnvironment: pulumi.String("Terraform"),
/// 					StageName:      pulumi.String("qa"),
/// 				},
/// 			},
/// 			StorageAccountName:          pulumi.String("iacbackend"),
/// 			StorageAccountResourceGroup: pulumi.String("test"),
/// 			StorageAccountSubscription:  pulumi.String("586c20df-c465-4f10-8673-65aa4859e7ca"),
/// 			StorageContainerName:        pulumi.String("tfbackend"),
/// 			Templates: devhub.IacTemplatePropertiesArray{
/// 				&devhub.IacTemplatePropertiesArgs{
/// 					InstanceName:           pulumi.String("quickinstance"),
/// 					InstanceStage:          pulumi.String("dev"),
/// 					QuickStartTemplateType: pulumi.String(devhub.QuickStartTemplateTypeHCIAKS),
/// 					TemplateName:           pulumi.String("hciaksss"),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.devhub.IacProfile;
/// import com.pulumi.azurenative.devhub.IacProfileArgs;
/// import com.pulumi.azurenative.devhub.inputs.StagePropertiesArgs;
/// import com.pulumi.azurenative.devhub.inputs.IacTemplatePropertiesArgs;
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
///         var iacProfile = new IacProfile("iacProfile", IacProfileArgs.builder()
///             .iacProfileName("profile1")
///             .location("eastus")
///             .repositoryName("localtest")
///             .repositoryOwner("qfai")
///             .resourceGroupName("resourceGroup1")
///             .stages(
///                 StagePropertiesArgs.builder()
///                     .dependencies()
///                     .gitEnvironment("Terraform")
///                     .stageName("dev")
///                     .build(),
///                 StagePropertiesArgs.builder()
///                     .dependencies("dev")
///                     .gitEnvironment("Terraform")
///                     .stageName("qa")
///                     .build())
///             .storageAccountName("iacbackend")
///             .storageAccountResourceGroup("test")
///             .storageAccountSubscription("586c20df-c465-4f10-8673-65aa4859e7ca")
///             .storageContainerName("tfbackend")
///             .templates(IacTemplatePropertiesArgs.builder()
///                 .instanceName("quickinstance")
///                 .instanceStage("dev")
///                 .quickStartTemplateType("HCIAKS")
///                 .templateName("hciaksss")
///                 .build())
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
/// const iacProfile = new azure_native.devhub.IacProfile("iacProfile", {
///     iacProfileName: "profile1",
///     location: "eastus",
///     repositoryName: "localtest",
///     repositoryOwner: "qfai",
///     resourceGroupName: "resourceGroup1",
///     stages: [
///         {
///             dependencies: [],
///             gitEnvironment: "Terraform",
///             stageName: "dev",
///         },
///         {
///             dependencies: ["dev"],
///             gitEnvironment: "Terraform",
///             stageName: "qa",
///         },
///     ],
///     storageAccountName: "iacbackend",
///     storageAccountResourceGroup: "test",
///     storageAccountSubscription: "586c20df-c465-4f10-8673-65aa4859e7ca",
///     storageContainerName: "tfbackend",
///     templates: [{
///         instanceName: "quickinstance",
///         instanceStage: "dev",
///         quickStartTemplateType: azure_native.devhub.QuickStartTemplateType.HCIAKS,
///         templateName: "hciaksss",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iac_profile = azure_native.devhub.IacProfile("iacProfile",
///     iac_profile_name="profile1",
///     location="eastus",
///     repository_name="localtest",
///     repository_owner="qfai",
///     resource_group_name="resourceGroup1",
///     stages=[
///         {
///             "dependencies": [],
///             "git_environment": "Terraform",
///             "stage_name": "dev",
///         },
///         {
///             "dependencies": ["dev"],
///             "git_environment": "Terraform",
///             "stage_name": "qa",
///         },
///     ],
///     storage_account_name="iacbackend",
///     storage_account_resource_group="test",
///     storage_account_subscription="586c20df-c465-4f10-8673-65aa4859e7ca",
///     storage_container_name="tfbackend",
///     templates=[{
///         "instance_name": "quickinstance",
///         "instance_stage": "dev",
///         "quick_start_template_type": azure_native.devhub.QuickStartTemplateType.HCIAKS,
///         "template_name": "hciaksss",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   iacProfile:
///     type: azure-native:devhub:IacProfile
///     properties:
///       iacProfileName: profile1
///       location: eastus
///       repositoryName: localtest
///       repositoryOwner: qfai
///       resourceGroupName: resourceGroup1
///       stages:
///         - dependencies: []
///           gitEnvironment: Terraform
///           stageName: dev
///         - dependencies:
///             - dev
///           gitEnvironment: Terraform
///           stageName: qa
///       storageAccountName: iacbackend
///       storageAccountResourceGroup: test
///       storageAccountSubscription: 586c20df-c465-4f10-8673-65aa4859e7ca
///       storageContainerName: tfbackend
///       templates:
///         - instanceName: quickinstance
///           instanceStage: dev
///           quickStartTemplateType: HCIAKS
///           templateName: hciaksss
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
/// $ pulumi import azure-native:devhub:IacProfile profile1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevHub/iacProfiles/{iacProfileName}
/// ```
class IacProfile extends pulumi.CustomResource {
  /// Determines the authorization status of requests.
  late final pulumi.Output<String> authStatus;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Repository Branch Name
  late final pulumi.Output<String?> branchName;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the Pull Request submitted against the users repository.
  late final pulumi.Output<String> prStatus;

  /// The number associated with the submitted pull request.
  late final pulumi.Output<int> pullNumber;

  /// Repository Main Branch
  late final pulumi.Output<String?> repositoryMainBranch;

  /// Repository Name
  late final pulumi.Output<String?> repositoryName;

  /// Repository Owner
  late final pulumi.Output<String?> repositoryOwner;
  late final pulumi.Output<List<Map<String, dynamic>>?> stages;

  /// Terraform Storage Account Name
  late final pulumi.Output<String?> storageAccountName;

  /// Terraform Storage Account Resource Group
  late final pulumi.Output<String?> storageAccountResourceGroup;

  /// Terraform Storage Account Subscription
  late final pulumi.Output<String?> storageAccountSubscription;

  /// Terraform Container Name
  late final pulumi.Output<String?> storageContainerName;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<List<Map<String, dynamic>>?> templates;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IacProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IacProfile]. {@macro pulumi_devhub_iac_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IacProfile(
    String name, {
    IacProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devhub:IacProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authStatus = registerOutput<String>('authStatus');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    branchName = registerOutput<String?>('branchName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    prStatus = registerOutput<String>('prStatus');
    pullNumber = registerOutput<int>('pullNumber');
    repositoryMainBranch = registerOutput<String?>('repositoryMainBranch');
    repositoryName = registerOutput<String?>('repositoryName');
    repositoryOwner = registerOutput<String?>('repositoryOwner');
    stages = registerOutput<List<Map<String, dynamic>>?>('stages');
    storageAccountName = registerOutput<String?>('storageAccountName');
    storageAccountResourceGroup = registerOutput<String?>(
      'storageAccountResourceGroup',
    );
    storageAccountSubscription = registerOutput<String?>(
      'storageAccountSubscription',
    );
    storageContainerName = registerOutput<String?>('storageContainerName');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    templates = registerOutput<List<Map<String, dynamic>>?>('templates');
    type = registerOutput<String>('type');
  }
}
