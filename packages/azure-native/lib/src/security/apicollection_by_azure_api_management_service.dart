import 'package:pulumi/pulumi.dart' as pulumi;
import 'apicollection_by_azure_api_management_service_args.dart';

/// An API collection as represented by Microsoft Defender for APIs.
///
/// Uses Azure REST API version 2023-11-15. In version 2.x of the Azure Native provider, it used API version 2023-11-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Onboard an Azure API Management API to Microsoft Defender for APIs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiCollectionByAzureApiManagementService = new AzureNative.Security.APICollectionByAzureApiManagementService("apiCollectionByAzureApiManagementService", new()
///     {
///         ApiId = "echo-api",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAPICollectionByAzureApiManagementService(ctx, "apiCollectionByAzureApiManagementService", &security.APICollectionByAzureApiManagementServiceArgs{
/// 			ApiId:             pulumi.String("echo-api"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.security.APICollectionByAzureApiManagementService;
/// import com.pulumi.azurenative.security.APICollectionByAzureApiManagementServiceArgs;
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
///         var apiCollectionByAzureApiManagementService = new APICollectionByAzureApiManagementService("apiCollectionByAzureApiManagementService", APICollectionByAzureApiManagementServiceArgs.builder()
///             .apiId("echo-api")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const apiCollectionByAzureApiManagementService = new azure_native.security.APICollectionByAzureApiManagementService("apiCollectionByAzureApiManagementService", {
///     apiId: "echo-api",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_collection_by_azure_api_management_service = azure_native.security.APICollectionByAzureApiManagementService("apiCollectionByAzureApiManagementService",
///     api_id="echo-api",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   apiCollectionByAzureApiManagementService:
///     type: azure-native:security:APICollectionByAzureApiManagementService
///     properties:
///       apiId: echo-api
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:security:APICollectionByAzureApiManagementService echo-api /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/providers/Microsoft.Security/apiCollections/{apiId}
/// ```
class APICollectionByAzureApiManagementService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The base URI for this API collection. All endpoints of this API collection extend this base URI.
  late final pulumi.Output<String> baseUrl;
  /// The resource Id of the resource from where this API collection was discovered.
  late final pulumi.Output<String> discoveredVia;
  /// The display name of the API collection.
  late final pulumi.Output<String> displayName;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The number of API endpoints discovered in this API collection.
  late final pulumi.Output<double> numberOfApiEndpoints;
  /// The number of API endpoints in this API collection which are exposing sensitive data in their requests and/or responses.
  late final pulumi.Output<double> numberOfApiEndpointsWithSensitiveDataExposed;
  /// The number of API endpoints in this API collection for which API traffic from the internet was observed.
  late final pulumi.Output<double> numberOfExternalApiEndpoints;
  /// The number of API endpoints in this API collection that have not received any API traffic in the last 30 days.
  late final pulumi.Output<double> numberOfInactiveApiEndpoints;
  /// The number of API endpoints in this API collection that are unauthenticated.
  late final pulumi.Output<double> numberOfUnauthenticatedApiEndpoints;
  /// Gets the provisioning state of the API collection.
  late final pulumi.Output<String> provisioningState;
  /// The highest priority sensitivity label from Microsoft Purview in this API collection.
  late final pulumi.Output<String> sensitivityLabel;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [APICollectionByAzureApiManagementService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [APICollectionByAzureApiManagementService]. {@macro pulumi_security_apicollection_by_azure_api_management_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  APICollectionByAzureApiManagementService(
    String name, {
    APICollectionByAzureApiManagementServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:APICollectionByAzureApiManagementService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.baseUrl = registerOutput<String>('baseUrl');
    this.discoveredVia = registerOutput<String>('discoveredVia');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.numberOfApiEndpoints = registerOutput<double>('numberOfApiEndpoints');
    this.numberOfApiEndpointsWithSensitiveDataExposed = registerOutput<double>('numberOfApiEndpointsWithSensitiveDataExposed');
    this.numberOfExternalApiEndpoints = registerOutput<double>('numberOfExternalApiEndpoints');
    this.numberOfInactiveApiEndpoints = registerOutput<double>('numberOfInactiveApiEndpoints');
    this.numberOfUnauthenticatedApiEndpoints = registerOutput<double>('numberOfUnauthenticatedApiEndpoints');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sensitivityLabel = registerOutput<String>('sensitivityLabel');
    this.type = registerOutput<String>('type');
  }
}
