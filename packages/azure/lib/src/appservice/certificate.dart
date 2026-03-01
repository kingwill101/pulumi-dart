import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';

/// Manages an App Service certificate.
///
/// ## Example Usage
///
/// This example provisions an App Service Certificate from a Local File.
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
/// const exampleCertificate = new azure.appservice.Certificate("example", {
///     name: "example-cert",
///     resourceGroupName: example.name,
///     location: example.location,
///     pfxBlob: std.filebase64({
///         input: "certificate.pfx",
///     }).then(invoke => invoke.result),
///     password: "password123!",
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
/// example_certificate = azure.appservice.Certificate("example",
///     name="example-cert",
///     resource_group_name=example.name,
///     location=example.location,
///     pfx_blob=std.filebase64(input="certificate.pfx").result,
///     password="password123!")
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
///     var exampleCertificate = new Azure.AppService.Certificate("example", new()
///     {
///         Name = "example-cert",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PfxBlob = Std.Filebase64.Invoke(new()
///         {
///             Input = "certificate.pfx",
///         }).Apply(invoke => invoke.Result),
///         Password = "password123!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
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
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "certificate.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewCertificate(ctx, "example", &appservice.CertificateArgs{
/// 			Name:              pulumi.String("example-cert"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			PfxBlob:           pulumi.String(invokeFilebase64.Result),
/// 			Password:          pulumi.String("password123!"),
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
/// import com.pulumi.azure.appservice.Certificate;
/// import com.pulumi.azure.appservice.CertificateArgs;
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
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("example-cert")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .pfxBlob(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("certificate.pfx")
///                 .build()).result())
///             .password("password123!")
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
///   exampleCertificate:
///     type: azure:appservice:Certificate
///     name: example
///     properties:
///       name: example-cert
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       pfxBlob:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: certificate.pfx
///           return: result
///       password: password123!
/// ```
///
///
/// ## Import
///
/// App Service Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/certificate:Certificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/certificates/certificate1
/// ```
class Certificate extends pulumi.CustomResource {
  /// The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service or with Basic and Premium App Service plans. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> appServicePlanId;
  /// The expiration date for the certificate.
  late final pulumi.Output<String> expirationDate;
  /// The friendly name of the certificate.
  late final pulumi.Output<String> friendlyName;
  /// List of host names the certificate applies to.
  late final pulumi.Output<List<String>> hostNames;
  /// The ID of the App Service Environment where the certificate is in use.
  late final pulumi.Output<String> hostingEnvironmentProfileId;
  /// The issue date for the certificate.
  late final pulumi.Output<String> issueDate;
  /// The name of the certificate issuer.
  late final pulumi.Output<String> issuer;
  late final pulumi.Output<String?> keyVaultId;
  /// The ID of the Key Vault secret. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** Exactly one of `key_vault_secret_id` or `pfx_blob` must be specified.
  late final pulumi.Output<String?> keyVaultSecretId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The password to access the certificate's private key. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> password;
  /// The base64-encoded contents of the certificate. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** Exactly one of `key_vault_secret_id` or `pfx_blob` must be specified.
  late final pulumi.Output<String?> pfxBlob;
  /// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** The resource group must be the same as that which the app service plan is defined in - otherwise the certificate will not show as available for the app services.
  late final pulumi.Output<String> resourceGroupName;
  /// The subject name of the certificate.
  late final pulumi.Output<String> subjectName;
  late final pulumi.Output<Map<String, String>?> tags;
  /// The thumbprint for the certificate.
  late final pulumi.Output<String> thumbprint;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_appservice_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appServicePlanId = registerOutput<String?>('appServicePlanId');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.friendlyName = registerOutput<String>('friendlyName');
    this.hostNames = registerOutput<List<String>>('hostNames');
    this.hostingEnvironmentProfileId = registerOutput<String>('hostingEnvironmentProfileId');
    this.issueDate = registerOutput<String>('issueDate');
    this.issuer = registerOutput<String>('issuer');
    this.keyVaultId = registerOutput<String?>('keyVaultId');
    this.keyVaultSecretId = registerOutput<String?>('keyVaultSecretId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.pfxBlob = registerOutput<String?>('pfxBlob');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subjectName = registerOutput<String>('subjectName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.thumbprint = registerOutput<String>('thumbprint');
  }
}
