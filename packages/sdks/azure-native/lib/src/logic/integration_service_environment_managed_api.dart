import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_resource_backend_service_response.dart';
import 'api_resource_definitions_response.dart';
import 'api_resource_general_information_response.dart';
import 'api_resource_metadata_response.dart';
import 'api_resource_policies_response.dart';
import 'integration_service_environment_managed_api_args.dart';
import 'integration_service_environment_managed_api_deployment_parameters_response.dart';
import 'resource_reference_response.dart';

/// The integration service environment managed api.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Gets the integration service environment managed Apis
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationServiceEnvironmentManagedApi = new AzureNative.Logic.IntegrationServiceEnvironmentManagedApi("integrationServiceEnvironmentManagedApi", new()
///     {
///         ApiName = "servicebus",
///         IntegrationServiceEnvironmentName = "testIntegrationServiceEnvironment",
///         Location = "brazilsouth",
///         ResourceGroup = "testResourceGroup",
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationServiceEnvironmentManagedApi(ctx, "integrationServiceEnvironmentManagedApi", &logic.IntegrationServiceEnvironmentManagedApiArgs{
/// 			ApiName:                           pulumi.String("servicebus"),
/// 			IntegrationServiceEnvironmentName: pulumi.String("testIntegrationServiceEnvironment"),
/// 			Location:                          pulumi.String("brazilsouth"),
/// 			ResourceGroup:                     pulumi.String("testResourceGroup"),
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
/// import com.pulumi.azurenative.logic.IntegrationServiceEnvironmentManagedApi;
/// import com.pulumi.azurenative.logic.IntegrationServiceEnvironmentManagedApiArgs;
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
///         var integrationServiceEnvironmentManagedApi = new IntegrationServiceEnvironmentManagedApi("integrationServiceEnvironmentManagedApi", IntegrationServiceEnvironmentManagedApiArgs.builder()
///             .apiName("servicebus")
///             .integrationServiceEnvironmentName("testIntegrationServiceEnvironment")
///             .location("brazilsouth")
///             .resourceGroup("testResourceGroup")
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
/// const integrationServiceEnvironmentManagedApi = new azure_native.logic.IntegrationServiceEnvironmentManagedApi("integrationServiceEnvironmentManagedApi", {
///     apiName: "servicebus",
///     integrationServiceEnvironmentName: "testIntegrationServiceEnvironment",
///     location: "brazilsouth",
///     resourceGroup: "testResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_service_environment_managed_api = azure_native.logic.IntegrationServiceEnvironmentManagedApi("integrationServiceEnvironmentManagedApi",
///     api_name="servicebus",
///     integration_service_environment_name="testIntegrationServiceEnvironment",
///     location="brazilsouth",
///     resource_group="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationServiceEnvironmentManagedApi:
///     type: azure-native:logic:IntegrationServiceEnvironmentManagedApi
///     properties:
///       apiName: servicebus
///       integrationServiceEnvironmentName: testIntegrationServiceEnvironment
///       location: brazilsouth
///       resourceGroup: testResourceGroup
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
/// $ pulumi import azure-native:logic:IntegrationServiceEnvironmentManagedApi servicebus /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Logic/integrationServiceEnvironments/{integrationServiceEnvironmentName}/managedApis/{apiName}
/// ```
class IntegrationServiceEnvironmentManagedApi extends pulumi.CustomResource {
  /// The API definition.
  late final pulumi.Output<String> apiDefinitionUrl;
  /// The api definitions.
  late final pulumi.Output<ApiResourceDefinitionsResponse> apiDefinitions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The backend service.
  late final pulumi.Output<ApiResourceBackendServiceResponse> backendService;
  /// The capabilities.
  late final pulumi.Output<List<String>> capabilities;
  /// The category.
  late final pulumi.Output<String> category;
  /// The connection parameters.
  late final pulumi.Output<Map<String, dynamic>> connectionParameters;
  /// The integration service environment managed api deployment parameters.
  late final pulumi.Output<IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse?> deploymentParameters;
  /// The api general information.
  late final pulumi.Output<ApiResourceGeneralInformationResponse> generalInformation;
  /// The integration service environment reference.
  late final pulumi.Output<ResourceReferenceResponse?> integrationServiceEnvironment;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The metadata.
  late final pulumi.Output<ApiResourceMetadataResponse> metadata;
  /// Gets the resource name.
  late final pulumi.Output<String> name;
  /// The policies for the API.
  late final pulumi.Output<ApiResourcePoliciesResponse> policies;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The runtime urls.
  late final pulumi.Output<List<String>> runtimeUrls;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationServiceEnvironmentManagedApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationServiceEnvironmentManagedApi]. {@macro pulumi_logic_integration_service_environment_managed_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationServiceEnvironmentManagedApi(
    String name, {
    IntegrationServiceEnvironmentManagedApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:IntegrationServiceEnvironmentManagedApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiDefinitionUrl = registerOutput<String>('apiDefinitionUrl');
    apiDefinitions = registerOutput<ApiResourceDefinitionsResponse>('apiDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiResourceDefinitionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendService = registerOutput<ApiResourceBackendServiceResponse>('backendService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiResourceBackendServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capabilities = registerOutput<List<String>>('capabilities');
    category = registerOutput<String>('category');
    connectionParameters = registerOutput<Map<String, dynamic>>('connectionParameters');
    deploymentParameters = registerOutput<IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse?>('deploymentParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generalInformation = registerOutput<ApiResourceGeneralInformationResponse>('generalInformation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiResourceGeneralInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integrationServiceEnvironment = registerOutput<ResourceReferenceResponse?>('integrationServiceEnvironment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    metadata = registerOutput<ApiResourceMetadataResponse>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiResourceMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policies = registerOutput<ApiResourcePoliciesResponse>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiResourcePoliciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    runtimeUrls = registerOutput<List<String>>('runtimeUrls');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
