import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_gateway_hostname_binding_args.dart';
import 'gateway_hostname_binding_certificate_response.dart';
import 'gateway_hostname_binding_key_vault_response.dart';
import 'system_data_response.dart';

/// A single API Management gateway hostname binding resource in List or Get response.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateGatewayHostnameBinding
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiGatewayHostnameBinding = new AzureNative.ApiManagement.ApiGatewayHostnameBinding("apiGatewayHostnameBinding", new()
///     {
///         GatewayName = "apimGateway1",
///         Hostname = "primary.cotoso.com",
///         HostnameBindingName = "hb-1",
///         KeyVault = new AzureNative.ApiManagement.Inputs.GatewayHostnameBindingKeyVaultArgs
///         {
///             IdentityClientId = "00000000-0000-0000-0000-000000000000",
///             SecretId = "https://myvault.keyvault.azure.net/secrets/contosoprimarycert",
///         },
///         ResourceGroupName = "rg1",
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
/// 		_, err := apimanagement.NewApiGatewayHostnameBinding(ctx, "apiGatewayHostnameBinding", &apimanagement.ApiGatewayHostnameBindingArgs{
/// 			GatewayName:         pulumi.String("apimGateway1"),
/// 			Hostname:            pulumi.String("primary.cotoso.com"),
/// 			HostnameBindingName: pulumi.String("hb-1"),
/// 			KeyVault: &apimanagement.GatewayHostnameBindingKeyVaultArgs{
/// 				IdentityClientId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				SecretId:         pulumi.String("https://myvault.keyvault.azure.net/secrets/contosoprimarycert"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.apimanagement.ApiGatewayHostnameBinding;
/// import com.pulumi.azurenative.apimanagement.ApiGatewayHostnameBindingArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.GatewayHostnameBindingKeyVaultArgs;
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
///         var apiGatewayHostnameBinding = new ApiGatewayHostnameBinding("apiGatewayHostnameBinding", ApiGatewayHostnameBindingArgs.builder()
///             .gatewayName("apimGateway1")
///             .hostname("primary.cotoso.com")
///             .hostnameBindingName("hb-1")
///             .keyVault(GatewayHostnameBindingKeyVaultArgs.builder()
///                 .identityClientId("00000000-0000-0000-0000-000000000000")
///                 .secretId("https://myvault.keyvault.azure.net/secrets/contosoprimarycert")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const apiGatewayHostnameBinding = new azure_native.apimanagement.ApiGatewayHostnameBinding("apiGatewayHostnameBinding", {
///     gatewayName: "apimGateway1",
///     hostname: "primary.cotoso.com",
///     hostnameBindingName: "hb-1",
///     keyVault: {
///         identityClientId: "00000000-0000-0000-0000-000000000000",
///         secretId: "https://myvault.keyvault.azure.net/secrets/contosoprimarycert",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_gateway_hostname_binding = azure_native.apimanagement.ApiGatewayHostnameBinding("apiGatewayHostnameBinding",
///     gateway_name="apimGateway1",
///     hostname="primary.cotoso.com",
///     hostname_binding_name="hb-1",
///     key_vault={
///         "identity_client_id": "00000000-0000-0000-0000-000000000000",
///         "secret_id": "https://myvault.keyvault.azure.net/secrets/contosoprimarycert",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   apiGatewayHostnameBinding:
///     type: azure-native:apimanagement:ApiGatewayHostnameBinding
///     properties:
///       gatewayName: apimGateway1
///       hostname: primary.cotoso.com
///       hostnameBindingName: hb-1
///       keyVault:
///         identityClientId: 00000000-0000-0000-0000-000000000000
///         secretId: https://myvault.keyvault.azure.net/secrets/contosoprimarycert
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:apimanagement:ApiGatewayHostnameBinding hb-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/gateways/{gatewayName}/hostnameBindings/{hostnameBindingName}
/// ```
class ApiGatewayHostnameBinding extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The hostnames of the data-plane gateway to which requests can be sent.
  late final pulumi.Output<GatewayHostnameBindingCertificateResponse>
  certificate;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The default hostname of the data-plane gateway.
  late final pulumi.Output<String> hostname;

  /// The link to the API Management service workspace.
  late final pulumi.Output<GatewayHostnameBindingKeyVaultResponse> keyVault;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The current provisioning state of the API Management gateway hostname binding.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiGatewayHostnameBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiGatewayHostnameBinding]. {@macro pulumi_apimanagement_api_gateway_hostname_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiGatewayHostnameBinding(
    String name, {
    ApiGatewayHostnameBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:ApiGatewayHostnameBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificate = registerOutput<GatewayHostnameBindingCertificateResponse>(
      'certificate',
    );
    eTag = registerOutput<String>('eTag');
    hostname = registerOutput<String>('hostname');
    keyVault = registerOutput<GatewayHostnameBindingKeyVaultResponse>(
      'keyVault',
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
