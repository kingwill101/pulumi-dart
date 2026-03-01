import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics_response.dart';
import 'domain_security_settings_response.dart';
import 'domain_service_args.dart';
import 'ldaps_settings_response.dart';
import 'migration_properties_response.dart';
import 'notification_settings_response.dart';
import 'replica_set_response.dart';
import 'resource_forest_settings_response.dart';
import 'system_data_response.dart';

/// Domain service.
///
/// Uses Azure REST API version 2022-12-01. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2025-05-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native aad [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Domain Service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var domainService = new AzureNative.Aad.DomainService("domainService", new()
///     {
///         DomainName = "TestDomainService.com",
///         DomainSecuritySettings = new AzureNative.Aad.Inputs.DomainSecuritySettingsArgs
///         {
///             NtlmV1 = AzureNative.Aad.NtlmV1.Enabled,
///             SyncNtlmPasswords = AzureNative.Aad.SyncNtlmPasswords.Enabled,
///             TlsV1 = AzureNative.Aad.TlsV1.Disabled,
///         },
///         DomainServiceName = "TestDomainService.com",
///         FilteredSync = AzureNative.Aad.FilteredSync.Enabled,
///         LdapsSettings = new AzureNative.Aad.Inputs.LdapsSettingsArgs
///         {
///             ExternalAccess = AzureNative.Aad.ExternalAccess.Enabled,
///             Ldaps = AzureNative.Aad.Ldaps.Enabled,
///             PfxCertificate = "MIIDPDCCAiSgAwIBAgIQQUI9P6tq2p9OFIJa7DLNvTANBgkqhkiG9w0BAQsFADAgMR4w...",
///             PfxCertificatePassword = "<pfxCertificatePassword>",
///         },
///         NotificationSettings = new AzureNative.Aad.Inputs.NotificationSettingsArgs
///         {
///             AdditionalRecipients = new[]
///             {
///                 "jicha@microsoft.com",
///                 "caalmont@microsoft.com",
///             },
///             NotifyDcAdmins = AzureNative.Aad.NotifyDcAdmins.Enabled,
///             NotifyGlobalAdmins = AzureNative.Aad.NotifyGlobalAdmins.Enabled,
///         },
///         ReplicaSets = new[]
///         {
///             new AzureNative.Aad.Inputs.ReplicaSetArgs
///             {
///                 Location = "West US",
///                 SubnetId = "/subscriptions/1639790a-76a2-4ac4-98d9-8562f5dfcb4d/resourceGroups/TestNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/TestVnetWUS/subnets/TestSubnetWUS",
///             },
///         },
///         ResourceGroupName = "TestResourceGroup",
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
/// 	aad "github.com/pulumi/pulumi-azure-native-sdk/aad/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aad.NewDomainService(ctx, "domainService", &aad.DomainServiceArgs{
/// 			DomainName: pulumi.String("TestDomainService.com"),
/// 			DomainSecuritySettings: &aad.DomainSecuritySettingsArgs{
/// 				NtlmV1:            pulumi.String(aad.NtlmV1Enabled),
/// 				SyncNtlmPasswords: pulumi.String(aad.SyncNtlmPasswordsEnabled),
/// 				TlsV1:             pulumi.String(aad.TlsV1Disabled),
/// 			},
/// 			DomainServiceName: pulumi.String("TestDomainService.com"),
/// 			FilteredSync:      pulumi.String(aad.FilteredSyncEnabled),
/// 			LdapsSettings: &aad.LdapsSettingsArgs{
/// 				ExternalAccess:         pulumi.String(aad.ExternalAccessEnabled),
/// 				Ldaps:                  pulumi.String(aad.LdapsEnabled),
/// 				PfxCertificate:         pulumi.String("MIIDPDCCAiSgAwIBAgIQQUI9P6tq2p9OFIJa7DLNvTANBgkqhkiG9w0BAQsFADAgMR4w..."),
/// 				PfxCertificatePassword: pulumi.String("<pfxCertificatePassword>"),
/// 			},
/// 			NotificationSettings: &aad.NotificationSettingsArgs{
/// 				AdditionalRecipients: pulumi.StringArray{
/// 					pulumi.String("jicha@microsoft.com"),
/// 					pulumi.String("caalmont@microsoft.com"),
/// 				},
/// 				NotifyDcAdmins:     pulumi.String(aad.NotifyDcAdminsEnabled),
/// 				NotifyGlobalAdmins: pulumi.String(aad.NotifyGlobalAdminsEnabled),
/// 			},
/// 			ReplicaSets: aad.ReplicaSetArray{
/// 				&aad.ReplicaSetArgs{
/// 					Location: pulumi.String("West US"),
/// 					SubnetId: pulumi.String("/subscriptions/1639790a-76a2-4ac4-98d9-8562f5dfcb4d/resourceGroups/TestNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/TestVnetWUS/subnets/TestSubnetWUS"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestResourceGroup"),
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
/// import com.pulumi.azurenative.aad.DomainService;
/// import com.pulumi.azurenative.aad.DomainServiceArgs;
/// import com.pulumi.azurenative.aad.inputs.DomainSecuritySettingsArgs;
/// import com.pulumi.azurenative.aad.inputs.LdapsSettingsArgs;
/// import com.pulumi.azurenative.aad.inputs.NotificationSettingsArgs;
/// import com.pulumi.azurenative.aad.inputs.ReplicaSetArgs;
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
///         var domainService = new DomainService("domainService", DomainServiceArgs.builder()
///             .domainName("TestDomainService.com")
///             .domainSecuritySettings(DomainSecuritySettingsArgs.builder()
///                 .ntlmV1("Enabled")
///                 .syncNtlmPasswords("Enabled")
///                 .tlsV1("Disabled")
///                 .build())
///             .domainServiceName("TestDomainService.com")
///             .filteredSync("Enabled")
///             .ldapsSettings(LdapsSettingsArgs.builder()
///                 .externalAccess("Enabled")
///                 .ldaps("Enabled")
///                 .pfxCertificate("MIIDPDCCAiSgAwIBAgIQQUI9P6tq2p9OFIJa7DLNvTANBgkqhkiG9w0BAQsFADAgMR4w...")
///                 .pfxCertificatePassword("<pfxCertificatePassword>")
///                 .build())
///             .notificationSettings(NotificationSettingsArgs.builder()
///                 .additionalRecipients(
///                     "jicha@microsoft.com",
///                     "caalmont@microsoft.com")
///                 .notifyDcAdmins("Enabled")
///                 .notifyGlobalAdmins("Enabled")
///                 .build())
///             .replicaSets(ReplicaSetArgs.builder()
///                 .location("West US")
///                 .subnetId("/subscriptions/1639790a-76a2-4ac4-98d9-8562f5dfcb4d/resourceGroups/TestNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/TestVnetWUS/subnets/TestSubnetWUS")
///                 .build())
///             .resourceGroupName("TestResourceGroup")
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
/// const domainService = new azure_native.aad.DomainService("domainService", {
///     domainName: "TestDomainService.com",
///     domainSecuritySettings: {
///         ntlmV1: azure_native.aad.NtlmV1.Enabled,
///         syncNtlmPasswords: azure_native.aad.SyncNtlmPasswords.Enabled,
///         tlsV1: azure_native.aad.TlsV1.Disabled,
///     },
///     domainServiceName: "TestDomainService.com",
///     filteredSync: azure_native.aad.FilteredSync.Enabled,
///     ldapsSettings: {
///         externalAccess: azure_native.aad.ExternalAccess.Enabled,
///         ldaps: azure_native.aad.Ldaps.Enabled,
///         pfxCertificate: "MIIDPDCCAiSgAwIBAgIQQUI9P6tq2p9OFIJa7DLNvTANBgkqhkiG9w0BAQsFADAgMR4w...",
///         pfxCertificatePassword: "<pfxCertificatePassword>",
///     },
///     notificationSettings: {
///         additionalRecipients: [
///             "jicha@microsoft.com",
///             "caalmont@microsoft.com",
///         ],
///         notifyDcAdmins: azure_native.aad.NotifyDcAdmins.Enabled,
///         notifyGlobalAdmins: azure_native.aad.NotifyGlobalAdmins.Enabled,
///     },
///     replicaSets: [{
///         location: "West US",
///         subnetId: "/subscriptions/1639790a-76a2-4ac4-98d9-8562f5dfcb4d/resourceGroups/TestNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/TestVnetWUS/subnets/TestSubnetWUS",
///     }],
///     resourceGroupName: "TestResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// domain_service = azure_native.aad.DomainService("domainService",
///     domain_name="TestDomainService.com",
///     domain_security_settings={
///         "ntlm_v1": azure_native.aad.NtlmV1.ENABLED,
///         "sync_ntlm_passwords": azure_native.aad.SyncNtlmPasswords.ENABLED,
///         "tls_v1": azure_native.aad.TlsV1.DISABLED,
///     },
///     domain_service_name="TestDomainService.com",
///     filtered_sync=azure_native.aad.FilteredSync.ENABLED,
///     ldaps_settings={
///         "external_access": azure_native.aad.ExternalAccess.ENABLED,
///         "ldaps": azure_native.aad.Ldaps.ENABLED,
///         "pfx_certificate": "MIIDPDCCAiSgAwIBAgIQQUI9P6tq2p9OFIJa7DLNvTANBgkqhkiG9w0BAQsFADAgMR4w...",
///         "pfx_certificate_password": "<pfxCertificatePassword>",
///     },
///     notification_settings={
///         "additional_recipients": [
///             "jicha@microsoft.com",
///             "caalmont@microsoft.com",
///         ],
///         "notify_dc_admins": azure_native.aad.NotifyDcAdmins.ENABLED,
///         "notify_global_admins": azure_native.aad.NotifyGlobalAdmins.ENABLED,
///     },
///     replica_sets=[{
///         "location": "West US",
///         "subnet_id": "/subscriptions/1639790a-76a2-4ac4-98d9-8562f5dfcb4d/resourceGroups/TestNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/TestVnetWUS/subnets/TestSubnetWUS",
///     }],
///     resource_group_name="TestResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   domainService:
///     type: azure-native:aad:DomainService
///     properties:
///       domainName: TestDomainService.com
///       domainSecuritySettings:
///         ntlmV1: Enabled
///         syncNtlmPasswords: Enabled
///         tlsV1: Disabled
///       domainServiceName: TestDomainService.com
///       filteredSync: Enabled
///       ldapsSettings:
///         externalAccess: Enabled
///         ldaps: Enabled
///         pfxCertificate: MIIDPDCCAiSgAwIBAgIQQUI9P6tq2p9OFIJa7DLNvTANBgkqhkiG9w0BAQsFADAgMR4w...
///         pfxCertificatePassword: <pfxCertificatePassword>
///       notificationSettings:
///         additionalRecipients:
///           - jicha@microsoft.com
///           - caalmont@microsoft.com
///         notifyDcAdmins: Enabled
///         notifyGlobalAdmins: Enabled
///       replicaSets:
///         - location: West US
///           subnetId: /subscriptions/1639790a-76a2-4ac4-98d9-8562f5dfcb4d/resourceGroups/TestNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/TestVnetWUS/subnets/TestSubnetWUS
///       resourceGroupName: TestResourceGroup
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
/// $ pulumi import azure-native:aad:DomainService TestDomainService.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AAD/domainServices/{domainServiceName}
/// ```
class DomainService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configuration diagnostics data containing latest execution from client.
  late final pulumi.Output<ConfigDiagnosticsResponse?> configDiagnostics;
  /// Deployment Id
  late final pulumi.Output<String> deploymentId;
  /// Domain Configuration Type
  late final pulumi.Output<String?> domainConfigurationType;
  /// The name of the Azure domain that the user would like to deploy Domain Services to.
  late final pulumi.Output<String?> domainName;
  /// DomainSecurity Settings
  late final pulumi.Output<DomainSecuritySettingsResponse?> domainSecuritySettings;
  /// Resource etag
  late final pulumi.Output<String?> etag;
  /// Enabled or Disabled flag to turn on Group-based filtered sync
  late final pulumi.Output<String?> filteredSync;
  /// Secure LDAP Settings
  late final pulumi.Output<LdapsSettingsResponse?> ldapsSettings;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Migration Properties
  late final pulumi.Output<MigrationPropertiesResponse> migrationProperties;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Notification Settings
  late final pulumi.Output<NotificationSettingsResponse?> notificationSettings;
  /// the current deployment or provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// List of ReplicaSets
  late final pulumi.Output<List<ReplicaSetResponse>?> replicaSets;
  /// Resource Forest Settings
  late final pulumi.Output<ResourceForestSettingsResponse?> resourceForestSettings;
  /// Sku Type
  late final pulumi.Output<String?> sku;
  /// The unique sync application id of the Azure AD Domain Services deployment.
  late final pulumi.Output<String> syncApplicationId;
  /// SyncOwner ReplicaSet Id
  late final pulumi.Output<String> syncOwner;
  /// All or CloudOnly, All users in AAD are synced to AAD DS domain or only users actively syncing in the cloud
  late final pulumi.Output<String?> syncScope;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure Active Directory Tenant Id
  late final pulumi.Output<String> tenantId;
  /// Resource type
  late final pulumi.Output<String> type;
  /// Data Model Version
  late final pulumi.Output<int> version;

  /// Creates a new [DomainService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainService]. {@macro pulumi_aad_domain_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainService(
    String name, {
    DomainServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:aad:DomainService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.configDiagnostics = registerOutput<ConfigDiagnosticsResponse?>('configDiagnostics');
    this.deploymentId = registerOutput<String>('deploymentId');
    this.domainConfigurationType = registerOutput<String?>('domainConfigurationType');
    this.domainName = registerOutput<String?>('domainName');
    this.domainSecuritySettings = registerOutput<DomainSecuritySettingsResponse?>('domainSecuritySettings');
    this.etag = registerOutput<String?>('etag');
    this.filteredSync = registerOutput<String?>('filteredSync');
    this.ldapsSettings = registerOutput<LdapsSettingsResponse?>('ldapsSettings');
    this.location = registerOutput<String?>('location');
    this.migrationProperties = registerOutput<MigrationPropertiesResponse>('migrationProperties');
    this.name = registerOutput<String>('name');
    this.notificationSettings = registerOutput<NotificationSettingsResponse?>('notificationSettings');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.replicaSets = registerOutput<List<ReplicaSetResponse>?>('replicaSets');
    this.resourceForestSettings = registerOutput<ResourceForestSettingsResponse?>('resourceForestSettings');
    this.sku = registerOutput<String?>('sku');
    this.syncApplicationId = registerOutput<String>('syncApplicationId');
    this.syncOwner = registerOutput<String>('syncOwner');
    this.syncScope = registerOutput<String?>('syncScope');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<int>('version');
  }
}
