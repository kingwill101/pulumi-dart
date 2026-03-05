import 'package:pulumi/pulumi.dart' as pulumi;
import 'federated_identity_credential_args.dart';
import 'system_data_response.dart';

/// Describes a federated identity credential.
///
/// Uses Azure REST API version 2023-01-31. In version 2.x of the Azure Native provider, it used API version 2023-01-31.
///
/// Other available API versions: 2022-01-31-preview, 2023-07-31-preview, 2024-11-30, 2025-01-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managedidentity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### FederatedIdentityCredentialCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var federatedIdentityCredential = new AzureNative.ManagedIdentity.FederatedIdentityCredential("federatedIdentityCredential", new()
///     {
///         Audiences = new[]
///         {
///             "api://AzureADTokenExchange",
///         },
///         FederatedIdentityCredentialResourceName = "ficResourceName",
///         Issuer = "https://oidc.prod-aks.azure.com/TenantGUID/IssuerGUID",
///         ResourceGroupName = "rgName",
///         ResourceName = "resourceName",
///         Subject = "system:serviceaccount:ns:svcaccount",
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
/// 	managedidentity "github.com/pulumi/pulumi-azure-native-sdk/managedidentity/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managedidentity.NewFederatedIdentityCredential(ctx, "federatedIdentityCredential", &managedidentity.FederatedIdentityCredentialArgs{
/// 			Audiences: pulumi.StringArray{
/// 				pulumi.String("api://AzureADTokenExchange"),
/// 			},
/// 			FederatedIdentityCredentialResourceName: pulumi.String("ficResourceName"),
/// 			Issuer:                                  pulumi.String("https://oidc.prod-aks.azure.com/TenantGUID/IssuerGUID"),
/// 			ResourceGroupName:                       pulumi.String("rgName"),
/// 			ResourceName:                            pulumi.String("resourceName"),
/// 			Subject:                                 pulumi.String("system:serviceaccount:ns:svcaccount"),
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
/// import com.pulumi.azurenative.managedidentity.FederatedIdentityCredential;
/// import com.pulumi.azurenative.managedidentity.FederatedIdentityCredentialArgs;
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
///         var federatedIdentityCredential = new FederatedIdentityCredential("federatedIdentityCredential", FederatedIdentityCredentialArgs.builder()
///             .audiences("api://AzureADTokenExchange")
///             .federatedIdentityCredentialResourceName("ficResourceName")
///             .issuer("https://oidc.prod-aks.azure.com/TenantGUID/IssuerGUID")
///             .resourceGroupName("rgName")
///             .resourceName("resourceName")
///             .subject("system:serviceaccount:ns:svcaccount")
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
/// const federatedIdentityCredential = new azure_native.managedidentity.FederatedIdentityCredential("federatedIdentityCredential", {
///     audiences: ["api://AzureADTokenExchange"],
///     federatedIdentityCredentialResourceName: "ficResourceName",
///     issuer: "https://oidc.prod-aks.azure.com/TenantGUID/IssuerGUID",
///     resourceGroupName: "rgName",
///     resourceName: "resourceName",
///     subject: "system:serviceaccount:ns:svcaccount",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// federated_identity_credential = azure_native.managedidentity.FederatedIdentityCredential("federatedIdentityCredential",
///     audiences=["api://AzureADTokenExchange"],
///     federated_identity_credential_resource_name="ficResourceName",
///     issuer="https://oidc.prod-aks.azure.com/TenantGUID/IssuerGUID",
///     resource_group_name="rgName",
///     resource_name_="resourceName",
///     subject="system:serviceaccount:ns:svcaccount")
///
/// ```
///
/// ```yaml
/// resources:
///   federatedIdentityCredential:
///     type: azure-native:managedidentity:FederatedIdentityCredential
///     properties:
///       audiences:
///         - api://AzureADTokenExchange
///       federatedIdentityCredentialResourceName: ficResourceName
///       issuer: https://oidc.prod-aks.azure.com/TenantGUID/IssuerGUID
///       resourceGroupName: rgName
///       resourceName: resourceName
///       subject: system:serviceaccount:ns:svcaccount
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
/// $ pulumi import azure-native:managedidentity:FederatedIdentityCredential ficResourceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{resourceName}/federatedIdentityCredentials/{federatedIdentityCredentialResourceName}
/// ```
class FederatedIdentityCredential extends pulumi.CustomResource {
  /// The list of audiences that can appear in the issued token.
  late final pulumi.Output<List<String>> audiences;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The URL of the issuer to be trusted.
  late final pulumi.Output<String> issuer;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The identifier of the external identity.
  late final pulumi.Output<String> subject;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FederatedIdentityCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FederatedIdentityCredential]. {@macro pulumi_managedidentity_federated_identity_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FederatedIdentityCredential(
    String name, {
    FederatedIdentityCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managedidentity:FederatedIdentityCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    audiences = registerOutput<List<String>>('audiences');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    subject = registerOutput<String>('subject');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
