import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_properties_response.dart';
import 'system_data_response.dart';

/// A Credential Policy
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrReplace_Policies
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new AzureNative.DeviceRegistry.Policy("policy", new()
///     {
///         Location = "zjqtuvprnxvimzkkxaobgkm",
///         NamespaceName = "mynamespace",
///         PolicyName = "mypolicy",
///         Properties = new AzureNative.DeviceRegistry.Inputs.PolicyPropertiesArgs
///         {
///             Certificate = new AzureNative.DeviceRegistry.Inputs.CertificateConfigurationArgs
///             {
///                 CertificateAuthorityConfiguration = new AzureNative.DeviceRegistry.Inputs.CertificateAuthorityConfigurationArgs
///                 {
///                     KeyType = AzureNative.DeviceRegistry.SupportedKeyType.ECC,
///                 },
///                 LeafCertificateConfiguration = new AzureNative.DeviceRegistry.Inputs.LeafCertificateConfigurationArgs
///                 {
///                     ValidityPeriodInDays = 10,
///                 },
///             },
///         },
///         ResourceGroupName = "rgdeviceregistry",
///         Tags =
///         {
///             { "key1088", "xzrpbqsac" },
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewPolicy(ctx, "policy", &deviceregistry.PolicyArgs{
/// 			Location:      pulumi.String("zjqtuvprnxvimzkkxaobgkm"),
/// 			NamespaceName: pulumi.String("mynamespace"),
/// 			PolicyName:    pulumi.String("mypolicy"),
/// 			Properties: &deviceregistry.PolicyPropertiesArgs{
/// 				Certificate: &deviceregistry.CertificateConfigurationArgs{
/// 					CertificateAuthorityConfiguration: &deviceregistry.CertificateAuthorityConfigurationArgs{
/// 						KeyType: pulumi.String(deviceregistry.SupportedKeyTypeECC),
/// 					},
/// 					LeafCertificateConfiguration: &deviceregistry.LeafCertificateConfigurationArgs{
/// 						ValidityPeriodInDays: pulumi.Int(10),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdeviceregistry"),
/// 			Tags: pulumi.StringMap{
/// 				"key1088": pulumi.String("xzrpbqsac"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_deviceregistry_policy" "policy" {
///   location       = "zjqtuvprnxvimzkkxaobgkm"
///   namespace_name = "mynamespace"
///   policy_name    = "mypolicy"
///   properties = {
///     certificate = {
///       certificate_authority_configuration = {
///         key_type = "ECC"
///       }
///       leaf_certificate_configuration = {
///         validity_period_in_days = 10
///       }
///     }
///   }
///   resource_group_name = "rgdeviceregistry"
///   tags = {
///     "key1088" = "xzrpbqsac"
///   }
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
/// import com.pulumi.azurenative.deviceregistry.Policy;
/// import com.pulumi.azurenative.deviceregistry.PolicyArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.PolicyPropertiesArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.CertificateConfigurationArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.CertificateAuthorityConfigurationArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.LeafCertificateConfigurationArgs;
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
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .location("zjqtuvprnxvimzkkxaobgkm")
///             .namespaceName("mynamespace")
///             .policyName("mypolicy")
///             .properties(PolicyPropertiesArgs.builder()
///                 .certificate(CertificateConfigurationArgs.builder()
///                     .certificateAuthorityConfiguration(CertificateAuthorityConfigurationArgs.builder()
///                         .keyType("ECC")
///                         .build())
///                     .leafCertificateConfiguration(LeafCertificateConfigurationArgs.builder()
///                         .validityPeriodInDays(10)
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rgdeviceregistry")
///             .tags(Map.of("key1088", "xzrpbqsac"))
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
/// const policy = new azure_native.deviceregistry.Policy("policy", {
///     location: "zjqtuvprnxvimzkkxaobgkm",
///     namespaceName: "mynamespace",
///     policyName: "mypolicy",
///     properties: {
///         certificate: {
///             certificateAuthorityConfiguration: {
///                 keyType: azure_native.deviceregistry.SupportedKeyType.ECC,
///             },
///             leafCertificateConfiguration: {
///                 validityPeriodInDays: 10,
///             },
///         },
///     },
///     resourceGroupName: "rgdeviceregistry",
///     tags: {
///         key1088: "xzrpbqsac",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy = azure_native.deviceregistry.Policy("policy",
///     location="zjqtuvprnxvimzkkxaobgkm",
///     namespace_name="mynamespace",
///     policy_name="mypolicy",
///     properties={
///         "certificate": {
///             "certificate_authority_configuration": {
///                 "key_type": azure_native.deviceregistry.SupportedKeyType.ECC,
///             },
///             "leaf_certificate_configuration": {
///                 "validity_period_in_days": 10,
///             },
///         },
///     },
///     resource_group_name="rgdeviceregistry",
///     tags={
///         "key1088": "xzrpbqsac",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   policy:
///     type: azure-native:deviceregistry:Policy
///     properties:
///       location: zjqtuvprnxvimzkkxaobgkm
///       namespaceName: mynamespace
///       policyName: mypolicy
///       properties:
///         certificate:
///           certificateAuthorityConfiguration:
///             keyType: ECC
///           leafCertificateConfiguration:
///             validityPeriodInDays: 10
///       resourceGroupName: rgdeviceregistry
///       tags:
///         key1088: xzrpbqsac
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
/// $ pulumi import azure-native:deviceregistry:Policy mypolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/namespaces/{namespaceName}/credentials/default/policies/{policyName}
/// ```
class Policy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The RP-specific properties for this resource.
  late final pulumi.Output<PolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_deviceregistry_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
