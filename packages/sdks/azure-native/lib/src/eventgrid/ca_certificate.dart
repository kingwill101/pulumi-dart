import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_certificate_args.dart';
import 'system_data_response.dart';

/// The CA Certificate resource.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CaCertificates_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var caCertificate = new AzureNative.EventGrid.CaCertificate("caCertificate", new()
///     {
///         CaCertificateName = "exampleCACertificateName1",
///         Description = "This is a test certificate",
///         EncodedCertificate = "base64EncodePemFormattedCertificateString",
///         NamespaceName = "exampleNamespaceName1",
///         ResourceGroupName = "examplerg",
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
/// 	eventgrid "github.com/pulumi/pulumi-azure-native-sdk/eventgrid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.NewCaCertificate(ctx, "caCertificate", &eventgrid.CaCertificateArgs{
/// 			CaCertificateName:  pulumi.String("exampleCACertificateName1"),
/// 			Description:        pulumi.String("This is a test certificate"),
/// 			EncodedCertificate: pulumi.String("base64EncodePemFormattedCertificateString"),
/// 			NamespaceName:      pulumi.String("exampleNamespaceName1"),
/// 			ResourceGroupName:  pulumi.String("examplerg"),
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
/// resource "azure-native_eventgrid_cacertificate" "caCertificate" {
///   ca_certificate_name = "exampleCACertificateName1"
///   description         = "This is a test certificate"
///   encoded_certificate = "base64EncodePemFormattedCertificateString"
///   namespace_name      = "exampleNamespaceName1"
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.eventgrid.CaCertificate;
/// import com.pulumi.azurenative.eventgrid.CaCertificateArgs;
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
///         var caCertificate = new CaCertificate("caCertificate", CaCertificateArgs.builder()
///             .caCertificateName("exampleCACertificateName1")
///             .description("This is a test certificate")
///             .encodedCertificate("base64EncodePemFormattedCertificateString")
///             .namespaceName("exampleNamespaceName1")
///             .resourceGroupName("examplerg")
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
/// const caCertificate = new azure_native.eventgrid.CaCertificate("caCertificate", {
///     caCertificateName: "exampleCACertificateName1",
///     description: "This is a test certificate",
///     encodedCertificate: "base64EncodePemFormattedCertificateString",
///     namespaceName: "exampleNamespaceName1",
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ca_certificate = azure_native.eventgrid.CaCertificate("caCertificate",
///     ca_certificate_name="exampleCACertificateName1",
///     description="This is a test certificate",
///     encoded_certificate="base64EncodePemFormattedCertificateString",
///     namespace_name="exampleNamespaceName1",
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   caCertificate:
///     type: azure-native:eventgrid:CaCertificate
///     properties:
///       caCertificateName: exampleCACertificateName1
///       description: This is a test certificate
///       encodedCertificate: base64EncodePemFormattedCertificateString
///       namespaceName: exampleNamespaceName1
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:eventgrid:CaCertificate exampleCACertificateName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/namespaces/{namespaceName}/caCertificates/{caCertificateName}
/// ```
class CaCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description for the CA Certificate resource.
  late final pulumi.Output<String?> description;
  /// Base64 encoded PEM (Privacy Enhanced Mail) format certificate data.
  late final pulumi.Output<String?> encodedCertificate;
  /// Certificate expiry time in UTC. This is a read-only field.
  late final pulumi.Output<String> expiryTimeInUtc;
  /// Certificate issue time in UTC. This is a read-only field.
  late final pulumi.Output<String> issueTimeInUtc;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the CA Certificate resource.
  late final pulumi.Output<String> provisioningState;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CaCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaCertificate]. {@macro pulumi_eventgrid_ca_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaCertificate(
    String name, {
    CaCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:CaCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    encodedCertificate = registerOutput<String?>('encodedCertificate');
    expiryTimeInUtc = registerOutput<String>('expiryTimeInUtc');
    issueTimeInUtc = registerOutput<String>('issueTimeInUtc');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
