import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_qlapi_resolver_policy_args.dart';

/// Policy Contract details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateGraphQLApiResolverPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var graphQLApiResolverPolicy = new AzureNative.ApiManagement.GraphQLApiResolverPolicy("graphQLApiResolverPolicy", new()
///     {
///         ApiId = "5600b57e7e8880006a040001",
///         Format = AzureNative.ApiManagement.PolicyContentFormat.Xml,
///         PolicyId = "policy",
///         ResolverId = "5600b57e7e8880006a080001",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = "<http-data-source><http-request><set-method>GET</set-method><set-backend-service base-url=\"https://some.service.com\" /><set-url>/api/users</set-url></http-request></http-data-source>",
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
/// 		_, err := apimanagement.NewGraphQLApiResolverPolicy(ctx, "graphQLApiResolverPolicy", &apimanagement.GraphQLApiResolverPolicyArgs{
/// 			ApiId:             pulumi.String("5600b57e7e8880006a040001"),
/// 			Format:            pulumi.String(apimanagement.PolicyContentFormatXml),
/// 			PolicyId:          pulumi.String("policy"),
/// 			ResolverId:        pulumi.String("5600b57e7e8880006a080001"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value:             pulumi.String("<http-data-source><http-request><set-method>GET</set-method><set-backend-service base-url=\"https://some.service.com\" /><set-url>/api/users</set-url></http-request></http-data-source>"),
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
/// resource "azure-native_apimanagement_graphqlapiresolverpolicy" "graphQLApiResolverPolicy" {
///   api_id              = "5600b57e7e8880006a040001"
///   format              = "xml"
///   policy_id           = "policy"
///   resolver_id         = "5600b57e7e8880006a080001"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   value               = "<http-data-source><http-request><set-method>GET</set-method><set-backend-service base-url=\"https://some.service.com\" /><set-url>/api/users</set-url></http-request></http-data-source>"
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
/// import com.pulumi.azurenative.apimanagement.GraphQLApiResolverPolicy;
/// import com.pulumi.azurenative.apimanagement.GraphQLApiResolverPolicyArgs;
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
///         var graphQLApiResolverPolicy = new GraphQLApiResolverPolicy("graphQLApiResolverPolicy", GraphQLApiResolverPolicyArgs.builder()
///             .apiId("5600b57e7e8880006a040001")
///             .format("xml")
///             .policyId("policy")
///             .resolverId("5600b57e7e8880006a080001")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("<http-data-source><http-request><set-method>GET</set-method><set-backend-service base-url=\"https://some.service.com\" /><set-url>/api/users</set-url></http-request></http-data-source>")
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
/// const graphQLApiResolverPolicy = new azure_native.apimanagement.GraphQLApiResolverPolicy("graphQLApiResolverPolicy", {
///     apiId: "5600b57e7e8880006a040001",
///     format: azure_native.apimanagement.PolicyContentFormat.Xml,
///     policyId: "policy",
///     resolverId: "5600b57e7e8880006a080001",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: "<http-data-source><http-request><set-method>GET</set-method><set-backend-service base-url=\"https://some.service.com\" /><set-url>/api/users</set-url></http-request></http-data-source>",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// graph_ql_api_resolver_policy = azure_native.apimanagement.GraphQLApiResolverPolicy("graphQLApiResolverPolicy",
///     api_id="5600b57e7e8880006a040001",
///     format=azure_native.apimanagement.PolicyContentFormat.XML,
///     policy_id="policy",
///     resolver_id="5600b57e7e8880006a080001",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="<http-data-source><http-request><set-method>GET</set-method><set-backend-service base-url=\"https://some.service.com\" /><set-url>/api/users</set-url></http-request></http-data-source>")
///
/// ```
///
/// ```yaml
/// resources:
///   graphQLApiResolverPolicy:
///     type: azure-native:apimanagement:GraphQLApiResolverPolicy
///     properties:
///       apiId: 5600b57e7e8880006a040001
///       format: xml
///       policyId: policy
///       resolverId: 5600b57e7e8880006a080001
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: <http-data-source><http-request><set-method>GET</set-method><set-backend-service base-url="https://some.service.com" /><set-url>/api/users</set-url></http-request></http-data-source>
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
/// $ pulumi import azure-native:apimanagement:GraphQLApiResolverPolicy policy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/resolvers/{resolverId}/policies/{policyId}
/// ```
class GraphQLApiResolverPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Format of the policyContent.
  late final pulumi.Output<String?> format;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Contents of the Policy as defined by the format.
  late final pulumi.Output<String> value;

  /// Creates a new [GraphQLApiResolverPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GraphQLApiResolverPolicy]. {@macro pulumi_apimanagement_graph_qlapi_resolver_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GraphQLApiResolverPolicy(
    String name, {
    GraphQLApiResolverPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:GraphQLApiResolverPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [GraphQLApiResolverPolicy] resource.
  GraphQLApiResolverPolicy.reference(String urn)
    : super(
        'azure-native:apimanagement:GraphQLApiResolverPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }
}
