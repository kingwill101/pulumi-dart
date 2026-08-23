import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_base_parameters_response_pool.dart';
import 'backend_circuit_breaker_response.dart';
import 'backend_credentials_contract_response.dart';
import 'backend_properties_response.dart';
import 'backend_proxy_contract_response.dart';
import 'backend_tls_properties_response.dart';
import 'workspace_backend_args.dart';

/// Backend details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-09-01-preview.
///
/// Other available API versions: 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceBackendProxyBackend
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceBackend = new AzureNative.ApiManagement.WorkspaceBackend("workspaceBackend", new()
///     {
///         BackendId = "proxybackend",
///         Credentials = new AzureNative.ApiManagement.Inputs.BackendCredentialsContractArgs
///         {
///             Authorization = new AzureNative.ApiManagement.Inputs.BackendAuthorizationHeaderCredentialsArgs
///             {
///                 Parameter = "opensesma",
///                 Scheme = "Basic",
///             },
///             Header =
///             {
///                 { "x-my-1", new[]
///                 {
///                     "val1",
///                     "val2",
///                 } },
///             },
///             Query =
///             {
///                 { "sv", new[]
///                 {
///                     "xx",
///                     "bb",
///                     "cc",
///                 } },
///             },
///         },
///         Description = "description5308",
///         Protocol = AzureNative.ApiManagement.BackendProtocol.Http,
///         Proxy = new AzureNative.ApiManagement.Inputs.BackendProxyContractArgs
///         {
///             Password = "<password>",
///             Url = "http://192.168.1.1:8080",
///             Username = "Contoso\\admin",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Tls = new AzureNative.ApiManagement.Inputs.BackendTlsPropertiesArgs
///         {
///             ValidateCertificateChain = true,
///             ValidateCertificateName = true,
///         },
///         Url = "https://backendname2644/",
///         WorkspaceId = "wks1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewWorkspaceBackend(ctx, "workspaceBackend", &apimanagement.WorkspaceBackendArgs{
/// 			BackendId: pulumi.String("proxybackend"),
/// 			Credentials: &apimanagement.BackendCredentialsContractArgs{
/// 				Authorization: &apimanagement.BackendAuthorizationHeaderCredentialsArgs{
/// 					Parameter: pulumi.String("opensesma"),
/// 					Scheme:    pulumi.String("Basic"),
/// 				},
/// 				Header: pulumi.StringArrayMap{
/// 					"x-my-1": pulumi.StringArray{
/// 						pulumi.String("val1"),
/// 						pulumi.String("val2"),
/// 					},
/// 				},
/// 				Query: pulumi.StringArrayMap{
/// 					"sv": pulumi.StringArray{
/// 						pulumi.String("xx"),
/// 						pulumi.String("bb"),
/// 						pulumi.String("cc"),
/// 					},
/// 				},
/// 			},
/// 			Description: pulumi.String("description5308"),
/// 			Protocol:    pulumi.String(apimanagement.BackendProtocolHttp),
/// 			Proxy: &apimanagement.BackendProxyContractArgs{
/// 				Password: pulumi.String("<password>"),
/// 				Url:      pulumi.String("http://192.168.1.1:8080"),
/// 				Username: pulumi.String("Contoso\\admin"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Tls: &apimanagement.BackendTlsPropertiesArgs{
/// 				ValidateCertificateChain: pulumi.Bool(true),
/// 				ValidateCertificateName:  pulumi.Bool(true),
/// 			},
/// 			Url:         pulumi.String("https://backendname2644/"),
/// 			WorkspaceId: pulumi.String("wks1"),
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
/// resource "azure-native_apimanagement_workspacebackend" "workspaceBackend" {
///   backend_id = "proxybackend"
///   credentials = {
///     authorization = {
///       parameter = "opensesma"
///       scheme    = "Basic"
///     }
///     header = {
///       "x-my-1" = ["val1", "val2"]
///     }
///     query = {
///       "sv" = ["xx", "bb", "cc"]
///     }
///   }
///   description = "description5308"
///   protocol    = "http"
///   proxy = {
///     password = "<password>"
///     url      = "http://192.168.1.1:8080"
///     username = "Contoso\\admin"
///   }
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   tls = {
///     validate_certificate_chain = true
///     validate_certificate_name  = true
///   }
///   url          = "https://backendname2644/"
///   workspace_id = "wks1"
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceBackend;
/// import com.pulumi.azurenative.apimanagement.WorkspaceBackendArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendCredentialsContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendAuthorizationHeaderCredentialsArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendProxyContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendTlsPropertiesArgs;
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
///         var workspaceBackend = new WorkspaceBackend("workspaceBackend", WorkspaceBackendArgs.builder()
///             .backendId("proxybackend")
///             .credentials(BackendCredentialsContractArgs.builder()
///                 .authorization(BackendAuthorizationHeaderCredentialsArgs.builder()
///                     .parameter("opensesma")
///                     .scheme("Basic")
///                     .build())
///                 .header(Map.of("x-my-1", Arrays.asList(
///                     "val1",
///                     "val2")))
///                 .query(Map.of("sv", Arrays.asList(
///                     "xx",
///                     "bb",
///                     "cc")))
///                 .build())
///             .description("description5308")
///             .protocol("http")
///             .proxy(BackendProxyContractArgs.builder()
///                 .password("<password>")
///                 .url("http://192.168.1.1:8080")
///                 .username("Contoso\\admin")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .tls(BackendTlsPropertiesArgs.builder()
///                 .validateCertificateChain(true)
///                 .validateCertificateName(true)
///                 .build())
///             .url("https://backendname2644/")
///             .workspaceId("wks1")
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
/// const workspaceBackend = new azure_native.apimanagement.WorkspaceBackend("workspaceBackend", {
///     backendId: "proxybackend",
///     credentials: {
///         authorization: {
///             parameter: "opensesma",
///             scheme: "Basic",
///         },
///         header: {
///             "x-my-1": [
///                 "val1",
///                 "val2",
///             ],
///         },
///         query: {
///             sv: [
///                 "xx",
///                 "bb",
///                 "cc",
///             ],
///         },
///     },
///     description: "description5308",
///     protocol: azure_native.apimanagement.BackendProtocol.Http,
///     proxy: {
///         password: "<password>",
///         url: "http://192.168.1.1:8080",
///         username: "Contoso\\admin",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     tls: {
///         validateCertificateChain: true,
///         validateCertificateName: true,
///     },
///     url: "https://backendname2644/",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_backend = azure_native.apimanagement.WorkspaceBackend("workspaceBackend",
///     backend_id="proxybackend",
///     credentials={
///         "authorization": {
///             "parameter": "opensesma",
///             "scheme": "Basic",
///         },
///         "header": {
///             "x-my-1": [
///                 "val1",
///                 "val2",
///             ],
///         },
///         "query": {
///             "sv": [
///                 "xx",
///                 "bb",
///                 "cc",
///             ],
///         },
///     },
///     description="description5308",
///     protocol=azure_native.apimanagement.BackendProtocol.HTTP,
///     proxy={
///         "password": "<password>",
///         "url": "http://192.168.1.1:8080",
///         "username": "Contoso\\admin",
///     },
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tls={
///         "validate_certificate_chain": True,
///         "validate_certificate_name": True,
///     },
///     url="https://backendname2644/",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceBackend:
///     type: azure-native:apimanagement:WorkspaceBackend
///     properties:
///       backendId: proxybackend
///       credentials:
///         authorization:
///           parameter: opensesma
///           scheme: Basic
///         header:
///           x-my-1:
///             - val1
///             - val2
///         query:
///           sv:
///             - xx
///             - bb
///             - cc
///       description: description5308
///       protocol: http
///       proxy:
///         password: <password>
///         url: http://192.168.1.1:8080
///         username: Contoso\admin
///       resourceGroupName: rg1
///       serviceName: apimService1
///       tls:
///         validateCertificateChain: true
///         validateCertificateName: true
///       url: https://backendname2644/
///       workspaceId: wks1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceBackendServiceFabric
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceBackend = new AzureNative.ApiManagement.WorkspaceBackend("workspaceBackend", new()
///     {
///         BackendId = "sfbackend",
///         Description = "Service Fabric Test App 1",
///         Properties = new AzureNative.ApiManagement.Inputs.BackendPropertiesArgs
///         {
///             ServiceFabricCluster = new AzureNative.ApiManagement.Inputs.BackendServiceFabricClusterPropertiesArgs
///             {
///                 ClientCertificateId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/certificates/cert1",
///                 ManagementEndpoints = new[]
///                 {
///                     "https://somecluster.com",
///                 },
///                 MaxPartitionResolutionRetries = 5,
///                 ServerX509Names = new[]
///                 {
///                     new AzureNative.ApiManagement.Inputs.X509CertificateNameArgs
///                     {
///                         IssuerCertificateThumbprint = "IssuerCertificateThumbprint1",
///                         Name = "ServerCommonName1",
///                     },
///                 },
///             },
///         },
///         Protocol = AzureNative.ApiManagement.BackendProtocol.Http,
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Url = "fabric:/mytestapp/mytestservice",
///         WorkspaceId = "wks1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewWorkspaceBackend(ctx, "workspaceBackend", &apimanagement.WorkspaceBackendArgs{
/// 			BackendId:   pulumi.String("sfbackend"),
/// 			Description: pulumi.String("Service Fabric Test App 1"),
/// 			Properties: &apimanagement.BackendPropertiesArgs{
/// 				ServiceFabricCluster: &apimanagement.BackendServiceFabricClusterPropertiesArgs{
/// 					ClientCertificateId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/certificates/cert1"),
/// 					ManagementEndpoints: pulumi.StringArray{
/// 						pulumi.String("https://somecluster.com"),
/// 					},
/// 					MaxPartitionResolutionRetries: pulumi.Int(5),
/// 					ServerX509Names: apimanagement.X509CertificateNameArray{
/// 						&apimanagement.X509CertificateNameArgs{
/// 							IssuerCertificateThumbprint: pulumi.String("IssuerCertificateThumbprint1"),
/// 							Name:                        pulumi.String("ServerCommonName1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Protocol:          pulumi.String(apimanagement.BackendProtocolHttp),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Url:               pulumi.String("fabric:/mytestapp/mytestservice"),
/// 			WorkspaceId:       pulumi.String("wks1"),
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
/// resource "azure-native_apimanagement_workspacebackend" "workspaceBackend" {
///   backend_id  = "sfbackend"
///   description = "Service Fabric Test App 1"
///   properties = {
///     service_fabric_cluster = {
///       client_certificate_id            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/certificates/cert1"
///       management_endpoints             = ["https://somecluster.com"]
///       max_partition_resolution_retries = 5
///       server_x509_names = [{
///         "issuerCertificateThumbprint" = "IssuerCertificateThumbprint1"
///         "name"                        = "ServerCommonName1"
///       }]
///     }
///   }
///   protocol            = "http"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   url                 = "fabric:/mytestapp/mytestservice"
///   workspace_id        = "wks1"
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceBackend;
/// import com.pulumi.azurenative.apimanagement.WorkspaceBackendArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendPropertiesArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendServiceFabricClusterPropertiesArgs;
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
///         var workspaceBackend = new WorkspaceBackend("workspaceBackend", WorkspaceBackendArgs.builder()
///             .backendId("sfbackend")
///             .description("Service Fabric Test App 1")
///             .properties(BackendPropertiesArgs.builder()
///                 .serviceFabricCluster(BackendServiceFabricClusterPropertiesArgs.builder()
///                     .clientCertificateId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/certificates/cert1")
///                     .managementEndpoints("https://somecluster.com")
///                     .maxPartitionResolutionRetries(5)
///                     .serverX509Names(X509CertificateNameArgs.builder()
///                         .issuerCertificateThumbprint("IssuerCertificateThumbprint1")
///                         .name("ServerCommonName1")
///                         .build())
///                     .build())
///                 .build())
///             .protocol("http")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .url("fabric:/mytestapp/mytestservice")
///             .workspaceId("wks1")
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
/// const workspaceBackend = new azure_native.apimanagement.WorkspaceBackend("workspaceBackend", {
///     backendId: "sfbackend",
///     description: "Service Fabric Test App 1",
///     properties: {
///         serviceFabricCluster: {
///             clientCertificateId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/certificates/cert1",
///             managementEndpoints: ["https://somecluster.com"],
///             maxPartitionResolutionRetries: 5,
///             serverX509Names: [{
///                 issuerCertificateThumbprint: "IssuerCertificateThumbprint1",
///                 name: "ServerCommonName1",
///             }],
///         },
///     },
///     protocol: azure_native.apimanagement.BackendProtocol.Http,
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     url: "fabric:/mytestapp/mytestservice",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_backend = azure_native.apimanagement.WorkspaceBackend("workspaceBackend",
///     backend_id="sfbackend",
///     description="Service Fabric Test App 1",
///     properties={
///         "service_fabric_cluster": {
///             "client_certificate_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/certificates/cert1",
///             "management_endpoints": ["https://somecluster.com"],
///             "max_partition_resolution_retries": 5,
///             "server_x509_names": [{
///                 "issuer_certificate_thumbprint": "IssuerCertificateThumbprint1",
///                 "name": "ServerCommonName1",
///             }],
///         },
///     },
///     protocol=azure_native.apimanagement.BackendProtocol.HTTP,
///     resource_group_name="rg1",
///     service_name="apimService1",
///     url="fabric:/mytestapp/mytestservice",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceBackend:
///     type: azure-native:apimanagement:WorkspaceBackend
///     properties:
///       backendId: sfbackend
///       description: Service Fabric Test App 1
///       properties:
///         serviceFabricCluster:
///           clientCertificateId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/certificates/cert1
///           managementEndpoints:
///             - https://somecluster.com
///           maxPartitionResolutionRetries: 5
///           serverX509Names:
///             - issuerCertificateThumbprint: IssuerCertificateThumbprint1
///               name: ServerCommonName1
///       protocol: http
///       resourceGroupName: rg1
///       serviceName: apimService1
///       url: fabric:/mytestapp/mytestservice
///       workspaceId: wks1
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
/// $ pulumi import azure-native:apimanagement:WorkspaceBackend sfbackend /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/backends/{backendId}
/// ```
class WorkspaceBackend extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Backend Circuit Breaker Configuration
  late final pulumi.Output<BackendCircuitBreakerResponse?> circuitBreaker;
  /// Backend Credentials Contract Properties
  late final pulumi.Output<BackendCredentialsContractResponse?> credentials;
  /// Backend Description.
  late final pulumi.Output<String?> description;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<BackendBaseParametersResponsePool?> pool;
  /// Backend Properties contract
  late final pulumi.Output<BackendPropertiesResponse> properties;
  /// Backend communication protocol. Required when backend type is 'Single'.
  late final pulumi.Output<String?> protocol;
  /// Backend gateway Contract Properties
  late final pulumi.Output<BackendProxyContractResponse?> proxy;
  /// Management Uri of the Resource in External System. This URL can be the Arm Resource Id of Logic Apps, Function Apps or API Apps.
  late final pulumi.Output<String?> resourceId;
  /// Backend Title.
  late final pulumi.Output<String?> title;
  /// Backend TLS Properties
  late final pulumi.Output<BackendTlsPropertiesResponse?> tls;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Runtime Url of the Backend. Required when backend type is 'Single'.
  late final pulumi.Output<String?> url;

  /// Creates a new [WorkspaceBackend].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceBackend]. {@macro pulumi_apimanagement_workspace_backend_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceBackend(
    String name, {
    WorkspaceBackendArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceBackend',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    circuitBreaker = registerOutput<BackendCircuitBreakerResponse?>('circuitBreaker', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackendCircuitBreakerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    credentials = registerOutput<BackendCredentialsContractResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackendCredentialsContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    pool = registerOutput<BackendBaseParametersResponsePool?>('pool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackendBaseParametersResponsePool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    properties = registerOutput<BackendPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackendPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocol = registerOutput<String?>('protocol');
    proxy = registerOutput<BackendProxyContractResponse?>('proxy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackendProxyContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceId = registerOutput<String?>('resourceId');
    title = registerOutput<String?>('title');
    tls = registerOutput<BackendTlsPropertiesResponse?>('tls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackendTlsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    url = registerOutput<String?>('url');
  }
}
