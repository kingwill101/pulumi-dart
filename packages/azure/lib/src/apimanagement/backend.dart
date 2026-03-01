import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_args.dart';
import 'backend_circuit_breaker_rule.dart';
import 'backend_credentials.dart';
import 'backend_proxy.dart';
import 'backend_service_fabric_cluster.dart';
import 'backend_tls.dart';

/// Manages a backend within an API Management Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@exmaple.com",
///     skuName: "Developer_1",
/// });
/// const exampleBackend = new azure.apimanagement.Backend("example", {
///     name: "example-backend",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     protocol: "http",
///     url: "https://backend.com/api",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@exmaple.com",
///     sku_name="Developer_1")
/// example_backend = azure.apimanagement.Backend("example",
///     name="example-backend",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     protocol="http",
///     url="https://backend.com/api")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@exmaple.com",
///         SkuName = "Developer_1",
///     });
///
///     var exampleBackend = new Azure.ApiManagement.Backend("example", new()
///     {
///         Name = "example-backend",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         Protocol = "http",
///         Url = "https://backend.com/api",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@exmaple.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewBackend(ctx, "example", &apimanagement.BackendArgs{
/// 			Name:              pulumi.String("example-backend"),
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			Protocol:          pulumi.String("http"),
/// 			Url:               pulumi.String("https://backend.com/api"),
/// 		})
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.Backend;
/// import com.pulumi.azure.apimanagement.BackendArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@exmaple.com")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleBackend = new Backend("exampleBackend", BackendArgs.builder()
///             .name("example-backend")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .protocol("http")
///             .url("https://backend.com/api")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@exmaple.com
///       skuName: Developer_1
///   exampleBackend:
///     type: azure:apimanagement:Backend
///     name: example
///     properties:
///       name: example-backend
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       protocol: http
///       url: https://backend.com/api
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01
///
/// ## Import
///
/// API Management backends can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/backend:Backend example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/backends/backend1
/// ```
class Backend extends pulumi.CustomResource {
  /// The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// A `circuit_breaker_rule` block as documented below.
  late final pulumi.Output<BackendCircuitBreakerRule?> circuitBreakerRule;
  /// A `credentials` block as documented below.
  late final pulumi.Output<BackendCredentials?> credentials;
  /// The description of the backend.
  late final pulumi.Output<String?> description;
  /// The name of the API Management backend. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The protocol used by the backend host. Possible values are `http` or `soap`.
  late final pulumi.Output<String> protocol;
  /// A `proxy` block as documented below.
  late final pulumi.Output<BackendProxy?> proxy;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster.
  late final pulumi.Output<String?> resourceId;
  /// A `service_fabric_cluster` block as documented below.
  late final pulumi.Output<BackendServiceFabricCluster?> serviceFabricCluster;
  /// The title of the backend.
  late final pulumi.Output<String?> title;
  /// A `tls` block as documented below.
  late final pulumi.Output<BackendTls?> tls;
  /// The backend host URL should be specified in the format `"https://backend.com/api"`, avoiding trailing slashes (/) to minimize misconfiguration risks. Azure API Management instance will append the backend resource name to this URL. This URL typically serves as the `base-url` in the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, enabling seamless transitions from frontend to backend.
  late final pulumi.Output<String> url;

  /// Creates a new [Backend].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backend]. {@macro pulumi_apimanagement_backend_backend_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backend(
    String name, {
    BackendArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/backend:Backend',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.circuitBreakerRule = registerOutput<BackendCircuitBreakerRule?>('circuitBreakerRule');
    this.credentials = registerOutput<BackendCredentials?>('credentials');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.protocol = registerOutput<String>('protocol');
    this.proxy = registerOutput<BackendProxy?>('proxy');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.resourceId = registerOutput<String?>('resourceId');
    this.serviceFabricCluster = registerOutput<BackendServiceFabricCluster?>('serviceFabricCluster');
    this.title = registerOutput<String?>('title');
    this.tls = registerOutput<BackendTls?>('tls');
    this.url = registerOutput<String>('url');
  }
}
