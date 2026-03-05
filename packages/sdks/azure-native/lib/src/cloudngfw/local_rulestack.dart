import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_managed_identity_properties_response.dart';
import 'local_rulestack_args.dart';
import 'security_services_response.dart';
import 'system_data_response.dart';

/// PaloAltoNetworks LocalRulestack
///
/// Uses Azure REST API version 2025-05-23. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LocalRulestacks_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var localRulestack = new AzureNative.Cloudngfw.LocalRulestack("localRulestack", new()
///     {
///         AssociatedSubscriptions = new[]
///         {
///             "2bf4a339-294d-4c25-b0b2-ef649e9f5c27",
///         },
///         DefaultMode = AzureNative.Cloudngfw.DefaultMode.IPS,
///         Description = "local rulestacks",
///         Identity = new AzureNative.Cloudngfw.Inputs.AzureResourceManagerManagedIdentityPropertiesArgs
///         {
///             Type = AzureNative.Cloudngfw.ManagedIdentityType.None,
///             UserAssignedIdentities =
///             {
///                 { "key16", new AzureNative.Cloudngfw.Inputs.AzureResourceManagerUserAssignedIdentityArgs
///                 {
///                     ClientId = "aaaa",
///                     PrincipalId = "aaaaaaaaaaaaaaa",
///                 } },
///             },
///         },
///         LocalRulestackName = "lrs1",
///         Location = "eastus",
///         MinAppIdVersion = "8.5.3",
///         PanEtag = "2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///         PanLocation = "eastus",
///         ResourceGroupName = "rgopenapi",
///         Scope = AzureNative.Cloudngfw.ScopeType.LOCAL,
///         SecurityServices = new AzureNative.Cloudngfw.Inputs.SecurityServicesArgs
///         {
///             AntiSpywareProfile = "default",
///             AntiVirusProfile = "default",
///             DnsSubscription = "default",
///             FileBlockingProfile = "default",
///             OutboundTrustCertificate = "default",
///             OutboundUnTrustCertificate = "default",
///             UrlFilteringProfile = "default",
///             VulnerabilityProfile = "default",
///         },
///         Tags =
///         {
///             { "tagName", "value" },
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
/// 	cloudngfw "github.com/pulumi/pulumi-azure-native-sdk/cloudngfw/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudngfw.NewLocalRulestack(ctx, "localRulestack", &cloudngfw.LocalRulestackArgs{
/// 			AssociatedSubscriptions: pulumi.StringArray{
/// 				pulumi.String("2bf4a339-294d-4c25-b0b2-ef649e9f5c27"),
/// 			},
/// 			DefaultMode: pulumi.String(cloudngfw.DefaultModeIPS),
/// 			Description: pulumi.String("local rulestacks"),
/// 			Identity: &cloudngfw.AzureResourceManagerManagedIdentityPropertiesArgs{
/// 				Type: pulumi.String(cloudngfw.ManagedIdentityTypeNone),
/// 				UserAssignedIdentities: cloudngfw.AzureResourceManagerUserAssignedIdentityMap{
/// 					"key16": &cloudngfw.AzureResourceManagerUserAssignedIdentityArgs{
/// 						ClientId:    pulumi.String("aaaa"),
/// 						PrincipalId: pulumi.String("aaaaaaaaaaaaaaa"),
/// 					},
/// 				},
/// 			},
/// 			LocalRulestackName: pulumi.String("lrs1"),
/// 			Location:           pulumi.String("eastus"),
/// 			MinAppIdVersion:    pulumi.String("8.5.3"),
/// 			PanEtag:            pulumi.String("2bf4a339-294d-4c25-b0b2-ef649e9f5c12"),
/// 			PanLocation:        pulumi.String("eastus"),
/// 			ResourceGroupName:  pulumi.String("rgopenapi"),
/// 			Scope:              pulumi.String(cloudngfw.ScopeTypeLOCAL),
/// 			SecurityServices: &cloudngfw.SecurityServicesArgs{
/// 				AntiSpywareProfile:         pulumi.String("default"),
/// 				AntiVirusProfile:           pulumi.String("default"),
/// 				DnsSubscription:            pulumi.String("default"),
/// 				FileBlockingProfile:        pulumi.String("default"),
/// 				OutboundTrustCertificate:   pulumi.String("default"),
/// 				OutboundUnTrustCertificate: pulumi.String("default"),
/// 				UrlFilteringProfile:        pulumi.String("default"),
/// 				VulnerabilityProfile:       pulumi.String("default"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tagName": pulumi.String("value"),
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
/// import com.pulumi.azurenative.cloudngfw.LocalRulestack;
/// import com.pulumi.azurenative.cloudngfw.LocalRulestackArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.AzureResourceManagerManagedIdentityPropertiesArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.SecurityServicesArgs;
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
///         var localRulestack = new LocalRulestack("localRulestack", LocalRulestackArgs.builder()
///             .associatedSubscriptions("2bf4a339-294d-4c25-b0b2-ef649e9f5c27")
///             .defaultMode("IPS")
///             .description("local rulestacks")
///             .identity(AzureResourceManagerManagedIdentityPropertiesArgs.builder()
///                 .type("None")
///                 .userAssignedIdentities(Map.of("key16", AzureResourceManagerUserAssignedIdentityArgs.builder()
///                     .clientId("aaaa")
///                     .principalId("aaaaaaaaaaaaaaa")
///                     .build()))
///                 .build())
///             .localRulestackName("lrs1")
///             .location("eastus")
///             .minAppIdVersion("8.5.3")
///             .panEtag("2bf4a339-294d-4c25-b0b2-ef649e9f5c12")
///             .panLocation("eastus")
///             .resourceGroupName("rgopenapi")
///             .scope("LOCAL")
///             .securityServices(SecurityServicesArgs.builder()
///                 .antiSpywareProfile("default")
///                 .antiVirusProfile("default")
///                 .dnsSubscription("default")
///                 .fileBlockingProfile("default")
///                 .outboundTrustCertificate("default")
///                 .outboundUnTrustCertificate("default")
///                 .urlFilteringProfile("default")
///                 .vulnerabilityProfile("default")
///                 .build())
///             .tags(Map.of("tagName", "value"))
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
/// const localRulestack = new azure_native.cloudngfw.LocalRulestack("localRulestack", {
///     associatedSubscriptions: ["2bf4a339-294d-4c25-b0b2-ef649e9f5c27"],
///     defaultMode: azure_native.cloudngfw.DefaultMode.IPS,
///     description: "local rulestacks",
///     identity: {
///         type: azure_native.cloudngfw.ManagedIdentityType.None,
///         userAssignedIdentities: {
///             key16: {
///                 clientId: "aaaa",
///                 principalId: "aaaaaaaaaaaaaaa",
///             },
///         },
///     },
///     localRulestackName: "lrs1",
///     location: "eastus",
///     minAppIdVersion: "8.5.3",
///     panEtag: "2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///     panLocation: "eastus",
///     resourceGroupName: "rgopenapi",
///     scope: azure_native.cloudngfw.ScopeType.LOCAL,
///     securityServices: {
///         antiSpywareProfile: "default",
///         antiVirusProfile: "default",
///         dnsSubscription: "default",
///         fileBlockingProfile: "default",
///         outboundTrustCertificate: "default",
///         outboundUnTrustCertificate: "default",
///         urlFilteringProfile: "default",
///         vulnerabilityProfile: "default",
///     },
///     tags: {
///         tagName: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// local_rulestack = azure_native.cloudngfw.LocalRulestack("localRulestack",
///     associated_subscriptions=["2bf4a339-294d-4c25-b0b2-ef649e9f5c27"],
///     default_mode=azure_native.cloudngfw.DefaultMode.IPS,
///     description="local rulestacks",
///     identity={
///         "type": azure_native.cloudngfw.ManagedIdentityType.NONE,
///         "user_assigned_identities": {
///             "key16": {
///                 "client_id": "aaaa",
///                 "principal_id": "aaaaaaaaaaaaaaa",
///             },
///         },
///     },
///     local_rulestack_name="lrs1",
///     location="eastus",
///     min_app_id_version="8.5.3",
///     pan_etag="2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///     pan_location="eastus",
///     resource_group_name="rgopenapi",
///     scope=azure_native.cloudngfw.ScopeType.LOCAL,
///     security_services={
///         "anti_spyware_profile": "default",
///         "anti_virus_profile": "default",
///         "dns_subscription": "default",
///         "file_blocking_profile": "default",
///         "outbound_trust_certificate": "default",
///         "outbound_un_trust_certificate": "default",
///         "url_filtering_profile": "default",
///         "vulnerability_profile": "default",
///     },
///     tags={
///         "tagName": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   localRulestack:
///     type: azure-native:cloudngfw:LocalRulestack
///     properties:
///       associatedSubscriptions:
///         - 2bf4a339-294d-4c25-b0b2-ef649e9f5c27
///       defaultMode: IPS
///       description: local rulestacks
///       identity:
///         type: None
///         userAssignedIdentities:
///           key16:
///             clientId: aaaa
///             principalId: aaaaaaaaaaaaaaa
///       localRulestackName: lrs1
///       location: eastus
///       minAppIdVersion: 8.5.3
///       panEtag: 2bf4a339-294d-4c25-b0b2-ef649e9f5c12
///       panLocation: eastus
///       resourceGroupName: rgopenapi
///       scope: LOCAL
///       securityServices:
///         antiSpywareProfile: default
///         antiVirusProfile: default
///         dnsSubscription: default
///         fileBlockingProfile: default
///         outboundTrustCertificate: default
///         outboundUnTrustCertificate: default
///         urlFilteringProfile: default
///         vulnerabilityProfile: default
///       tags:
///         tagName: value
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### LocalRulestacks_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var localRulestack = new AzureNative.Cloudngfw.LocalRulestack("localRulestack", new()
///     {
///         LocalRulestackName = "lrs1",
///         Location = "eastus",
///         ResourceGroupName = "rgopenapi",
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
/// 	cloudngfw "github.com/pulumi/pulumi-azure-native-sdk/cloudngfw/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudngfw.NewLocalRulestack(ctx, "localRulestack", &cloudngfw.LocalRulestackArgs{
/// 			LocalRulestackName: pulumi.String("lrs1"),
/// 			Location:           pulumi.String("eastus"),
/// 			ResourceGroupName:  pulumi.String("rgopenapi"),
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
/// import com.pulumi.azurenative.cloudngfw.LocalRulestack;
/// import com.pulumi.azurenative.cloudngfw.LocalRulestackArgs;
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
///         var localRulestack = new LocalRulestack("localRulestack", LocalRulestackArgs.builder()
///             .localRulestackName("lrs1")
///             .location("eastus")
///             .resourceGroupName("rgopenapi")
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
/// const localRulestack = new azure_native.cloudngfw.LocalRulestack("localRulestack", {
///     localRulestackName: "lrs1",
///     location: "eastus",
///     resourceGroupName: "rgopenapi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// local_rulestack = azure_native.cloudngfw.LocalRulestack("localRulestack",
///     local_rulestack_name="lrs1",
///     location="eastus",
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   localRulestack:
///     type: azure-native:cloudngfw:LocalRulestack
///     properties:
///       localRulestackName: lrs1
///       location: eastus
///       resourceGroupName: rgopenapi
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
/// $ pulumi import azure-native:cloudngfw:LocalRulestack armid1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/{localRulestackName}
/// ```
class LocalRulestack extends pulumi.CustomResource {
  /// subscription scope of global rulestack
  late final pulumi.Output<List<String>?> associatedSubscriptions;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Mode for default rules creation
  late final pulumi.Output<String?> defaultMode;

  /// rulestack description
  late final pulumi.Output<String?> description;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<
    AzureResourceManagerManagedIdentityPropertiesResponse?
  >
  identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// minimum version
  late final pulumi.Output<String?> minAppIdVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// PanEtag info
  late final pulumi.Output<String?> panEtag;

  /// Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  late final pulumi.Output<String?> panLocation;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Rulestack Type
  late final pulumi.Output<String?> scope;

  /// Security Profile
  late final pulumi.Output<SecurityServicesResponse?> securityServices;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LocalRulestack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalRulestack]. {@macro pulumi_cloudngfw_local_rulestack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalRulestack(
    String name, {
    LocalRulestackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cloudngfw:LocalRulestack',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    associatedSubscriptions = registerOutput<List<String>?>(
      'associatedSubscriptions',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultMode = registerOutput<String?>('defaultMode');
    description = registerOutput<String?>('description');
    identity =
        registerOutput<AzureResourceManagerManagedIdentityPropertiesResponse?>(
          'identity',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AzureResourceManagerManagedIdentityPropertiesResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    minAppIdVersion = registerOutput<String?>('minAppIdVersion');
    this.name = registerOutput<String>('name');
    panEtag = registerOutput<String?>('panEtag');
    panLocation = registerOutput<String?>('panLocation');
    provisioningState = registerOutput<String>('provisioningState');
    scope = registerOutput<String?>('scope');
    securityServices = registerOutput<SecurityServicesResponse?>(
      'securityServices',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SecurityServicesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
