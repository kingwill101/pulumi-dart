import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_properties_response.dart';
import 'dps_certificate_args.dart';
import 'system_data_response.dart';

/// The X509 Certificate.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2017-08-21-preview, 2017-11-15, 2018-01-22, 2020-01-01, 2020-03-01, 2020-09-01-preview, 2021-10-15, 2022-02-05, 2022-12-12, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceprovisioningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DPSCreateOrUpdateCertificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dpsCertificate = new AzureNative.DeviceProvisioningServices.DpsCertificate("dpsCertificate", new()
///     {
///         CertificateName = "cert",
///         Properties = new AzureNative.DeviceProvisioningServices.Inputs.CertificatePropertiesArgs
///         {
///             Certificate = "MA==",
///         },
///         ProvisioningServiceName = "myFirstProvisioningService",
///         ResourceGroupName = "myResourceGroup",
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
/// 	deviceprovisioningservices "github.com/pulumi/pulumi-azure-native-sdk/deviceprovisioningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceprovisioningservices.NewDpsCertificate(ctx, "dpsCertificate", &deviceprovisioningservices.DpsCertificateArgs{
/// 			CertificateName: pulumi.String("cert"),
/// 			Properties: &deviceprovisioningservices.CertificatePropertiesArgs{
/// 				Certificate: pulumi.String("MA=="),
/// 			},
/// 			ProvisioningServiceName: pulumi.String("myFirstProvisioningService"),
/// 			ResourceGroupName:       pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.deviceprovisioningservices.DpsCertificate;
/// import com.pulumi.azurenative.deviceprovisioningservices.DpsCertificateArgs;
/// import com.pulumi.azurenative.deviceprovisioningservices.inputs.CertificatePropertiesArgs;
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
///         var dpsCertificate = new DpsCertificate("dpsCertificate", DpsCertificateArgs.builder()
///             .certificateName("cert")
///             .properties(CertificatePropertiesArgs.builder()
///                 .certificate("MA==")
///                 .build())
///             .provisioningServiceName("myFirstProvisioningService")
///             .resourceGroupName("myResourceGroup")
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
/// const dpsCertificate = new azure_native.deviceprovisioningservices.DpsCertificate("dpsCertificate", {
///     certificateName: "cert",
///     properties: {
///         certificate: "MA==",
///     },
///     provisioningServiceName: "myFirstProvisioningService",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dps_certificate = azure_native.deviceprovisioningservices.DpsCertificate("dpsCertificate",
///     certificate_name="cert",
///     properties={
///         "certificate": "MA==",
///     },
///     provisioning_service_name="myFirstProvisioningService",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dpsCertificate:
///     type: azure-native:deviceprovisioningservices:DpsCertificate
///     properties:
///       certificateName: cert
///       properties:
///         certificate: MA==
///       provisioningServiceName: myFirstProvisioningService
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:deviceprovisioningservices:DpsCertificate cert /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/provisioningServices/{provisioningServiceName}/certificates/{certificateName}
/// ```
class DpsCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The entity tag.
  late final pulumi.Output<String> etag;
  /// The name of the certificate.
  late final pulumi.Output<String> name;
  /// properties of a certificate
  late final pulumi.Output<CertificatePropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DpsCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DpsCertificate]. {@macro pulumi_deviceprovisioningservices_dps_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DpsCertificate(
    String name, {
    DpsCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceprovisioningservices:DpsCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<CertificatePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
