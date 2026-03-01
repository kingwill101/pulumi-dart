import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';

/// Manages an Certificate within an API Management Service.
///
/// ## Example Usage
///
/// ### With Base64 Certificate)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
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
/// const exampleCertificate = new azure.apimanagement.Certificate("example", {
///     name: "example-cert",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     data: std.filebase64({
///         input: "example.pfx",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
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
/// example_certificate = azure.apimanagement.Certificate("example",
///     name="example-cert",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     data=std.filebase64(input="example.pfx").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
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
///     var exampleCertificate = new Azure.ApiManagement.Certificate("example", new()
///     {
///         Name = "example-cert",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         Data = Std.Filebase64.Invoke(new()
///         {
///             Input = "example.pfx",
///         }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "example.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewCertificate(ctx, "example", &apimanagement.CertificateArgs{
/// 			Name:              pulumi.String("example-cert"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			Data:              pulumi.String(invokeFilebase64.Result),
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
/// import com.pulumi.azure.apimanagement.Certificate;
/// import com.pulumi.azure.apimanagement.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("example-cert")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .data(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("example.pfx")
///                 .build()).result())
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
///   exampleCertificate:
///     type: azure:apimanagement:Certificate
///     name: example
///     properties:
///       name: example-cert
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       data:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: example.pfx
///           return: result
/// ```
///
///
///
/// ### With Key Vault Certificate)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@terraform.io",
///     skuName: "Developer_1",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
/// });
/// const exampleAccessPolicy = new azure.keyvault.AccessPolicy("example", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleService.identity.apply(identity => identity?.tenantId),
///     objectId: exampleService.identity.apply(identity => identity?.principalId),
///     secretPermissions: ["Get"],
///     certificatePermissions: ["Get"],
/// });
/// const exampleCertificate = new azure.keyvault.Certificate("example", {
///     name: "example-cert",
///     keyVaultId: exampleKeyVault.id,
///     certificate: {
///         contents: std.filebase64({
///             input: "example_cert.pfx",
///         }).then(invoke => invoke.result),
///         password: "terraform",
///     },
///     certificatePolicy: {
///         issuerParameters: {
///             name: "Self",
///         },
///         keyProperties: {
///             exportable: true,
///             keySize: 2048,
///             keyType: "RSA",
///             reuseKey: false,
///         },
///         secretProperties: {
///             contentType: "application/x-pkcs12",
///         },
///     },
/// });
/// const exampleCertificate2 = new azure.apimanagement.Certificate("example", {
///     name: "example-cert",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     keyVaultSecretId: exampleCertificate.secretId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@terraform.io",
///     sku_name="Developer_1",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard")
/// example_access_policy = azure.keyvault.AccessPolicy("example",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_service.identity.tenant_id,
///     object_id=example_service.identity.principal_id,
///     secret_permissions=["Get"],
///     certificate_permissions=["Get"])
/// example_certificate = azure.keyvault.Certificate("example",
///     name="example-cert",
///     key_vault_id=example_key_vault.id,
///     certificate={
///         "contents": std.filebase64(input="example_cert.pfx").result,
///         "password": "terraform",
///     },
///     certificate_policy={
///         "issuer_parameters": {
///             "name": "Self",
///         },
///         "key_properties": {
///             "exportable": True,
///             "key_size": 2048,
///             "key_type": "RSA",
///             "reuse_key": False,
///         },
///         "secret_properties": {
///             "content_type": "application/x-pkcs12",
///         },
///     })
/// example_certificate2 = azure.apimanagement.Certificate("example",
///     name="example-cert",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     key_vault_secret_id=example_certificate.secret_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
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
///         PublisherEmail = "company@terraform.io",
///         SkuName = "Developer_1",
///         Identity = new Azure.ApiManagement.Inputs.ServiceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///     });
///
///     var exampleAccessPolicy = new Azure.KeyVault.AccessPolicy("example", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleService.Identity.Apply(identity => identity?.TenantId),
///         ObjectId = exampleService.Identity.Apply(identity => identity?.PrincipalId),
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///         CertificatePermissions = new[]
///         {
///             "Get",
///         },
///     });
///
///     var exampleCertificate = new Azure.KeyVault.Certificate("example", new()
///     {
///         Name = "example-cert",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyVaultCertificate = new Azure.KeyVault.Inputs.CertificateCertificateArgs
///         {
///             Contents = Std.Filebase64.Invoke(new()
///             {
///                 Input = "example_cert.pfx",
///             }).Apply(invoke => invoke.Result),
///             Password = "terraform",
///         },
///         CertificatePolicy = new Azure.KeyVault.Inputs.CertificateCertificatePolicyArgs
///         {
///             IssuerParameters = new Azure.KeyVault.Inputs.CertificateCertificatePolicyIssuerParametersArgs
///             {
///                 Name = "Self",
///             },
///             KeyProperties = new Azure.KeyVault.Inputs.CertificateCertificatePolicyKeyPropertiesArgs
///             {
///                 Exportable = true,
///                 KeySize = 2048,
///                 KeyType = "RSA",
///                 ReuseKey = false,
///             },
///             SecretProperties = new Azure.KeyVault.Inputs.CertificateCertificatePolicySecretPropertiesArgs
///             {
///                 ContentType = "application/x-pkcs12",
///             },
///         },
///     });
///
///     var exampleCertificate2 = new Azure.ApiManagement.Certificate("example", new()
///     {
///         Name = "example-cert",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         KeyVaultSecretId = exampleCertificate.SecretId,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 			PublisherEmail:    pulumi.String("company@terraform.io"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 			Identity: &apimanagement.ServiceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("examplekeyvault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "example", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId: pulumi.String(exampleService.Identity.ApplyT(func(identity apimanagement.ServiceIdentity) (*string, error) {
/// 				return &identity.TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ObjectId: pulumi.String(exampleService.Identity.ApplyT(func(identity apimanagement.ServiceIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 			CertificatePermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "example_cert.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificate, err := keyvault.NewCertificate(ctx, "example", &keyvault.CertificateArgs{
/// 			Name:       pulumi.String("example-cert"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			Certificate: &keyvault.CertificateCertificateArgs{
/// 				Contents: pulumi.String(invokeFilebase64.Result),
/// 				Password: pulumi.String("terraform"),
/// 			},
/// 			CertificatePolicy: &keyvault.CertificateCertificatePolicyArgs{
/// 				IssuerParameters: &keyvault.CertificateCertificatePolicyIssuerParametersArgs{
/// 					Name: pulumi.String("Self"),
/// 				},
/// 				KeyProperties: &keyvault.CertificateCertificatePolicyKeyPropertiesArgs{
/// 					Exportable: pulumi.Bool(true),
/// 					KeySize:    pulumi.Int(2048),
/// 					KeyType:    pulumi.String("RSA"),
/// 					ReuseKey:   pulumi.Bool(false),
/// 				},
/// 				SecretProperties: &keyvault.CertificateCertificatePolicySecretPropertiesArgs{
/// 					ContentType: pulumi.String("application/x-pkcs12"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewCertificate(ctx, "example", &apimanagement.CertificateArgs{
/// 			Name:              pulumi.String("example-cert"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			KeyVaultSecretId:  exampleCertificate.SecretId,
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.inputs.ServiceIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificateArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyIssuerParametersArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyKeyPropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicySecretPropertiesArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
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
///             .publisherEmail("company@terraform.io")
///             .skuName("Developer_1")
///             .identity(ServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .build());
///
///         var exampleAccessPolicy = new AccessPolicy("exampleAccessPolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleService.identity().applyValue(_identity -> _identity.tenantId()))
///             .objectId(exampleService.identity().applyValue(_identity -> _identity.principalId()))
///             .secretPermissions("Get")
///             .certificatePermissions("Get")
///             .build());
///
///         var exampleCertificate = new com.pulumi.azure.keyvault.Certificate("exampleCertificate", com.pulumi.azure.keyvault.CertificateArgs.builder()
///             .name("example-cert")
///             .keyVaultId(exampleKeyVault.id())
///             .certificate(CertificateCertificateArgs.builder()
///                 .contents(StdFunctions.filebase64(Filebase64Args.builder()
///                     .input("example_cert.pfx")
///                     .build()).result())
///                 .password("terraform")
///                 .build())
///             .certificatePolicy(CertificateCertificatePolicyArgs.builder()
///                 .issuerParameters(CertificateCertificatePolicyIssuerParametersArgs.builder()
///                     .name("Self")
///                     .build())
///                 .keyProperties(CertificateCertificatePolicyKeyPropertiesArgs.builder()
///                     .exportable(true)
///                     .keySize(2048)
///                     .keyType("RSA")
///                     .reuseKey(false)
///                     .build())
///                 .secretProperties(CertificateCertificatePolicySecretPropertiesArgs.builder()
///                     .contentType("application/x-pkcs12")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleCertificate2 = new com.pulumi.azure.apimanagement.Certificate("exampleCertificate2", com.pulumi.azure.apimanagement.CertificateArgs.builder()
///             .name("example-cert")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .keyVaultSecretId(exampleCertificate.secretId())
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
///       publisherEmail: company@terraform.io
///       skuName: Developer_1
///       identity:
///         type: SystemAssigned
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///   exampleAccessPolicy:
///     type: azure:keyvault:AccessPolicy
///     name: example
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleService.identity.tenantId}
///       objectId: ${exampleService.identity.principalId}
///       secretPermissions:
///         - Get
///       certificatePermissions:
///         - Get
///   exampleCertificate:
///     type: azure:keyvault:Certificate
///     name: example
///     properties:
///       name: example-cert
///       keyVaultId: ${exampleKeyVault.id}
///       certificate:
///         contents:
///           fn::invoke:
///             function: std:filebase64
///             arguments:
///               input: example_cert.pfx
///             return: result
///         password: terraform
///       certificatePolicy:
///         issuerParameters:
///           name: Self
///         keyProperties:
///           exportable: true
///           keySize: 2048
///           keyType: RSA
///           reuseKey: false
///         secretProperties:
///           contentType: application/x-pkcs12
///   exampleCertificate2:
///     type: azure:apimanagement:Certificate
///     name: example
///     properties:
///       name: example-cert
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       keyVaultSecretId: ${exampleCertificate.secretId}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/certificate:Certificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/certificates/certificate1
/// ```
class Certificate extends pulumi.CustomResource {
  /// The Name of the API Management Service where this Service should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The base-64 encoded certificate data, which must be a PFX file.
  late final pulumi.Output<String?> data;
  /// The Expiration Date of this Certificate, formatted as an RFC3339 string.
  late final pulumi.Output<String> expiration;
  /// The Client ID of the User Assigned Managed Identity to use for retrieving certificate.
  ///
  /// > **Note:** If not specified, will use System Assigned identity of the API Management Service.
  late final pulumi.Output<String?> keyVaultIdentityClientId;
  /// The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`.
  ///
  /// > **Note:** Setting this field requires the `identity` block to be specified in API Management Service, since this identity is used to retrieve the Key Vault Certificate. Possible values are versioned or versionless secret ID. Auto-updating the Certificate from the Key Vault requires that Secret version isn't specified.
  late final pulumi.Output<String?> keyVaultSecretId;
  /// The name of the API Management Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The password used for this certificate.
  late final pulumi.Output<String?> password;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Either `data` or `key_vault_secret_id` must be specified - but not both.
  late final pulumi.Output<String> resourceGroupName;
  /// The Subject of this Certificate.
  late final pulumi.Output<String> subject;
  /// The Thumbprint of this Certificate.
  late final pulumi.Output<String> thumbprint;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_apimanagement_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.data = registerOutput<String?>('data');
    this.expiration = registerOutput<String>('expiration');
    this.keyVaultIdentityClientId = registerOutput<String?>('keyVaultIdentityClientId');
    this.keyVaultSecretId = registerOutput<String?>('keyVaultSecretId');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subject = registerOutput<String>('subject');
    this.thumbprint = registerOutput<String>('thumbprint');
  }
}
