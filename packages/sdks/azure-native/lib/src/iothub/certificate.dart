import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_properties_response.dart';

/// The X509 Certificate.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2017-07-01, 2018-01-22, 2018-04-01, 2018-12-01-preview, 2019-03-22, 2019-03-22-preview, 2019-07-01-preview, 2019-11-04, 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Certificates_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate = new AzureNative.IoTHub.Certificate("certificate", new()
///     {
///         CertificateName = "cert",
///         Properties = new AzureNative.IoTHub.Inputs.CertificatePropertiesArgs
///         {
///             Certificate = "############################################",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "iothub",
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
/// 	iothub "github.com/pulumi/pulumi-azure-native-sdk/iothub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iothub.NewCertificate(ctx, "certificate", &iothub.CertificateArgs{
/// 			CertificateName: pulumi.String("cert"),
/// 			Properties: &iothub.CertificatePropertiesArgs{
/// 				Certificate: pulumi.String("############################################"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("iothub"),
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
/// import com.pulumi.azurenative.iothub.Certificate;
/// import com.pulumi.azurenative.iothub.CertificateArgs;
/// import com.pulumi.azurenative.iothub.inputs.CertificatePropertiesArgs;
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
///             .certificateName("cert")
///             .properties(CertificatePropertiesArgs.builder()
///                 .certificate("############################################")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("iothub")
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
/// const certificate = new azure_native.iothub.Certificate("certificate", {
///     certificateName: "cert",
///     properties: {
///         certificate: "############################################",
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "iothub",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate = azure_native.iothub.Certificate("certificate",
///     certificate_name="cert",
///     properties={
///         "certificate": "############################################",
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="iothub")
///
/// ```
///
/// ```yaml
/// resources:
///   certificate:
///     type: azure-native:iothub:Certificate
///     properties:
///       certificateName: cert
///       properties:
///         certificate: '############################################'
///       resourceGroupName: myResourceGroup
///       resourceName: iothub
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
/// $ pulumi import azure-native:iothub:Certificate cert /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}/certificates/{certificateName}
/// ```
class Certificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The entity tag.
  late final pulumi.Output<String> etag;
  /// The name of the certificate.
  late final pulumi.Output<String> name;
  /// The description of an X509 CA Certificate.
  late final pulumi.Output<CertificatePropertiesResponse> properties;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_iothub_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iothub:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<CertificatePropertiesResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
