import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_configuration_response.dart';
import 'policy_args.dart';
import 'system_data_response.dart';

/// A Credential Policy
///
/// Uses Azure REST API version 2025-11-01-preview.
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
///         Certificate = new AzureNative.DeviceRegistry.Inputs.CertificateConfigurationArgs
///         {
///             CertificateAuthorityConfiguration = new AzureNative.DeviceRegistry.Inputs.CertificateAuthorityConfigurationArgs
///             {
///                 KeyType = AzureNative.DeviceRegistry.SupportedKeyType.ECC,
///             },
///             LeafCertificateConfiguration = new AzureNative.DeviceRegistry.Inputs.LeafCertificateConfigurationArgs
///             {
///                 ValidityPeriodInDays = 10,
///             },
///         },
///         Location = "zjqtuvprnxvimzkkxaobgkm",
///         NamespaceName = "mynamespace",
///         PolicyName = "mypolicy",
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
/// 			Certificate: &deviceregistry.CertificateConfigurationArgs{
/// 				CertificateAuthorityConfiguration: &deviceregistry.CertificateAuthorityConfigurationArgs{
/// 					KeyType: pulumi.String(deviceregistry.SupportedKeyTypeECC),
/// 				},
/// 				LeafCertificateConfiguration: &deviceregistry.LeafCertificateConfigurationArgs{
/// 					ValidityPeriodInDays: pulumi.Int(10),
/// 				},
/// 			},
/// 			Location:          pulumi.String("zjqtuvprnxvimzkkxaobgkm"),
/// 			NamespaceName:     pulumi.String("mynamespace"),
/// 			PolicyName:        pulumi.String("mypolicy"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.deviceregistry.Policy;
/// import com.pulumi.azurenative.deviceregistry.PolicyArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.CertificateConfigurationArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.CertificateAuthorityConfigurationArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.LeafCertificateConfigurationArgs;
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
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .certificate(CertificateConfigurationArgs.builder()
///                 .certificateAuthorityConfiguration(CertificateAuthorityConfigurationArgs.builder()
///                     .keyType("ECC")
///                     .build())
///                 .leafCertificateConfiguration(LeafCertificateConfigurationArgs.builder()
///                     .validityPeriodInDays(10)
///                     .build())
///                 .build())
///             .location("zjqtuvprnxvimzkkxaobgkm")
///             .namespaceName("mynamespace")
///             .policyName("mypolicy")
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
///     certificate: {
///         certificateAuthorityConfiguration: {
///             keyType: azure_native.deviceregistry.SupportedKeyType.ECC,
///         },
///         leafCertificateConfiguration: {
///             validityPeriodInDays: 10,
///         },
///     },
///     location: "zjqtuvprnxvimzkkxaobgkm",
///     namespaceName: "mynamespace",
///     policyName: "mypolicy",
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
///     certificate={
///         "certificate_authority_configuration": {
///             "key_type": azure_native.deviceregistry.SupportedKeyType.ECC,
///         },
///         "leaf_certificate_configuration": {
///             "validity_period_in_days": 10,
///         },
///     },
///     location="zjqtuvprnxvimzkkxaobgkm",
///     namespace_name="mynamespace",
///     policy_name="mypolicy",
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
///       certificate:
///         certificateAuthorityConfiguration:
///           keyType: ECC
///         leafCertificateConfiguration:
///           validityPeriodInDays: 10
///       location: zjqtuvprnxvimzkkxaobgkm
///       namespaceName: mynamespace
///       policyName: mypolicy
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
  /// The certificate configuration.
  late final pulumi.Output<CertificateConfigurationResponse?> certificate;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
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
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.certificate = registerOutput<CertificateConfigurationResponse?>('certificate');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
