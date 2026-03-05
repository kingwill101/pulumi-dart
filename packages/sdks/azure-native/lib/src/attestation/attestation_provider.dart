import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_provider_args.dart';
import 'system_data_response.dart';

/// Attestation service response message.
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AttestationProviders_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var attestationProvider = new AzureNative.Attestation.AttestationProvider("attestationProvider", new()
///     {
///         Location = "East US",
///         Properties = new AzureNative.Attestation.Inputs.AttestationServiceCreationSpecificParamsArgs
///         {
///             PublicNetworkAccess = AzureNative.Attestation.PublicNetworkAccessType.Enabled,
///             TpmAttestationAuthentication = AzureNative.Attestation.TpmAttestationAuthenticationType.Enabled,
///         },
///         ProviderName = "myattestationprovider",
///         ResourceGroupName = "MyResourceGroup",
///         Tags =
///         {
///             { "Property1", "Value1" },
///             { "Property2", "Value2" },
///             { "Property3", "Value3" },
///         },
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
/// 	attestation "github.com/pulumi/pulumi-azure-native-sdk/attestation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := attestation.NewAttestationProvider(ctx, "attestationProvider", &attestation.AttestationProviderArgs{
/// 			Location: pulumi.String("East US"),
/// 			Properties: &attestation.AttestationServiceCreationSpecificParamsArgs{
/// 				PublicNetworkAccess:          pulumi.String(attestation.PublicNetworkAccessTypeEnabled),
/// 				TpmAttestationAuthentication: pulumi.String(attestation.TpmAttestationAuthenticationTypeEnabled),
/// 			},
/// 			ProviderName:      pulumi.String("myattestationprovider"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"Property1": pulumi.String("Value1"),
/// 				"Property2": pulumi.String("Value2"),
/// 				"Property3": pulumi.String("Value3"),
/// 			},
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
/// import com.pulumi.azurenative.attestation.AttestationProvider;
/// import com.pulumi.azurenative.attestation.AttestationProviderArgs;
/// import com.pulumi.azurenative.attestation.inputs.AttestationServiceCreationSpecificParamsArgs;
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
///         var attestationProvider = new AttestationProvider("attestationProvider", AttestationProviderArgs.builder()
///             .location("East US")
///             .properties(AttestationServiceCreationSpecificParamsArgs.builder()
///                 .publicNetworkAccess("Enabled")
///                 .tpmAttestationAuthentication("Enabled")
///                 .build())
///             .providerName("myattestationprovider")
///             .resourceGroupName("MyResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("Property1", "Value1"),
///                 Map.entry("Property2", "Value2"),
///                 Map.entry("Property3", "Value3")
///             ))
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
/// const attestationProvider = new azure_native.attestation.AttestationProvider("attestationProvider", {
///     location: "East US",
///     properties: {
///         publicNetworkAccess: azure_native.attestation.PublicNetworkAccessType.Enabled,
///         tpmAttestationAuthentication: azure_native.attestation.TpmAttestationAuthenticationType.Enabled,
///     },
///     providerName: "myattestationprovider",
///     resourceGroupName: "MyResourceGroup",
///     tags: {
///         Property1: "Value1",
///         Property2: "Value2",
///         Property3: "Value3",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// attestation_provider = azure_native.attestation.AttestationProvider("attestationProvider",
///     location="East US",
///     properties={
///         "public_network_access": azure_native.attestation.PublicNetworkAccessType.ENABLED,
///         "tpm_attestation_authentication": azure_native.attestation.TpmAttestationAuthenticationType.ENABLED,
///     },
///     provider_name="myattestationprovider",
///     resource_group_name="MyResourceGroup",
///     tags={
///         "Property1": "Value1",
///         "Property2": "Value2",
///         "Property3": "Value3",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   attestationProvider:
///     type: azure-native:attestation:AttestationProvider
///     properties:
///       location: East US
///       properties:
///         publicNetworkAccess: Enabled
///         tpmAttestationAuthentication: Enabled
///       providerName: myattestationprovider
///       resourceGroupName: MyResourceGroup
///       tags:
///         Property1: Value1
///         Property2: Value2
///         Property3: Value3
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
/// $ pulumi import azure-native:attestation:AttestationProvider myattestationprovider /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Attestation/attestationProviders/{providerName}
/// ```
class AttestationProvider extends pulumi.CustomResource {
  /// Gets the uri of attestation service
  late final pulumi.Output<String?> attestUri;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connections associated with the attestation provider.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Controls whether traffic from the public network is allowed to access the Attestation Provider APIs.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Status of attestation service.
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
  late final pulumi.Output<String?> tpmAttestationAuthentication;
  /// Trust model for the attestation provider.
  late final pulumi.Output<String?> trustModel;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AttestationProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttestationProvider]. {@macro pulumi_attestation_attestation_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttestationProvider(
    String name, {
    AttestationProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:attestation:AttestationProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestUri = registerOutput<String?>('attestUri');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tpmAttestationAuthentication = registerOutput<String?>('tpmAttestationAuthentication');
    trustModel = registerOutput<String?>('trustModel');
    type = registerOutput<String>('type');
  }
}
