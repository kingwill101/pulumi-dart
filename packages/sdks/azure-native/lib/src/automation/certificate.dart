import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';

/// Definition of the certificate.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate = new AzureNative.Automation.Certificate("certificate", new()
///     {
///         AutomationAccountName = "myAutomationAccount18",
///         Base64Value = "base 64 value of cert",
///         CertificateName = "testCert",
///         Description = "Sample Cert",
///         IsExportable = false,
///         Name = "testCert",
///         ResourceGroupName = "rg",
///         Thumbprint = "thumbprint of cert",
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
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewCertificate(ctx, "certificate", &automation.CertificateArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount18"),
/// 			Base64Value:           pulumi.String("base 64 value of cert"),
/// 			CertificateName:       pulumi.String("testCert"),
/// 			Description:           pulumi.String("Sample Cert"),
/// 			IsExportable:          pulumi.Bool(false),
/// 			Name:                  pulumi.String("testCert"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			Thumbprint:            pulumi.String("thumbprint of cert"),
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
/// import com.pulumi.azurenative.automation.Certificate;
/// import com.pulumi.azurenative.automation.CertificateArgs;
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
///         var certificate = new Certificate("certificate", CertificateArgs.builder()
///             .automationAccountName("myAutomationAccount18")
///             .base64Value("base 64 value of cert")
///             .certificateName("testCert")
///             .description("Sample Cert")
///             .isExportable(false)
///             .name("testCert")
///             .resourceGroupName("rg")
///             .thumbprint("thumbprint of cert")
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
/// const certificate = new azure_native.automation.Certificate("certificate", {
///     automationAccountName: "myAutomationAccount18",
///     base64Value: "base 64 value of cert",
///     certificateName: "testCert",
///     description: "Sample Cert",
///     isExportable: false,
///     name: "testCert",
///     resourceGroupName: "rg",
///     thumbprint: "thumbprint of cert",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate = azure_native.automation.Certificate("certificate",
///     automation_account_name="myAutomationAccount18",
///     base64_value="base 64 value of cert",
///     certificate_name="testCert",
///     description="Sample Cert",
///     is_exportable=False,
///     name="testCert",
///     resource_group_name="rg",
///     thumbprint="thumbprint of cert")
///
/// ```
///
/// ```yaml
/// resources:
///   certificate:
///     type: azure-native:automation:Certificate
///     properties:
///       automationAccountName: myAutomationAccount18
///       base64Value: base 64 value of cert
///       certificateName: testCert
///       description: Sample Cert
///       isExportable: false
///       name: testCert
///       resourceGroupName: rg
///       thumbprint: thumbprint of cert
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
/// $ pulumi import azure-native:automation:Certificate testCert /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/certificates/{certificateName}
/// ```
class Certificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the creation time.
  late final pulumi.Output<String> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets the expiry time of the certificate.
  late final pulumi.Output<String> expiryTime;
  /// Gets the is exportable flag of the certificate.
  late final pulumi.Output<bool> isExportable;
  /// Gets the last modified time.
  late final pulumi.Output<String> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the thumbprint of the certificate.
  late final pulumi.Output<String> thumbprint;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_automation_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.creationTime = registerOutput<String>('creationTime');
    this.description = registerOutput<String?>('description');
    this.expiryTime = registerOutput<String>('expiryTime');
    this.isExportable = registerOutput<bool>('isExportable');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.thumbprint = registerOutput<String>('thumbprint');
    this.type = registerOutput<String>('type');
  }
}
