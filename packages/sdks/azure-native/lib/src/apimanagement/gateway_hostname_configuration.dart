import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_hostname_configuration_args.dart';

/// Gateway hostname configuration details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateGatewayHostnameConfiguration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gatewayHostnameConfiguration = new AzureNative.ApiManagement.GatewayHostnameConfiguration("gatewayHostnameConfiguration", new()
///     {
///         CertificateId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/certificates/cert1",
///         GatewayId = "gw1",
///         HcId = "default",
///         Hostname = "*",
///         Http2Enabled = true,
///         NegotiateClientCertificate = false,
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Tls10Enabled = false,
///         Tls11Enabled = false,
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
/// 		_, err := apimanagement.NewGatewayHostnameConfiguration(ctx, "gatewayHostnameConfiguration", &apimanagement.GatewayHostnameConfigurationArgs{
/// 			CertificateId:              pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/certificates/cert1"),
/// 			GatewayId:                  pulumi.String("gw1"),
/// 			HcId:                       pulumi.String("default"),
/// 			Hostname:                   pulumi.String("*"),
/// 			Http2Enabled:               pulumi.Bool(true),
/// 			NegotiateClientCertificate: pulumi.Bool(false),
/// 			ResourceGroupName:          pulumi.String("rg1"),
/// 			ServiceName:                pulumi.String("apimService1"),
/// 			Tls10Enabled:               pulumi.Bool(false),
/// 			Tls11Enabled:               pulumi.Bool(false),
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
/// import com.pulumi.azurenative.apimanagement.GatewayHostnameConfiguration;
/// import com.pulumi.azurenative.apimanagement.GatewayHostnameConfigurationArgs;
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
///         var gatewayHostnameConfiguration = new GatewayHostnameConfiguration("gatewayHostnameConfiguration", GatewayHostnameConfigurationArgs.builder()
///             .certificateId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/certificates/cert1")
///             .gatewayId("gw1")
///             .hcId("default")
///             .hostname("*")
///             .http2Enabled(true)
///             .negotiateClientCertificate(false)
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .tls10Enabled(false)
///             .tls11Enabled(false)
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
/// const gatewayHostnameConfiguration = new azure_native.apimanagement.GatewayHostnameConfiguration("gatewayHostnameConfiguration", {
///     certificateId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/certificates/cert1",
///     gatewayId: "gw1",
///     hcId: "default",
///     hostname: "*",
///     http2Enabled: true,
///     negotiateClientCertificate: false,
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     tls10Enabled: false,
///     tls11Enabled: false,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gateway_hostname_configuration = azure_native.apimanagement.GatewayHostnameConfiguration("gatewayHostnameConfiguration",
///     certificate_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/certificates/cert1",
///     gateway_id="gw1",
///     hc_id="default",
///     hostname="*",
///     http2_enabled=True,
///     negotiate_client_certificate=False,
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tls10_enabled=False,
///     tls11_enabled=False)
///
/// ```
///
/// ```yaml
/// resources:
///   gatewayHostnameConfiguration:
///     type: azure-native:apimanagement:GatewayHostnameConfiguration
///     properties:
///       certificateId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/certificates/cert1
///       gatewayId: gw1
///       hcId: default
///       hostname: '*'
///       http2Enabled: true
///       negotiateClientCertificate: false
///       resourceGroupName: rg1
///       serviceName: apimService1
///       tls10Enabled: false
///       tls11Enabled: false
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
/// $ pulumi import azure-native:apimanagement:GatewayHostnameConfiguration default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/gateways/{gatewayId}/hostnameConfigurations/{hcId}
/// ```
class GatewayHostnameConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Identifier of Certificate entity that will be used for TLS connection establishment
  late final pulumi.Output<String?> certificateId;

  /// Hostname value. Supports valid domain name, partial or full wildcard
  late final pulumi.Output<String?> hostname;

  /// Specifies if HTTP/2.0 is supported
  late final pulumi.Output<bool?> http2Enabled;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Determines whether gateway requests client certificate
  late final pulumi.Output<bool?> negotiateClientCertificate;

  /// Specifies if TLS 1.0 is supported
  late final pulumi.Output<bool?> tls10Enabled;

  /// Specifies if TLS 1.1 is supported
  late final pulumi.Output<bool?> tls11Enabled;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GatewayHostnameConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayHostnameConfiguration]. {@macro pulumi_apimanagement_gateway_hostname_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayHostnameConfiguration(
    String name, {
    GatewayHostnameConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:GatewayHostnameConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificateId = registerOutput<String?>('certificateId');
    hostname = registerOutput<String?>('hostname');
    http2Enabled = registerOutput<bool?>('http2Enabled');
    this.name = registerOutput<String>('name');
    negotiateClientCertificate = registerOutput<bool?>(
      'negotiateClientCertificate',
    );
    tls10Enabled = registerOutput<bool?>('tls10Enabled');
    tls11Enabled = registerOutput<bool?>('tls11Enabled');
    type = registerOutput<String>('type');
  }
}
