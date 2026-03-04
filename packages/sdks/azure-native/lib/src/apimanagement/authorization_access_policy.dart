import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_access_policy_args.dart';

/// Authorization access policy contract.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateAuthorizationAccessPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorizationAccessPolicy = new AzureNative.ApiManagement.AuthorizationAccessPolicy("authorizationAccessPolicy", new()
///     {
///         AuthorizationAccessPolicyId = "fe0bed83-631f-4149-bd0b-0464b1bc7cab",
///         AuthorizationId = "authz1",
///         AuthorizationProviderId = "aadwithauthcode",
///         ObjectId = "fe0bed83-631f-4149-bd0b-0464b1bc7cab",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         TenantId = "13932a0d-5c63-4d37-901d-1df9c97722ff",
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
/// 		_, err := apimanagement.NewAuthorizationAccessPolicy(ctx, "authorizationAccessPolicy", &apimanagement.AuthorizationAccessPolicyArgs{
/// 			AuthorizationAccessPolicyId: pulumi.String("fe0bed83-631f-4149-bd0b-0464b1bc7cab"),
/// 			AuthorizationId:             pulumi.String("authz1"),
/// 			AuthorizationProviderId:     pulumi.String("aadwithauthcode"),
/// 			ObjectId:                    pulumi.String("fe0bed83-631f-4149-bd0b-0464b1bc7cab"),
/// 			ResourceGroupName:           pulumi.String("rg1"),
/// 			ServiceName:                 pulumi.String("apimService1"),
/// 			TenantId:                    pulumi.String("13932a0d-5c63-4d37-901d-1df9c97722ff"),
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
/// import com.pulumi.azurenative.apimanagement.AuthorizationAccessPolicy;
/// import com.pulumi.azurenative.apimanagement.AuthorizationAccessPolicyArgs;
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
///         var authorizationAccessPolicy = new AuthorizationAccessPolicy("authorizationAccessPolicy", AuthorizationAccessPolicyArgs.builder()
///             .authorizationAccessPolicyId("fe0bed83-631f-4149-bd0b-0464b1bc7cab")
///             .authorizationId("authz1")
///             .authorizationProviderId("aadwithauthcode")
///             .objectId("fe0bed83-631f-4149-bd0b-0464b1bc7cab")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .tenantId("13932a0d-5c63-4d37-901d-1df9c97722ff")
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
/// const authorizationAccessPolicy = new azure_native.apimanagement.AuthorizationAccessPolicy("authorizationAccessPolicy", {
///     authorizationAccessPolicyId: "fe0bed83-631f-4149-bd0b-0464b1bc7cab",
///     authorizationId: "authz1",
///     authorizationProviderId: "aadwithauthcode",
///     objectId: "fe0bed83-631f-4149-bd0b-0464b1bc7cab",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     tenantId: "13932a0d-5c63-4d37-901d-1df9c97722ff",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authorization_access_policy = azure_native.apimanagement.AuthorizationAccessPolicy("authorizationAccessPolicy",
///     authorization_access_policy_id="fe0bed83-631f-4149-bd0b-0464b1bc7cab",
///     authorization_id="authz1",
///     authorization_provider_id="aadwithauthcode",
///     object_id="fe0bed83-631f-4149-bd0b-0464b1bc7cab",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tenant_id="13932a0d-5c63-4d37-901d-1df9c97722ff")
///
/// ```
///
/// ```yaml
/// resources:
///   authorizationAccessPolicy:
///     type: azure-native:apimanagement:AuthorizationAccessPolicy
///     properties:
///       authorizationAccessPolicyId: fe0bed83-631f-4149-bd0b-0464b1bc7cab
///       authorizationId: authz1
///       authorizationProviderId: aadwithauthcode
///       objectId: fe0bed83-631f-4149-bd0b-0464b1bc7cab
///       resourceGroupName: rg1
///       serviceName: apimService1
///       tenantId: 13932a0d-5c63-4d37-901d-1df9c97722ff
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
/// $ pulumi import azure-native:apimanagement:AuthorizationAccessPolicy fe0bed83-631f-4149-bd0b-0464b1bc7cab /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/authorizationProviders/{authorizationProviderId}/authorizations/{authorizationId}/accessPolicies/{authorizationAccessPolicyId}
/// ```
class AuthorizationAccessPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The Object Id
  late final pulumi.Output<String?> objectId;

  /// The Tenant Id
  late final pulumi.Output<String?> tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AuthorizationAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationAccessPolicy]. {@macro pulumi_apimanagement_authorization_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationAccessPolicy(
    String name, {
    AuthorizationAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:AuthorizationAccessPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String?>('objectId');
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
