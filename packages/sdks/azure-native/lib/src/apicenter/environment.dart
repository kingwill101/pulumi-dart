import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_server_response.dart';
import 'onboarding_response.dart';
import 'system_data_response.dart';

/// Environment entity.
///
/// Uses Azure REST API version 2024-03-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Environments_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var environment = new AzureNative.ApiCenter.Environment("environment", new()
///     {
///         Description = "The primary Azure API Management service for the European division of Contoso.",
///         EnvironmentName = "public",
///         Kind = AzureNative.ApiCenter.EnvironmentKind.Production,
///         Onboarding = new AzureNative.ApiCenter.Inputs.OnboardingArgs
///         {
///             DeveloperPortalUri = new[]
///             {
///                 "https://developer.contoso.com",
///             },
///             Instructions = "Sign in or sign up in the specified developer portal to request API access. You must complete the internal privacy training for your account to be approved.",
///         },
///         ResourceGroupName = "contoso-resources",
///         Server = new AzureNative.ApiCenter.Inputs.EnvironmentServerArgs
///         {
///             ManagementPortalUri = new[]
///             {
///                 "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso",
///             },
///             Type = AzureNative.ApiCenter.EnvironmentServerType.Azure_API_Management,
///         },
///         ServiceName = "contoso",
///         Title = "Contoso Europe Azure API Management",
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
/// 		_, err := apicenter.NewEnvironment(ctx, "environment", &apicenter.EnvironmentArgs{
/// 			Description:     pulumi.String("The primary Azure API Management service for the European division of Contoso."),
/// 			EnvironmentName: pulumi.String("public"),
/// 			Kind:            pulumi.String(apicenter.EnvironmentKindProduction),
/// 			Onboarding: &apicenter.OnboardingArgs{
/// 				DeveloperPortalUri: pulumi.StringArray{
/// 					pulumi.String("https://developer.contoso.com"),
/// 				},
/// 				Instructions: pulumi.String("Sign in or sign up in the specified developer portal to request API access. You must complete the internal privacy training for your account to be approved."),
/// 			},
/// 			ResourceGroupName: pulumi.String("contoso-resources"),
/// 			Server: &apicenter.EnvironmentServerArgs{
/// 				ManagementPortalUri: pulumi.StringArray{
/// 					pulumi.String("https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso"),
/// 				},
/// 				Type: pulumi.String(apicenter.EnvironmentServerType_Azure_API_Management),
/// 			},
/// 			ServiceName:   pulumi.String("contoso"),
/// 			Title:         pulumi.String("Contoso Europe Azure API Management"),
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
/// import com.pulumi.azurenative.apicenter.Environment;
/// import com.pulumi.azurenative.apicenter.EnvironmentArgs;
/// import com.pulumi.azurenative.apicenter.inputs.OnboardingArgs;
/// import com.pulumi.azurenative.apicenter.inputs.EnvironmentServerArgs;
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
///         var environment = new Environment("environment", EnvironmentArgs.builder()
///             .description("The primary Azure API Management service for the European division of Contoso.")
///             .environmentName("public")
///             .kind("production")
///             .onboarding(OnboardingArgs.builder()
///                 .developerPortalUri("https://developer.contoso.com")
///                 .instructions("Sign in or sign up in the specified developer portal to request API access. You must complete the internal privacy training for your account to be approved.")
///                 .build())
///             .resourceGroupName("contoso-resources")
///             .server(EnvironmentServerArgs.builder()
///                 .managementPortalUri("https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso")
///                 .type("Azure API Management")
///                 .build())
///             .serviceName("contoso")
///             .title("Contoso Europe Azure API Management")
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
/// const environment = new azure_native.apicenter.Environment("environment", {
///     description: "The primary Azure API Management service for the European division of Contoso.",
///     environmentName: "public",
///     kind: azure_native.apicenter.EnvironmentKind.Production,
///     onboarding: {
///         developerPortalUri: ["https://developer.contoso.com"],
///         instructions: "Sign in or sign up in the specified developer portal to request API access. You must complete the internal privacy training for your account to be approved.",
///     },
///     resourceGroupName: "contoso-resources",
///     server: {
///         managementPortalUri: ["https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso"],
///         type: azure_native.apicenter.EnvironmentServerType.Azure_API_Management,
///     },
///     serviceName: "contoso",
///     title: "Contoso Europe Azure API Management",
///     workspaceName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// environment = azure_native.apicenter.Environment("environment",
///     description="The primary Azure API Management service for the European division of Contoso.",
///     environment_name="public",
///     kind=azure_native.apicenter.EnvironmentKind.PRODUCTION,
///     onboarding={
///         "developer_portal_uri": ["https://developer.contoso.com"],
///         "instructions": "Sign in or sign up in the specified developer portal to request API access. You must complete the internal privacy training for your account to be approved.",
///     },
///     resource_group_name="contoso-resources",
///     server={
///         "management_portal_uri": ["https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso"],
///         "type": azure_native.apicenter.EnvironmentServerType.AZURE_AP_I_MANAGEMENT,
///     },
///     service_name="contoso",
///     title="Contoso Europe Azure API Management",
///     workspace_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   environment:
///     type: azure-native:apicenter:Environment
///     properties:
///       description: The primary Azure API Management service for the European division of Contoso.
///       environmentName: public
///       kind: production
///       onboarding:
///         developerPortalUri:
///           - https://developer.contoso.com
///         instructions: Sign in or sign up in the specified developer portal to request API access. You must complete the internal privacy training for your account to be approved.
///       resourceGroupName: contoso-resources
///       server:
///         managementPortalUri:
///           - https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resources/providers/Microsoft.ApiManagement/service/contoso
///         type: Azure API Management
///       serviceName: contoso
///       title: Contoso Europe Azure API Management
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
/// $ pulumi import azure-native:apicenter:Environment public /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiCenter/services/{serviceName}/workspaces/{workspaceName}/environments/{environmentName}
/// ```
class Environment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The custom metadata defined for API catalog entities.
  late final pulumi.Output<dynamic> customProperties;
  /// The environment description.
  late final pulumi.Output<String?> description;
  /// Environment kind.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Environment onboarding information
  late final pulumi.Output<OnboardingResponse?> onboarding;
  /// Server information of the environment.
  late final pulumi.Output<EnvironmentServerResponse?> server;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Environment title.
  late final pulumi.Output<String> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_apicenter_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apicenter:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customProperties = registerOutput<dynamic>('customProperties');
    description = registerOutput<String?>('description');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    onboarding = registerOutput<OnboardingResponse?>('onboarding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OnboardingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    server = registerOutput<EnvironmentServerResponse?>('server', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentServerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String>('title');
    type = registerOutput<String>('type');
  }
}
