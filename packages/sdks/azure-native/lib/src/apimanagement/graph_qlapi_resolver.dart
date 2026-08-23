import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_qlapi_resolver_args.dart';

/// GraphQL API Resolver details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateGraphQLApiResolver
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var graphQLApiResolver = new AzureNative.ApiManagement.GraphQLApiResolver("graphQLApiResolver", new()
///     {
///         ApiId = "someAPI",
///         Description = "A GraphQL Resolver example",
///         DisplayName = "Query Users",
///         Path = "Query/users",
///         ResolverId = "newResolver",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewGraphQLApiResolver(ctx, "graphQLApiResolver", &apimanagement.GraphQLApiResolverArgs{
/// 			ApiId:             pulumi.String("someAPI"),
/// 			Description:       pulumi.String("A GraphQL Resolver example"),
/// 			DisplayName:       pulumi.String("Query Users"),
/// 			Path:              pulumi.String("Query/users"),
/// 			ResolverId:        pulumi.String("newResolver"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_apimanagement_graphqlapiresolver" "graphQLApiResolver" {
///   api_id              = "someAPI"
///   description         = "A GraphQL Resolver example"
///   display_name        = "Query Users"
///   path                = "Query/users"
///   resolver_id         = "newResolver"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.GraphQLApiResolver;
/// import com.pulumi.azurenative.apimanagement.GraphQLApiResolverArgs;
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
///         var graphQLApiResolver = new GraphQLApiResolver("graphQLApiResolver", GraphQLApiResolverArgs.builder()
///             .apiId("someAPI")
///             .description("A GraphQL Resolver example")
///             .displayName("Query Users")
///             .path("Query/users")
///             .resolverId("newResolver")
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
/// const graphQLApiResolver = new azure_native.apimanagement.GraphQLApiResolver("graphQLApiResolver", {
///     apiId: "someAPI",
///     description: "A GraphQL Resolver example",
///     displayName: "Query Users",
///     path: "Query/users",
///     resolverId: "newResolver",
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
/// graph_ql_api_resolver = azure_native.apimanagement.GraphQLApiResolver("graphQLApiResolver",
///     api_id="someAPI",
///     description="A GraphQL Resolver example",
///     display_name="Query Users",
///     path="Query/users",
///     resolver_id="newResolver",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   graphQLApiResolver:
///     type: azure-native:apimanagement:GraphQLApiResolver
///     properties:
///       apiId: someAPI
///       description: A GraphQL Resolver example
///       displayName: Query Users
///       path: Query/users
///       resolverId: newResolver
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
/// $ pulumi import azure-native:apimanagement:GraphQLApiResolver newResolver /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/resolvers/{resolverId}
/// ```
class GraphQLApiResolver extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description of the resolver. May include HTML formatting tags.
  late final pulumi.Output<String?> description;
  /// Resolver Name.
  late final pulumi.Output<String?> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Path is type/field being resolved.
  late final pulumi.Output<String?> path;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GraphQLApiResolver].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GraphQLApiResolver]. {@macro pulumi_apimanagement_graph_qlapi_resolver_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GraphQLApiResolver(
    String name, {
    GraphQLApiResolverArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:GraphQLApiResolver',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    type = registerOutput<String>('type');
  }
}
