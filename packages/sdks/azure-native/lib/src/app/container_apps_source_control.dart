import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_apps_source_control_args.dart';
import 'github_action_configuration_response.dart';
import 'system_data_response.dart';

/// Container App SourceControl.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Container App SourceControl
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerAppsSourceControl = new AzureNative.App.ContainerAppsSourceControl("containerAppsSourceControl", new()
///     {
///         Branch = "master",
///         ContainerAppName = "testcanadacentral",
///         GithubActionConfiguration = new AzureNative.App.Inputs.GithubActionConfigurationArgs
///         {
///             AzureCredentials = new AzureNative.App.Inputs.AzureCredentialsArgs
///             {
///                 ClientId = "<clientid>",
///                 ClientSecret = "<clientsecret>",
///                 Kind = "feaderated",
///                 TenantId = "<tenantid>",
///             },
///             BuildEnvironmentVariables = new[]
///             {
///                 new AzureNative.App.Inputs.EnvironmentVariableArgs
///                 {
///                     Name = "foo1",
///                     Value = "bar1",
///                 },
///                 new AzureNative.App.Inputs.EnvironmentVariableArgs
///                 {
///                     Name = "foo2",
///                     Value = "bar2",
///                 },
///             },
///             ContextPath = "./",
///             DockerfilePath = "./Dockerfile",
///             GithubPersonalAccessToken = "test",
///             Image = "image/tag",
///             RegistryInfo = new AzureNative.App.Inputs.RegistryInfoArgs
///             {
///                 RegistryPassword = "<registrypassword>",
///                 RegistryUrl = "test-registry.azurecr.io",
///                 RegistryUserName = "test-registry",
///             },
///         },
///         RepoUrl = "https://github.com/xwang971/ghatest",
///         ResourceGroupName = "workerapps-rg-xj",
///         SourceControlName = "current",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerAppsSourceControl(ctx, "containerAppsSourceControl", &app.ContainerAppsSourceControlArgs{
/// 			Branch:           pulumi.String("master"),
/// 			ContainerAppName: pulumi.String("testcanadacentral"),
/// 			GithubActionConfiguration: &app.GithubActionConfigurationArgs{
/// 				AzureCredentials: &app.AzureCredentialsArgs{
/// 					ClientId:     pulumi.String("<clientid>"),
/// 					ClientSecret: pulumi.String("<clientsecret>"),
/// 					Kind:         pulumi.String("feaderated"),
/// 					TenantId:     pulumi.String("<tenantid>"),
/// 				},
/// 				BuildEnvironmentVariables: app.EnvironmentVariableArray{
/// 					&app.EnvironmentVariableArgs{
/// 						Name:  pulumi.String("foo1"),
/// 						Value: pulumi.String("bar1"),
/// 					},
/// 					&app.EnvironmentVariableArgs{
/// 						Name:  pulumi.String("foo2"),
/// 						Value: pulumi.String("bar2"),
/// 					},
/// 				},
/// 				ContextPath:               pulumi.String("./"),
/// 				DockerfilePath:            pulumi.String("./Dockerfile"),
/// 				GithubPersonalAccessToken: pulumi.String("test"),
/// 				Image:                     pulumi.String("image/tag"),
/// 				RegistryInfo: &app.RegistryInfoArgs{
/// 					RegistryPassword: pulumi.String("<registrypassword>"),
/// 					RegistryUrl:      pulumi.String("test-registry.azurecr.io"),
/// 					RegistryUserName: pulumi.String("test-registry"),
/// 				},
/// 			},
/// 			RepoUrl:           pulumi.String("https://github.com/xwang971/ghatest"),
/// 			ResourceGroupName: pulumi.String("workerapps-rg-xj"),
/// 			SourceControlName: pulumi.String("current"),
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
/// resource "azure-native_app_containerappssourcecontrol" "containerAppsSourceControl" {
///   branch             = "master"
///   container_app_name = "testcanadacentral"
///   github_action_configuration = {
///     azure_credentials = {
///       client_id     = "<clientid>"
///       client_secret = "<clientsecret>"
///       kind          = "feaderated"
///       tenant_id     = "<tenantid>"
///     }
///     build_environment_variables = [{
///       "name"  = "foo1"
///       "value" = "bar1"
///       }, {
///       "name"  = "foo2"
///       "value" = "bar2"
///     }]
///     context_path                 = "./"
///     dockerfile_path              = "./Dockerfile"
///     github_personal_access_token = "test"
///     image                        = "image/tag"
///     registry_info = {
///       registry_password  = "<registrypassword>"
///       registry_url       = "test-registry.azurecr.io"
///       registry_user_name = "test-registry"
///     }
///   }
///   repo_url            = "https://github.com/xwang971/ghatest"
///   resource_group_name = "workerapps-rg-xj"
///   source_control_name = "current"
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
/// import com.pulumi.azurenative.app.ContainerAppsSourceControl;
/// import com.pulumi.azurenative.app.ContainerAppsSourceControlArgs;
/// import com.pulumi.azurenative.app.inputs.GithubActionConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.AzureCredentialsArgs;
/// import com.pulumi.azurenative.app.inputs.RegistryInfoArgs;
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
///         var containerAppsSourceControl = new ContainerAppsSourceControl("containerAppsSourceControl", ContainerAppsSourceControlArgs.builder()
///             .branch("master")
///             .containerAppName("testcanadacentral")
///             .githubActionConfiguration(GithubActionConfigurationArgs.builder()
///                 .azureCredentials(AzureCredentialsArgs.builder()
///                     .clientId("<clientid>")
///                     .clientSecret("<clientsecret>")
///                     .kind("feaderated")
///                     .tenantId("<tenantid>")
///                     .build())
///                 .buildEnvironmentVariables(
///                     EnvironmentVariableArgs.builder()
///                         .name("foo1")
///                         .value("bar1")
///                         .build(),
///                     EnvironmentVariableArgs.builder()
///                         .name("foo2")
///                         .value("bar2")
///                         .build())
///                 .contextPath("./")
///                 .dockerfilePath("./Dockerfile")
///                 .githubPersonalAccessToken("test")
///                 .image("image/tag")
///                 .registryInfo(RegistryInfoArgs.builder()
///                     .registryPassword("<registrypassword>")
///                     .registryUrl("test-registry.azurecr.io")
///                     .registryUserName("test-registry")
///                     .build())
///                 .build())
///             .repoUrl("https://github.com/xwang971/ghatest")
///             .resourceGroupName("workerapps-rg-xj")
///             .sourceControlName("current")
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
/// const containerAppsSourceControl = new azure_native.app.ContainerAppsSourceControl("containerAppsSourceControl", {
///     branch: "master",
///     containerAppName: "testcanadacentral",
///     githubActionConfiguration: {
///         azureCredentials: {
///             clientId: "<clientid>",
///             clientSecret: "<clientsecret>",
///             kind: "feaderated",
///             tenantId: "<tenantid>",
///         },
///         buildEnvironmentVariables: [
///             {
///                 name: "foo1",
///                 value: "bar1",
///             },
///             {
///                 name: "foo2",
///                 value: "bar2",
///             },
///         ],
///         contextPath: "./",
///         dockerfilePath: "./Dockerfile",
///         githubPersonalAccessToken: "test",
///         image: "image/tag",
///         registryInfo: {
///             registryPassword: "<registrypassword>",
///             registryUrl: "test-registry.azurecr.io",
///             registryUserName: "test-registry",
///         },
///     },
///     repoUrl: "https://github.com/xwang971/ghatest",
///     resourceGroupName: "workerapps-rg-xj",
///     sourceControlName: "current",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_apps_source_control = azure_native.app.ContainerAppsSourceControl("containerAppsSourceControl",
///     branch="master",
///     container_app_name="testcanadacentral",
///     github_action_configuration={
///         "azure_credentials": {
///             "client_id": "<clientid>",
///             "client_secret": "<clientsecret>",
///             "kind": "feaderated",
///             "tenant_id": "<tenantid>",
///         },
///         "build_environment_variables": [
///             {
///                 "name": "foo1",
///                 "value": "bar1",
///             },
///             {
///                 "name": "foo2",
///                 "value": "bar2",
///             },
///         ],
///         "context_path": "./",
///         "dockerfile_path": "./Dockerfile",
///         "github_personal_access_token": "test",
///         "image": "image/tag",
///         "registry_info": {
///             "registry_password": "<registrypassword>",
///             "registry_url": "test-registry.azurecr.io",
///             "registry_user_name": "test-registry",
///         },
///     },
///     repo_url="https://github.com/xwang971/ghatest",
///     resource_group_name="workerapps-rg-xj",
///     source_control_name="current")
///
/// ```
///
/// ```yaml
/// resources:
///   containerAppsSourceControl:
///     type: azure-native:app:ContainerAppsSourceControl
///     properties:
///       branch: master
///       containerAppName: testcanadacentral
///       githubActionConfiguration:
///         azureCredentials:
///           clientId: <clientid>
///           clientSecret: <clientsecret>
///           kind: feaderated
///           tenantId: <tenantid>
///         buildEnvironmentVariables:
///           - name: foo1
///             value: bar1
///           - name: foo2
///             value: bar2
///         contextPath: ./
///         dockerfilePath: ./Dockerfile
///         githubPersonalAccessToken: test
///         image: image/tag
///         registryInfo:
///           registryPassword: <registrypassword>
///           registryUrl: test-registry.azurecr.io
///           registryUserName: test-registry
///       repoUrl: https://github.com/xwang971/ghatest
///       resourceGroupName: workerapps-rg-xj
///       sourceControlName: current
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
/// $ pulumi import azure-native:app:ContainerAppsSourceControl current /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/containerApps/{containerAppName}/sourcecontrols/{sourceControlName}
/// ```
class ContainerAppsSourceControl extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The branch which will trigger the auto deployment
  late final pulumi.Output<String?> branch;
  /// Container App Revision Template with all possible settings and the
  /// defaults if user did not provide them. The defaults are populated
  /// as they were at the creation time
  late final pulumi.Output<GithubActionConfigurationResponse?> githubActionConfiguration;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Current provisioning State of the operation
  late final pulumi.Output<String> operationState;
  /// The repo url which will be integrated to ContainerApp.
  late final pulumi.Output<String?> repoUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ContainerAppsSourceControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerAppsSourceControl]. {@macro pulumi_app_container_apps_source_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerAppsSourceControl(
    String name, {
    ContainerAppsSourceControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:ContainerAppsSourceControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    branch = registerOutput<String?>('branch');
    githubActionConfiguration = registerOutput<GithubActionConfigurationResponse?>('githubActionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GithubActionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    operationState = registerOutput<String>('operationState');
    repoUrl = registerOutput<String?>('repoUrl');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
