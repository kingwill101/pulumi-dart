import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_certificate_authority_args.dart';

/// Gateway certificate authority details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateGatewayCertificateAuthority
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gatewayCertificateAuthority = new AzureNative.ApiManagement.GatewayCertificateAuthority("gatewayCertificateAuthority", new()
///     {
///         CertificateId = "cert1",
///         GatewayId = "gw1",
///         IsTrusted = false,
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 		_, err := apimanagement.NewGatewayCertificateAuthority(ctx, "gatewayCertificateAuthority", &apimanagement.GatewayCertificateAuthorityArgs{
/// 			CertificateId:     pulumi.String("cert1"),
/// 			GatewayId:         pulumi.String("gw1"),
/// 			IsTrusted:         pulumi.Bool(false),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// resource "azure-native_apimanagement_gatewaycertificateauthority" "gatewayCertificateAuthority" {
///   certificate_id      = "cert1"
///   gateway_id          = "gw1"
///   is_trusted          = false
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.GatewayCertificateAuthority;
/// import com.pulumi.azurenative.apimanagement.GatewayCertificateAuthorityArgs;
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
///         var gatewayCertificateAuthority = new GatewayCertificateAuthority("gatewayCertificateAuthority", GatewayCertificateAuthorityArgs.builder()
///             .certificateId("cert1")
///             .gatewayId("gw1")
///             .isTrusted(false)
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const gatewayCertificateAuthority = new azure_native.apimanagement.GatewayCertificateAuthority("gatewayCertificateAuthority", {
///     certificateId: "cert1",
///     gatewayId: "gw1",
///     isTrusted: false,
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gateway_certificate_authority = azure_native.apimanagement.GatewayCertificateAuthority("gatewayCertificateAuthority",
///     certificate_id="cert1",
///     gateway_id="gw1",
///     is_trusted=False,
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   gatewayCertificateAuthority:
///     type: azure-native:apimanagement:GatewayCertificateAuthority
///     properties:
///       certificateId: cert1
///       gatewayId: gw1
///       isTrusted: false
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:GatewayCertificateAuthority cert1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/gateways/{gatewayId}/certificateAuthorities/{certificateId}
/// ```
class GatewayCertificateAuthority extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Determines whether certificate authority is trusted.
  late final pulumi.Output<bool?> isTrusted;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GatewayCertificateAuthority].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayCertificateAuthority]. {@macro pulumi_apimanagement_gateway_certificate_authority_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayCertificateAuthority(
    String name, {
    GatewayCertificateAuthorityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:GatewayCertificateAuthority',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    isTrusted = registerOutput<bool?>('isTrusted');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [GatewayCertificateAuthority] resource.
  GatewayCertificateAuthority.reference(String urn)
    : super(
        'azure-native:apimanagement:GatewayCertificateAuthority',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    isTrusted = registerOutput<bool?>('isTrusted');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
