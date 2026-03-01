import 'package:pulumi/pulumi.dart' as pulumi;
import 'cdn_managed_https_parameters_response.dart';
import 'custom_domain_args.dart';
import 'system_data_response.dart';

/// Friendly domain name mapping to the endpoint hostname that the customer provides for branding purposes, e.g. www.contoso.com.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CustomDomains_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customDomain = new AzureNative.Cdn.CustomDomain("customDomain", new()
///     {
///         CustomDomainName = "www-someDomain-net",
///         EndpointName = "endpoint1",
///         HostName = "www.someDomain.net",
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewCustomDomain(ctx, "customDomain", &cdn.CustomDomainArgs{
/// 			CustomDomainName:  pulumi.String("www-someDomain-net"),
/// 			EndpointName:      pulumi.String("endpoint1"),
/// 			HostName:          pulumi.String("www.someDomain.net"),
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
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
/// import com.pulumi.azurenative.cdn.CustomDomain;
/// import com.pulumi.azurenative.cdn.CustomDomainArgs;
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
///         var customDomain = new CustomDomain("customDomain", CustomDomainArgs.builder()
///             .customDomainName("www-someDomain-net")
///             .endpointName("endpoint1")
///             .hostName("www.someDomain.net")
///             .profileName("profile1")
///             .resourceGroupName("RG")
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
/// const customDomain = new azure_native.cdn.CustomDomain("customDomain", {
///     customDomainName: "www-someDomain-net",
///     endpointName: "endpoint1",
///     hostName: "www.someDomain.net",
///     profileName: "profile1",
///     resourceGroupName: "RG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_domain = azure_native.cdn.CustomDomain("customDomain",
///     custom_domain_name="www-someDomain-net",
///     endpoint_name="endpoint1",
///     host_name="www.someDomain.net",
///     profile_name="profile1",
///     resource_group_name="RG")
///
/// ```
///
/// ```yaml
/// resources:
///   customDomain:
///     type: azure-native:cdn:CustomDomain
///     properties:
///       customDomainName: www-someDomain-net
///       endpointName: endpoint1
///       hostName: www.someDomain.net
///       profileName: profile1
///       resourceGroupName: RG
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
/// $ pulumi import azure-native:cdn:CustomDomain www-someDomain-net /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/customDomains/{customDomainName}
/// ```
class CustomDomain extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Certificate parameters for securing custom HTTPS
  late final pulumi.Output<CdnManagedHttpsParametersResponse?> customHttpsParameters;
  /// Provisioning status of the custom domain.
  late final pulumi.Output<String> customHttpsProvisioningState;
  /// Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step.
  late final pulumi.Output<String> customHttpsProvisioningSubstate;
  /// The host name of the custom domain. Must be a domain name.
  late final pulumi.Output<String> hostName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning status of Custom Https of the custom domain.
  late final pulumi.Output<String> provisioningState;
  /// Resource status of the custom domain.
  late final pulumi.Output<String> resourceState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Special validation or data may be required when delivering CDN to some regions due to local compliance reasons. E.g. ICP license number of a custom domain is required to deliver content in China.
  late final pulumi.Output<String?> validationData;

  /// Creates a new [CustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomain]. {@macro pulumi_cdn_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomain(
    String name, {
    CustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:CustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.customHttpsParameters = registerOutput<CdnManagedHttpsParametersResponse?>('customHttpsParameters');
    this.customHttpsProvisioningState = registerOutput<String>('customHttpsProvisioningState');
    this.customHttpsProvisioningSubstate = registerOutput<String>('customHttpsProvisioningSubstate');
    this.hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceState = registerOutput<String>('resourceState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.validationData = registerOutput<String?>('validationData');
  }
}
