import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_server_response.dart';
import 'system_data_response.dart';

/// API deployment entity.
///
/// Uses Azure REST API version 2024-03-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Deployments_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.ApiCenter.Deployment("deployment", new()
///     {
///         ApiName = "echo-api",
///         DefinitionId = "/workspaces/default/apis/echo-api/versions/2023-01-01/definitions/openapi",
///         DeploymentName = "production",
///         Description = "Public cloud production deployment.",
///         EnvironmentId = "/workspaces/default/environments/production",
///         ResourceGroupName = "contoso-resources",
///         Server = new AzureNative.ApiCenter.Inputs.DeploymentServerArgs
///         {
///             RuntimeUri = new[]
///             {
///                 "https://api.contoso.com",
///             },
///         },
///         ServiceName = "contoso",
///         State = AzureNative.ApiCenter.DeploymentState.Active,
///         Title = "Production deployment",
///         WorkspaceName = "default",
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
/// 	apicenter "github.com/pulumi/pulumi-azure-native-sdk/apicenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apicenter.NewDeployment(ctx, "deployment", &apicenter.DeploymentArgs{
/// 			ApiName:           pulumi.String("echo-api"),
/// 			DefinitionId:      pulumi.String("/workspaces/default/apis/echo-api/versions/2023-01-01/definitions/openapi"),
/// 			DeploymentName:    pulumi.String("production"),
/// 			Description:       pulumi.String("Public cloud production deployment."),
/// 			EnvironmentId:     pulumi.String("/workspaces/default/environments/production"),
/// 			ResourceGroupName: pulumi.String("contoso-resources"),
/// 			Server: &apicenter.DeploymentServerArgs{
/// 				RuntimeUri: pulumi.StringArray{
/// 					pulumi.String("https://api.contoso.com"),
/// 				},
/// 			},
/// 			ServiceName:   pulumi.String("contoso"),
/// 			State:         pulumi.String(apicenter.DeploymentStateActive),
/// 			Title:         pulumi.String("Production deployment"),
/// 			WorkspaceName: pulumi.String("default"),
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
/// import com.pulumi.azurenative.apicenter.Deployment;
/// import com.pulumi.azurenative.apicenter.DeploymentArgs;
/// import com.pulumi.azurenative.apicenter.inputs.DeploymentServerArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .apiName("echo-api")
///             .definitionId("/workspaces/default/apis/echo-api/versions/2023-01-01/definitions/openapi")
///             .deploymentName("production")
///             .description("Public cloud production deployment.")
///             .environmentId("/workspaces/default/environments/production")
///             .resourceGroupName("contoso-resources")
///             .server(DeploymentServerArgs.builder()
///                 .runtimeUri("https://api.contoso.com")
///                 .build())
///             .serviceName("contoso")
///             .state("active")
///             .title("Production deployment")
///             .workspaceName("default")
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
/// const deployment = new azure_native.apicenter.Deployment("deployment", {
///     apiName: "echo-api",
///     definitionId: "/workspaces/default/apis/echo-api/versions/2023-01-01/definitions/openapi",
///     deploymentName: "production",
///     description: "Public cloud production deployment.",
///     environmentId: "/workspaces/default/environments/production",
///     resourceGroupName: "contoso-resources",
///     server: {
///         runtimeUri: ["https://api.contoso.com"],
///     },
///     serviceName: "contoso",
///     state: azure_native.apicenter.DeploymentState.Active,
///     title: "Production deployment",
///     workspaceName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.apicenter.Deployment("deployment",
///     api_name="echo-api",
///     definition_id="/workspaces/default/apis/echo-api/versions/2023-01-01/definitions/openapi",
///     deployment_name="production",
///     description="Public cloud production deployment.",
///     environment_id="/workspaces/default/environments/production",
///     resource_group_name="contoso-resources",
///     server={
///         "runtime_uri": ["https://api.contoso.com"],
///     },
///     service_name="contoso",
///     state=azure_native.apicenter.DeploymentState.ACTIVE,
///     title="Production deployment",
///     workspace_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:apicenter:Deployment
///     properties:
///       apiName: echo-api
///       definitionId: /workspaces/default/apis/echo-api/versions/2023-01-01/definitions/openapi
///       deploymentName: production
///       description: Public cloud production deployment.
///       environmentId: /workspaces/default/environments/production
///       resourceGroupName: contoso-resources
///       server:
///         runtimeUri:
///           - https://api.contoso.com
///       serviceName: contoso
///       state: active
///       title: Production deployment
///       workspaceName: default
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
/// $ pulumi import azure-native:apicenter:Deployment production /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiCenter/services/{serviceName}/workspaces/{workspaceName}/apis/{apiName}/deployments/{deploymentName}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The custom metadata defined for API catalog entities.
  late final pulumi.Output<dynamic> customProperties;

  /// API center-scoped definition resource ID.
  late final pulumi.Output<String?> definitionId;

  /// Description of the deployment.
  late final pulumi.Output<String?> description;

  /// API center-scoped environment resource ID.
  late final pulumi.Output<String?> environmentId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The deployment server
  late final pulumi.Output<DeploymentServerResponse?> server;

  /// State of API deployment.
  late final pulumi.Output<String?> state;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// API deployment title
  late final pulumi.Output<String?> title;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_apicenter_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apicenter:Deployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customProperties = registerOutput<dynamic>('customProperties');
    definitionId = registerOutput<String?>('definitionId');
    description = registerOutput<String?>('description');
    environmentId = registerOutput<String?>('environmentId');
    this.name = registerOutput<String>('name');
    server = registerOutput<DeploymentServerResponse?>(
      'server',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentServerResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    state = registerOutput<String?>('state');
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
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
  }
}
