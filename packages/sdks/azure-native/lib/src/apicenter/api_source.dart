import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_source_args.dart';
import 'azure_api_management_source_response.dart';
import 'link_state_response.dart';
import 'system_data_response.dart';

/// API source entity.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiSources_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiSource = new AzureNative.ApiCenter.ApiSource("apiSource", new()
///     {
///         ApiSourceName = "contoso-api-management",
///         AzureApiManagementSource = new AzureNative.ApiCenter.Inputs.AzureApiManagementSourceArgs
///         {
///             MsiResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity",
///             ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso",
///         },
///         ImportSpecification = AzureNative.ApiCenter.ImportSpecificationOptions.OnDemand,
///         ResourceGroupName = "contoso-resources",
///         ServiceName = "contoso",
///         TargetEnvironmentId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiCenter/services/contoso/workspaces/default/environments/azure-api-management",
///         TargetLifecycleStage = AzureNative.ApiCenter.LifecycleStage.Design,
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
/// 		_, err := apicenter.NewApiSource(ctx, "apiSource", &apicenter.ApiSourceArgs{
/// 			ApiSourceName: pulumi.String("contoso-api-management"),
/// 			AzureApiManagementSource: &apicenter.AzureApiManagementSourceArgs{
/// 				MsiResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity"),
/// 				ResourceId:    pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso"),
/// 			},
/// 			ImportSpecification:  pulumi.String(apicenter.ImportSpecificationOptionsOnDemand),
/// 			ResourceGroupName:    pulumi.String("contoso-resources"),
/// 			ServiceName:          pulumi.String("contoso"),
/// 			TargetEnvironmentId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiCenter/services/contoso/workspaces/default/environments/azure-api-management"),
/// 			TargetLifecycleStage: pulumi.String(apicenter.LifecycleStageDesign),
/// 			WorkspaceName:        pulumi.String("default"),
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
/// import com.pulumi.azurenative.apicenter.ApiSource;
/// import com.pulumi.azurenative.apicenter.ApiSourceArgs;
/// import com.pulumi.azurenative.apicenter.inputs.AzureApiManagementSourceArgs;
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
///         var apiSource = new ApiSource("apiSource", ApiSourceArgs.builder()
///             .apiSourceName("contoso-api-management")
///             .azureApiManagementSource(AzureApiManagementSourceArgs.builder()
///                 .msiResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity")
///                 .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso")
///                 .build())
///             .importSpecification("ondemand")
///             .resourceGroupName("contoso-resources")
///             .serviceName("contoso")
///             .targetEnvironmentId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiCenter/services/contoso/workspaces/default/environments/azure-api-management")
///             .targetLifecycleStage("design")
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
/// const apiSource = new azure_native.apicenter.ApiSource("apiSource", {
///     apiSourceName: "contoso-api-management",
///     azureApiManagementSource: {
///         msiResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity",
///         resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso",
///     },
///     importSpecification: azure_native.apicenter.ImportSpecificationOptions.OnDemand,
///     resourceGroupName: "contoso-resources",
///     serviceName: "contoso",
///     targetEnvironmentId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiCenter/services/contoso/workspaces/default/environments/azure-api-management",
///     targetLifecycleStage: azure_native.apicenter.LifecycleStage.Design,
///     workspaceName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_source = azure_native.apicenter.ApiSource("apiSource",
///     api_source_name="contoso-api-management",
///     azure_api_management_source={
///         "msi_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity",
///         "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso",
///     },
///     import_specification=azure_native.apicenter.ImportSpecificationOptions.ON_DEMAND,
///     resource_group_name="contoso-resources",
///     service_name="contoso",
///     target_environment_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiCenter/services/contoso/workspaces/default/environments/azure-api-management",
///     target_lifecycle_stage=azure_native.apicenter.LifecycleStage.DESIGN,
///     workspace_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   apiSource:
///     type: azure-native:apicenter:ApiSource
///     properties:
///       apiSourceName: contoso-api-management
///       azureApiManagementSource:
///         msiResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity
///         resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso
///       importSpecification: ondemand
///       resourceGroupName: contoso-resources
///       serviceName: contoso
///       targetEnvironmentId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiCenter/services/contoso/workspaces/default/environments/azure-api-management
///       targetLifecycleStage: design
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
/// $ pulumi import azure-native:apicenter:ApiSource contoso-api-management /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiCenter/services/{serviceName}/workspaces/{workspaceName}/apiSources/{apiSourceName}
/// ```
class ApiSource extends pulumi.CustomResource {
  /// API source configuration for Azure API Management.
  late final pulumi.Output<AzureApiManagementSourceResponse?> azureApiManagementSource;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates if the specification should be imported along with metadata.
  late final pulumi.Output<String?> importSpecification;
  /// The state of the API source link
  late final pulumi.Output<LinkStateResponse> linkState;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The target environment resource ID.
  late final pulumi.Output<String?> targetEnvironmentId;
  /// The target lifecycle stage.
  late final pulumi.Output<String?> targetLifecycleStage;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiSource]. {@macro pulumi_apicenter_api_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiSource(
    String name, {
    ApiSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apicenter:ApiSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiManagementSource = registerOutput<AzureApiManagementSourceResponse?>('azureApiManagementSource');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.importSpecification = registerOutput<String?>('importSpecification');
    this.linkState = registerOutput<LinkStateResponse>('linkState');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.targetEnvironmentId = registerOutput<String?>('targetEnvironmentId');
    this.targetLifecycleStage = registerOutput<String?>('targetLifecycleStage');
    this.type = registerOutput<String>('type');
  }
}
