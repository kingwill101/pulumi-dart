import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_update_properties_response.dart';
import 'host_pool_args.dart';
import 'registration_info_response.dart';
import 'resource_model_with_allowed_property_set_response_identity.dart';
import 'resource_model_with_allowed_property_set_response_plan.dart';
import 'resource_model_with_allowed_property_set_response_sku.dart';
import 'system_data_response.dart';

/// Represents a HostPool definition.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2022-09-09.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HostPool_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hostPool = new AzureNative.DesktopVirtualization.HostPool("hostPool", new()
///     {
///         AgentUpdate = new AzureNative.DesktopVirtualization.Inputs.AgentUpdatePropertiesArgs
///         {
///             MaintenanceWindowTimeZone = "Alaskan Standard Time",
///             MaintenanceWindows = new[]
///             {
///                 new AzureNative.DesktopVirtualization.Inputs.MaintenanceWindowPropertiesArgs
///                 {
///                     DayOfWeek = AzureNative.DesktopVirtualization.DayOfWeek.Friday,
///                     Hour = 7,
///                 },
///                 new AzureNative.DesktopVirtualization.Inputs.MaintenanceWindowPropertiesArgs
///                 {
///                     DayOfWeek = AzureNative.DesktopVirtualization.DayOfWeek.Saturday,
///                     Hour = 8,
///                 },
///             },
///             Type = AzureNative.DesktopVirtualization.SessionHostComponentUpdateType.Scheduled,
///             UseSessionHostLocalTime = false,
///         },
///         Description = "des1",
///         FriendlyName = "friendly",
///         HostPoolName = "hostPool1",
///         HostPoolType = AzureNative.DesktopVirtualization.HostPoolType.Pooled,
///         LoadBalancerType = AzureNative.DesktopVirtualization.LoadBalancerType.BreadthFirst,
///         Location = "centralus",
///         MaxSessionLimit = 999999,
///         PersonalDesktopAssignmentType = AzureNative.DesktopVirtualization.PersonalDesktopAssignmentType.Automatic,
///         PreferredAppGroupType = AzureNative.DesktopVirtualization.PreferredAppGroupType.Desktop,
///         RegistrationInfo = new AzureNative.DesktopVirtualization.Inputs.RegistrationInfoArgs
///         {
///             ExpirationTime = "2020-10-01T14:01:54.9571247Z",
///             RegistrationTokenOperation = AzureNative.DesktopVirtualization.RegistrationTokenOperation.Update,
///         },
///         ResourceGroupName = "resourceGroup1",
///         SsoClientId = "client",
///         SsoClientSecretKeyVaultPath = "https://keyvault/secret",
///         SsoSecretType = AzureNative.DesktopVirtualization.SSOSecretType.SharedKey,
///         SsoadfsAuthority = "https://adfs",
///         StartVMOnConnect = false,
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
///         VmTemplate = "{json:json}",
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
/// 	desktopvirtualization "github.com/pulumi/pulumi-azure-native-sdk/desktopvirtualization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := desktopvirtualization.NewHostPool(ctx, "hostPool", &desktopvirtualization.HostPoolArgs{
/// 			AgentUpdate: &desktopvirtualization.AgentUpdatePropertiesArgs{
/// 				MaintenanceWindowTimeZone: pulumi.String("Alaskan Standard Time"),
/// 				MaintenanceWindows: desktopvirtualization.MaintenanceWindowPropertiesArray{
/// 					&desktopvirtualization.MaintenanceWindowPropertiesArgs{
/// 						DayOfWeek: desktopvirtualization.DayOfWeekFriday,
/// 						Hour:      pulumi.Int(7),
/// 					},
/// 					&desktopvirtualization.MaintenanceWindowPropertiesArgs{
/// 						DayOfWeek: desktopvirtualization.DayOfWeekSaturday,
/// 						Hour:      pulumi.Int(8),
/// 					},
/// 				},
/// 				Type:                    pulumi.String(desktopvirtualization.SessionHostComponentUpdateTypeScheduled),
/// 				UseSessionHostLocalTime: pulumi.Bool(false),
/// 			},
/// 			Description:                   pulumi.String("des1"),
/// 			FriendlyName:                  pulumi.String("friendly"),
/// 			HostPoolName:                  pulumi.String("hostPool1"),
/// 			HostPoolType:                  pulumi.String(desktopvirtualization.HostPoolTypePooled),
/// 			LoadBalancerType:              pulumi.String(desktopvirtualization.LoadBalancerTypeBreadthFirst),
/// 			Location:                      pulumi.String("centralus"),
/// 			MaxSessionLimit:               pulumi.Int(999999),
/// 			PersonalDesktopAssignmentType: pulumi.String(desktopvirtualization.PersonalDesktopAssignmentTypeAutomatic),
/// 			PreferredAppGroupType:         pulumi.String(desktopvirtualization.PreferredAppGroupTypeDesktop),
/// 			RegistrationInfo: &desktopvirtualization.RegistrationInfoArgs{
/// 				ExpirationTime:             pulumi.String("2020-10-01T14:01:54.9571247Z"),
/// 				RegistrationTokenOperation: pulumi.String(desktopvirtualization.RegistrationTokenOperationUpdate),
/// 			},
/// 			ResourceGroupName:           pulumi.String("resourceGroup1"),
/// 			SsoClientId:                 pulumi.String("client"),
/// 			SsoClientSecretKeyVaultPath: pulumi.String("https://keyvault/secret"),
/// 			SsoSecretType:               pulumi.String(desktopvirtualization.SSOSecretTypeSharedKey),
/// 			SsoadfsAuthority:            pulumi.String("https://adfs"),
/// 			StartVMOnConnect:            pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
/// 			VmTemplate: pulumi.String("{json:json}"),
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
/// import com.pulumi.azurenative.desktopvirtualization.HostPool;
/// import com.pulumi.azurenative.desktopvirtualization.HostPoolArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.AgentUpdatePropertiesArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.RegistrationInfoArgs;
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
///         var hostPool = new HostPool("hostPool", HostPoolArgs.builder()
///             .agentUpdate(AgentUpdatePropertiesArgs.builder()
///                 .maintenanceWindowTimeZone("Alaskan Standard Time")
///                 .maintenanceWindows(
///                     MaintenanceWindowPropertiesArgs.builder()
///                         .dayOfWeek("Friday")
///                         .hour(7)
///                         .build(),
///                     MaintenanceWindowPropertiesArgs.builder()
///                         .dayOfWeek("Saturday")
///                         .hour(8)
///                         .build())
///                 .type("Scheduled")
///                 .useSessionHostLocalTime(false)
///                 .build())
///             .description("des1")
///             .friendlyName("friendly")
///             .hostPoolName("hostPool1")
///             .hostPoolType("Pooled")
///             .loadBalancerType("BreadthFirst")
///             .location("centralus")
///             .maxSessionLimit(999999)
///             .personalDesktopAssignmentType("Automatic")
///             .preferredAppGroupType("Desktop")
///             .registrationInfo(RegistrationInfoArgs.builder()
///                 .expirationTime("2020-10-01T14:01:54.9571247Z")
///                 .registrationTokenOperation("Update")
///                 .build())
///             .resourceGroupName("resourceGroup1")
///             .ssoClientId("client")
///             .ssoClientSecretKeyVaultPath("https://keyvault/secret")
///             .ssoSecretType("SharedKey")
///             .ssoadfsAuthority("https://adfs")
///             .startVMOnConnect(false)
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
///             .vmTemplate("{json:json}")
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
/// const hostPool = new azure_native.desktopvirtualization.HostPool("hostPool", {
///     agentUpdate: {
///         maintenanceWindowTimeZone: "Alaskan Standard Time",
///         maintenanceWindows: [
///             {
///                 dayOfWeek: azure_native.desktopvirtualization.DayOfWeek.Friday,
///                 hour: 7,
///             },
///             {
///                 dayOfWeek: azure_native.desktopvirtualization.DayOfWeek.Saturday,
///                 hour: 8,
///             },
///         ],
///         type: azure_native.desktopvirtualization.SessionHostComponentUpdateType.Scheduled,
///         useSessionHostLocalTime: false,
///     },
///     description: "des1",
///     friendlyName: "friendly",
///     hostPoolName: "hostPool1",
///     hostPoolType: azure_native.desktopvirtualization.HostPoolType.Pooled,
///     loadBalancerType: azure_native.desktopvirtualization.LoadBalancerType.BreadthFirst,
///     location: "centralus",
///     maxSessionLimit: 999999,
///     personalDesktopAssignmentType: azure_native.desktopvirtualization.PersonalDesktopAssignmentType.Automatic,
///     preferredAppGroupType: azure_native.desktopvirtualization.PreferredAppGroupType.Desktop,
///     registrationInfo: {
///         expirationTime: "2020-10-01T14:01:54.9571247Z",
///         registrationTokenOperation: azure_native.desktopvirtualization.RegistrationTokenOperation.Update,
///     },
///     resourceGroupName: "resourceGroup1",
///     ssoClientId: "client",
///     ssoClientSecretKeyVaultPath: "https://keyvault/secret",
///     ssoSecretType: azure_native.desktopvirtualization.SSOSecretType.SharedKey,
///     ssoadfsAuthority: "https://adfs",
///     startVMOnConnect: false,
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
///     vmTemplate: "{json:json}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// host_pool = azure_native.desktopvirtualization.HostPool("hostPool",
///     agent_update={
///         "maintenance_window_time_zone": "Alaskan Standard Time",
///         "maintenance_windows": [
///             {
///                 "day_of_week": azure_native.desktopvirtualization.DayOfWeek.FRIDAY,
///                 "hour": 7,
///             },
///             {
///                 "day_of_week": azure_native.desktopvirtualization.DayOfWeek.SATURDAY,
///                 "hour": 8,
///             },
///         ],
///         "type": azure_native.desktopvirtualization.SessionHostComponentUpdateType.SCHEDULED,
///         "use_session_host_local_time": False,
///     },
///     description="des1",
///     friendly_name="friendly",
///     host_pool_name="hostPool1",
///     host_pool_type=azure_native.desktopvirtualization.HostPoolType.POOLED,
///     load_balancer_type=azure_native.desktopvirtualization.LoadBalancerType.BREADTH_FIRST,
///     location="centralus",
///     max_session_limit=999999,
///     personal_desktop_assignment_type=azure_native.desktopvirtualization.PersonalDesktopAssignmentType.AUTOMATIC,
///     preferred_app_group_type=azure_native.desktopvirtualization.PreferredAppGroupType.DESKTOP,
///     registration_info={
///         "expiration_time": "2020-10-01T14:01:54.9571247Z",
///         "registration_token_operation": azure_native.desktopvirtualization.RegistrationTokenOperation.UPDATE,
///     },
///     resource_group_name="resourceGroup1",
///     sso_client_id="client",
///     sso_client_secret_key_vault_path="https://keyvault/secret",
///     sso_secret_type=azure_native.desktopvirtualization.SSOSecretType.SHARED_KEY,
///     ssoadfs_authority="https://adfs",
///     start_vm_on_connect=False,
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     },
///     vm_template="{json:json}")
///
/// ```
///
/// ```yaml
/// resources:
///   hostPool:
///     type: azure-native:desktopvirtualization:HostPool
///     properties:
///       agentUpdate:
///         maintenanceWindowTimeZone: Alaskan Standard Time
///         maintenanceWindows:
///           - dayOfWeek: Friday
///             hour: 7
///           - dayOfWeek: Saturday
///             hour: 8
///         type: Scheduled
///         useSessionHostLocalTime: false
///       description: des1
///       friendlyName: friendly
///       hostPoolName: hostPool1
///       hostPoolType: Pooled
///       loadBalancerType: BreadthFirst
///       location: centralus
///       maxSessionLimit: 999999
///       personalDesktopAssignmentType: Automatic
///       preferredAppGroupType: Desktop
///       registrationInfo:
///         expirationTime: 2020-10-01T14:01:54.9571247Z
///         registrationTokenOperation: Update
///       resourceGroupName: resourceGroup1
///       ssoClientId: client
///       ssoClientSecretKeyVaultPath: https://keyvault/secret
///       ssoSecretType: SharedKey
///       ssoadfsAuthority: https://adfs
///       startVMOnConnect: false
///       tags:
///         tag1: value1
///         tag2: value2
///       vmTemplate: '{json:json}'
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
/// $ pulumi import azure-native:desktopvirtualization:HostPool hostPool1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/hostPools/{hostPoolName}
/// ```
class HostPool extends pulumi.CustomResource {
  /// The session host configuration for updating agent, monitoring agent, and stack component.
  late final pulumi.Output<AgentUpdatePropertiesResponse?> agentUpdate;

  /// List of App Attach Package links.
  late final pulumi.Output<List<String>> appAttachPackageReferences;

  /// List of applicationGroup links.
  late final pulumi.Output<List<String>> applicationGroupReferences;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Is cloud pc resource.
  late final pulumi.Output<bool> cloudPcResource;

  /// Custom rdp property of HostPool.
  late final pulumi.Output<String?> customRdpProperty;

  /// Description of HostPool.
  late final pulumi.Output<String?> description;

  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> etag;

  /// Friendly name of HostPool.
  late final pulumi.Output<String?> friendlyName;

  /// HostPool type for desktop.
  late final pulumi.Output<String> hostPoolType;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponseIdentity?>
  identity;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;

  /// The type of the load balancer.
  late final pulumi.Output<String> loadBalancerType;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  late final pulumi.Output<String?> managedBy;

  /// The max session limit of HostPool.
  late final pulumi.Output<int?> maxSessionLimit;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// ObjectId of HostPool. (internal use)
  late final pulumi.Output<String> objectId;

  /// PersonalDesktopAssignment type for HostPool.
  late final pulumi.Output<String?> personalDesktopAssignmentType;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponsePlan?>
  plan;

  /// The type of preferred application group type, default to Desktop Application Group
  late final pulumi.Output<String> preferredAppGroupType;

  /// List of private endpoint connection associated with the specified resource
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  late final pulumi.Output<String?> publicNetworkAccess;

  /// The registration info of HostPool.
  late final pulumi.Output<RegistrationInfoResponse?> registrationInfo;

  /// The ring number of HostPool.
  late final pulumi.Output<int?> ring;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponseSku?> sku;

  /// ClientId for the registered Relying Party used to issue WVD SSO certificates.
  late final pulumi.Output<String?> ssoClientId;

  /// Path to Azure KeyVault storing the secret used for communication to ADFS.
  late final pulumi.Output<String?> ssoClientSecretKeyVaultPath;

  /// The type of single sign on Secret Type.
  late final pulumi.Output<String?> ssoSecretType;

  /// URL to customer ADFS server for signing WVD SSO certificates.
  late final pulumi.Output<String?> ssoadfsAuthority;

  /// The flag to turn on/off StartVMOnConnect feature.
  late final pulumi.Output<bool?> startVMOnConnect;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Is validation environment.
  late final pulumi.Output<bool?> validationEnvironment;

  /// VM template for sessionhosts configuration within hostpool.
  late final pulumi.Output<String?> vmTemplate;

  /// Creates a new [HostPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostPool]. {@macro pulumi_desktopvirtualization_host_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostPool(
    String name, {
    HostPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:desktopvirtualization:HostPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentUpdate = registerOutput<AgentUpdatePropertiesResponse?>('agentUpdate');
    appAttachPackageReferences = registerOutput<List<String>>(
      'appAttachPackageReferences',
    );
    applicationGroupReferences = registerOutput<List<String>>(
      'applicationGroupReferences',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudPcResource = registerOutput<bool>('cloudPcResource');
    customRdpProperty = registerOutput<String?>('customRdpProperty');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPoolType = registerOutput<String>('hostPoolType');
    identity =
        registerOutput<ResourceModelWithAllowedPropertySetResponseIdentity?>(
          'identity',
        );
    kind = registerOutput<String?>('kind');
    loadBalancerType = registerOutput<String>('loadBalancerType');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    maxSessionLimit = registerOutput<int?>('maxSessionLimit');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    personalDesktopAssignmentType = registerOutput<String?>(
      'personalDesktopAssignmentType',
    );
    plan = registerOutput<ResourceModelWithAllowedPropertySetResponsePlan?>(
      'plan',
    );
    preferredAppGroupType = registerOutput<String>('preferredAppGroupType');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    registrationInfo = registerOutput<RegistrationInfoResponse?>(
      'registrationInfo',
    );
    ring = registerOutput<int?>('ring');
    sku = registerOutput<ResourceModelWithAllowedPropertySetResponseSku?>(
      'sku',
    );
    ssoClientId = registerOutput<String?>('ssoClientId');
    ssoClientSecretKeyVaultPath = registerOutput<String?>(
      'ssoClientSecretKeyVaultPath',
    );
    ssoSecretType = registerOutput<String?>('ssoSecretType');
    ssoadfsAuthority = registerOutput<String?>('ssoadfsAuthority');
    startVMOnConnect = registerOutput<bool?>('startVMOnConnect');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    validationEnvironment = registerOutput<bool?>('validationEnvironment');
    vmTemplate = registerOutput<String?>('vmTemplate');
  }
}
