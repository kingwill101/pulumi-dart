import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwtauthenticator_args.dart';
import 'jwtauthenticator_properties_response.dart';
import 'system_data_response.dart';

/// Configuration for JWT authenticator in the managed cluster.
///
/// Uses Azure REST API version 2025-07-02-preview.
///
/// Other available API versions: 2025-08-02-preview, 2025-09-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update JWT Authenticator
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jwtAuthenticator = new AzureNative.ContainerService.JWTAuthenticator("jwtAuthenticator", new()
///     {
///         JwtAuthenticatorName = "jwt1",
///         Properties = new AzureNative.ContainerService.Inputs.JWTAuthenticatorPropertiesArgs
///         {
///             ClaimMappings = new AzureNative.ContainerService.Inputs.JWTAuthenticatorClaimMappingsArgs
///             {
///                 Extra = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.JWTAuthenticatorExtraClaimMappingExpressionArgs
///                     {
///                         Key = "example.com/extrakey",
///                         ValueExpression = "claims.customfield",
///                     },
///                 },
///                 Groups = new AzureNative.ContainerService.Inputs.JWTAuthenticatorClaimMappingExpressionArgs
///                 {
///                     Expression = "claims.groups.split(',').map(group, 'aks:jwt:' + group)",
///                 },
///                 Username = new AzureNative.ContainerService.Inputs.JWTAuthenticatorClaimMappingExpressionArgs
///                 {
///                     Expression = "'aks:jwt:' + claims.sub",
///                 },
///             },
///             ClaimValidationRules = new[]
///             {
///                 new AzureNative.ContainerService.Inputs.JWTAuthenticatorValidationRuleArgs
///                 {
///                     Expression = "has(claims.sub)",
///                     Message = "Sub is required",
///                 },
///                 new AzureNative.ContainerService.Inputs.JWTAuthenticatorValidationRuleArgs
///                 {
///                     Expression = "claims.sub != ''",
///                     Message = "Sub cannot be empty",
///                 },
///             },
///             Issuer = new AzureNative.ContainerService.Inputs.JWTAuthenticatorIssuerArgs
///             {
///                 Audiences = new[]
///                 {
///                     "https://example.com/audience1",
///                     "https://example.com/audience2",
///                 },
///                 Url = "https://example.com",
///             },
///             UserValidationRules = new[]
///             {
///                 new AzureNative.ContainerService.Inputs.JWTAuthenticatorValidationRuleArgs
///                 {
///                     Expression = "user.groups.all(group, group.startsWith('aks:jwt:admin:'))",
///                     Message = "Must be in admin user group",
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewJWTAuthenticator(ctx, "jwtAuthenticator", &containerservice.JWTAuthenticatorArgs{
/// 			JwtAuthenticatorName: pulumi.String("jwt1"),
/// 			Properties: &containerservice.JWTAuthenticatorPropertiesArgs{
/// 				ClaimMappings: &containerservice.JWTAuthenticatorClaimMappingsArgs{
/// 					Extra: containerservice.JWTAuthenticatorExtraClaimMappingExpressionArray{
/// 						&containerservice.JWTAuthenticatorExtraClaimMappingExpressionArgs{
/// 							Key:             pulumi.String("example.com/extrakey"),
/// 							ValueExpression: pulumi.String("claims.customfield"),
/// 						},
/// 					},
/// 					Groups: &containerservice.JWTAuthenticatorClaimMappingExpressionArgs{
/// 						Expression: pulumi.String("claims.groups.split(',').map(group, 'aks:jwt:' + group)"),
/// 					},
/// 					Username: &containerservice.JWTAuthenticatorClaimMappingExpressionArgs{
/// 						Expression: pulumi.String("'aks:jwt:' + claims.sub"),
/// 					},
/// 				},
/// 				ClaimValidationRules: containerservice.JWTAuthenticatorValidationRuleArray{
/// 					&containerservice.JWTAuthenticatorValidationRuleArgs{
/// 						Expression: pulumi.String("has(claims.sub)"),
/// 						Message:    pulumi.String("Sub is required"),
/// 					},
/// 					&containerservice.JWTAuthenticatorValidationRuleArgs{
/// 						Expression: pulumi.String("claims.sub != ''"),
/// 						Message:    pulumi.String("Sub cannot be empty"),
/// 					},
/// 				},
/// 				Issuer: &containerservice.JWTAuthenticatorIssuerArgs{
/// 					Audiences: pulumi.StringArray{
/// 						pulumi.String("https://example.com/audience1"),
/// 						pulumi.String("https://example.com/audience2"),
/// 					},
/// 					Url: pulumi.String("https://example.com"),
/// 				},
/// 				UserValidationRules: containerservice.JWTAuthenticatorValidationRuleArray{
/// 					&containerservice.JWTAuthenticatorValidationRuleArgs{
/// 						Expression: pulumi.String("user.groups.all(group, group.startsWith('aks:jwt:admin:'))"),
/// 						Message:    pulumi.String("Must be in admin user group"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
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
/// import com.pulumi.azurenative.containerservice.JWTAuthenticator;
/// import com.pulumi.azurenative.containerservice.JWTAuthenticatorArgs;
/// import com.pulumi.azurenative.containerservice.inputs.JWTAuthenticatorPropertiesArgs;
/// import com.pulumi.azurenative.containerservice.inputs.JWTAuthenticatorClaimMappingsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.JWTAuthenticatorClaimMappingExpressionArgs;
/// import com.pulumi.azurenative.containerservice.inputs.JWTAuthenticatorIssuerArgs;
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
///         var jwtAuthenticator = new JWTAuthenticator("jwtAuthenticator", JWTAuthenticatorArgs.builder()
///             .jwtAuthenticatorName("jwt1")
///             .properties(JWTAuthenticatorPropertiesArgs.builder()
///                 .claimMappings(JWTAuthenticatorClaimMappingsArgs.builder()
///                     .extra(JWTAuthenticatorExtraClaimMappingExpressionArgs.builder()
///                         .key("example.com/extrakey")
///                         .valueExpression("claims.customfield")
///                         .build())
///                     .groups(JWTAuthenticatorClaimMappingExpressionArgs.builder()
///                         .expression("claims.groups.split(',').map(group, 'aks:jwt:' + group)")
///                         .build())
///                     .username(JWTAuthenticatorClaimMappingExpressionArgs.builder()
///                         .expression("'aks:jwt:' + claims.sub")
///                         .build())
///                     .build())
///                 .claimValidationRules(
///                     JWTAuthenticatorValidationRuleArgs.builder()
///                         .expression("has(claims.sub)")
///                         .message("Sub is required")
///                         .build(),
///                     JWTAuthenticatorValidationRuleArgs.builder()
///                         .expression("claims.sub != ''")
///                         .message("Sub cannot be empty")
///                         .build())
///                 .issuer(JWTAuthenticatorIssuerArgs.builder()
///                     .audiences(
///                         "https://example.com/audience1",
///                         "https://example.com/audience2")
///                     .url("https://example.com")
///                     .build())
///                 .userValidationRules(JWTAuthenticatorValidationRuleArgs.builder()
///                     .expression("user.groups.all(group, group.startsWith('aks:jwt:admin:'))")
///                     .message("Must be in admin user group")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
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
/// const jwtAuthenticator = new azure_native.containerservice.JWTAuthenticator("jwtAuthenticator", {
///     jwtAuthenticatorName: "jwt1",
///     properties: {
///         claimMappings: {
///             extra: [{
///                 key: "example.com/extrakey",
///                 valueExpression: "claims.customfield",
///             }],
///             groups: {
///                 expression: "claims.groups.split(',').map(group, 'aks:jwt:' + group)",
///             },
///             username: {
///                 expression: "'aks:jwt:' + claims.sub",
///             },
///         },
///         claimValidationRules: [
///             {
///                 expression: "has(claims.sub)",
///                 message: "Sub is required",
///             },
///             {
///                 expression: "claims.sub != ''",
///                 message: "Sub cannot be empty",
///             },
///         ],
///         issuer: {
///             audiences: [
///                 "https://example.com/audience1",
///                 "https://example.com/audience2",
///             ],
///             url: "https://example.com",
///         },
///         userValidationRules: [{
///             expression: "user.groups.all(group, group.startsWith('aks:jwt:admin:'))",
///             message: "Must be in admin user group",
///         }],
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// jwt_authenticator = azure_native.containerservice.JWTAuthenticator("jwtAuthenticator",
///     jwt_authenticator_name="jwt1",
///     properties={
///         "claim_mappings": {
///             "extra": [{
///                 "key": "example.com/extrakey",
///                 "value_expression": "claims.customfield",
///             }],
///             "groups": {
///                 "expression": "claims.groups.split(',').map(group, 'aks:jwt:' + group)",
///             },
///             "username": {
///                 "expression": "'aks:jwt:' + claims.sub",
///             },
///         },
///         "claim_validation_rules": [
///             {
///                 "expression": "has(claims.sub)",
///                 "message": "Sub is required",
///             },
///             {
///                 "expression": "claims.sub != ''",
///                 "message": "Sub cannot be empty",
///             },
///         ],
///         "issuer": {
///             "audiences": [
///                 "https://example.com/audience1",
///                 "https://example.com/audience2",
///             ],
///             "url": "https://example.com",
///         },
///         "user_validation_rules": [{
///             "expression": "user.groups.all(group, group.startsWith('aks:jwt:admin:'))",
///             "message": "Must be in admin user group",
///         }],
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1")
///
/// ```
///
/// ```yaml
/// resources:
///   jwtAuthenticator:
///     type: azure-native:containerservice:JWTAuthenticator
///     properties:
///       jwtAuthenticatorName: jwt1
///       properties:
///         claimMappings:
///           extra:
///             - key: example.com/extrakey
///               valueExpression: claims.customfield
///           groups:
///             expression: claims.groups.split(',').map(group, 'aks:jwt:' + group)
///           username:
///             expression: '''aks:jwt:'' + claims.sub'
///         claimValidationRules:
///           - expression: has(claims.sub)
///             message: Sub is required
///           - expression: claims.sub != ''
///             message: Sub cannot be empty
///         issuer:
///           audiences:
///             - https://example.com/audience1
///             - https://example.com/audience2
///           url: https://example.com
///         userValidationRules:
///           - expression: user.groups.all(group, group.startsWith('aks:jwt:admin:'))
///             message: Must be in admin user group
///       resourceGroupName: rg1
///       resourceName: clustername1
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
/// $ pulumi import azure-native:containerservice:JWTAuthenticator jwt1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/jwtAuthenticators/{jwtAuthenticatorName}
/// ```
class JWTAuthenticator extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The properties of JWTAuthenticator. For details on how to configure the properties of a JWT authenticator, please refer to the Kubernetes documentation: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#using-authentication-configuration. Please note that not all fields available in the Kubernetes documentation are supported by AKS. For troubleshooting, please see https://aka.ms/aks-external-issuers-docs.
  late final pulumi.Output<JWTAuthenticatorPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [JWTAuthenticator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JWTAuthenticator]. {@macro pulumi_containerservice_jwtauthenticator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JWTAuthenticator(
    String name, {
    JWTAuthenticatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerservice:JWTAuthenticator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<JWTAuthenticatorPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JWTAuthenticatorPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    type = registerOutput<String>('type');
  }
}
