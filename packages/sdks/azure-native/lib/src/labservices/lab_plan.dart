import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_shutdown_profile_response.dart';
import 'connection_profile_response.dart';
import 'identity_response.dart';
import 'lab_plan_args.dart';
import 'lab_plan_network_profile_response.dart';
import 'resource_operation_error_response.dart';
import 'support_info_response.dart';
import 'system_data_response.dart';

/// Lab Plans act as a permission container for creating labs via labs.azure.com. Additionally, they can provide a set of default configurations that will apply at the time of creating a lab, but these defaults can still be overwritten.
///
/// Uses Azure REST API version 2023-06-07. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-10-01-preview, 2021-11-15-preview, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native labservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### putLabPlan
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var labPlan = new AzureNative.LabServices.LabPlan("labPlan", new()
///     {
///         DefaultAutoShutdownProfile = new AzureNative.LabServices.Inputs.AutoShutdownProfileArgs
///         {
///             DisconnectDelay = "PT5M",
///             IdleDelay = "PT5M",
///             NoConnectDelay = "PT5M",
///             ShutdownOnDisconnect = AzureNative.LabServices.EnableState.Enabled,
///             ShutdownOnIdle = AzureNative.LabServices.ShutdownOnIdleMode.UserAbsence,
///             ShutdownWhenNotConnected = AzureNative.LabServices.EnableState.Enabled,
///         },
///         DefaultConnectionProfile = new AzureNative.LabServices.Inputs.ConnectionProfileArgs
///         {
///             ClientRdpAccess = AzureNative.LabServices.ConnectionType.Public,
///             ClientSshAccess = AzureNative.LabServices.ConnectionType.Public,
///             WebRdpAccess = AzureNative.LabServices.ConnectionType.None,
///             WebSshAccess = AzureNative.LabServices.ConnectionType.None,
///         },
///         DefaultNetworkProfile = new AzureNative.LabServices.Inputs.LabPlanNetworkProfileArgs
///         {
///             SubnetId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///         },
///         LabPlanName = "testlabplan",
///         Location = "westus",
///         ResourceGroupName = "testrg123",
///         SharedGalleryId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Compute/galleries/testsig",
///         SupportInfo = new AzureNative.LabServices.Inputs.SupportInfoArgs
///         {
///             Email = "help@contoso.com",
///             Instructions = "Contact support for help.",
///             Phone = "+1-202-555-0123",
///             Url = "help.contoso.com",
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
/// 	labservices "github.com/pulumi/pulumi-azure-native-sdk/labservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := labservices.NewLabPlan(ctx, "labPlan", &labservices.LabPlanArgs{
/// 			DefaultAutoShutdownProfile: &labservices.AutoShutdownProfileArgs{
/// 				DisconnectDelay:          pulumi.String("PT5M"),
/// 				IdleDelay:                pulumi.String("PT5M"),
/// 				NoConnectDelay:           pulumi.String("PT5M"),
/// 				ShutdownOnDisconnect:     labservices.EnableStateEnabled,
/// 				ShutdownOnIdle:           labservices.ShutdownOnIdleModeUserAbsence,
/// 				ShutdownWhenNotConnected: labservices.EnableStateEnabled,
/// 			},
/// 			DefaultConnectionProfile: &labservices.ConnectionProfileArgs{
/// 				ClientRdpAccess: labservices.ConnectionTypePublic,
/// 				ClientSshAccess: labservices.ConnectionTypePublic,
/// 				WebRdpAccess:    labservices.ConnectionTypeNone,
/// 				WebSshAccess:    labservices.ConnectionTypeNone,
/// 			},
/// 			DefaultNetworkProfile: &labservices.LabPlanNetworkProfileArgs{
/// 				SubnetId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default"),
/// 			},
/// 			LabPlanName:       pulumi.String("testlabplan"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			SharedGalleryId:   pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Compute/galleries/testsig"),
/// 			SupportInfo: &labservices.SupportInfoArgs{
/// 				Email:        pulumi.String("help@contoso.com"),
/// 				Instructions: pulumi.String("Contact support for help."),
/// 				Phone:        pulumi.String("+1-202-555-0123"),
/// 				Url:          pulumi.String("help.contoso.com"),
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
/// import com.pulumi.azurenative.labservices.LabPlan;
/// import com.pulumi.azurenative.labservices.LabPlanArgs;
/// import com.pulumi.azurenative.labservices.inputs.AutoShutdownProfileArgs;
/// import com.pulumi.azurenative.labservices.inputs.ConnectionProfileArgs;
/// import com.pulumi.azurenative.labservices.inputs.LabPlanNetworkProfileArgs;
/// import com.pulumi.azurenative.labservices.inputs.SupportInfoArgs;
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
///         var labPlan = new LabPlan("labPlan", LabPlanArgs.builder()
///             .defaultAutoShutdownProfile(AutoShutdownProfileArgs.builder()
///                 .disconnectDelay("PT5M")
///                 .idleDelay("PT5M")
///                 .noConnectDelay("PT5M")
///                 .shutdownOnDisconnect("Enabled")
///                 .shutdownOnIdle("UserAbsence")
///                 .shutdownWhenNotConnected("Enabled")
///                 .build())
///             .defaultConnectionProfile(ConnectionProfileArgs.builder()
///                 .clientRdpAccess("Public")
///                 .clientSshAccess("Public")
///                 .webRdpAccess("None")
///                 .webSshAccess("None")
///                 .build())
///             .defaultNetworkProfile(LabPlanNetworkProfileArgs.builder()
///                 .subnetId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default")
///                 .build())
///             .labPlanName("testlabplan")
///             .location("westus")
///             .resourceGroupName("testrg123")
///             .sharedGalleryId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Compute/galleries/testsig")
///             .supportInfo(SupportInfoArgs.builder()
///                 .email("help@contoso.com")
///                 .instructions("Contact support for help.")
///                 .phone("+1-202-555-0123")
///                 .url("help.contoso.com")
///                 .build())
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
/// const labPlan = new azure_native.labservices.LabPlan("labPlan", {
///     defaultAutoShutdownProfile: {
///         disconnectDelay: "PT5M",
///         idleDelay: "PT5M",
///         noConnectDelay: "PT5M",
///         shutdownOnDisconnect: azure_native.labservices.EnableState.Enabled,
///         shutdownOnIdle: azure_native.labservices.ShutdownOnIdleMode.UserAbsence,
///         shutdownWhenNotConnected: azure_native.labservices.EnableState.Enabled,
///     },
///     defaultConnectionProfile: {
///         clientRdpAccess: azure_native.labservices.ConnectionType.Public,
///         clientSshAccess: azure_native.labservices.ConnectionType.Public,
///         webRdpAccess: azure_native.labservices.ConnectionType.None,
///         webSshAccess: azure_native.labservices.ConnectionType.None,
///     },
///     defaultNetworkProfile: {
///         subnetId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///     },
///     labPlanName: "testlabplan",
///     location: "westus",
///     resourceGroupName: "testrg123",
///     sharedGalleryId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Compute/galleries/testsig",
///     supportInfo: {
///         email: "help@contoso.com",
///         instructions: "Contact support for help.",
///         phone: "+1-202-555-0123",
///         url: "help.contoso.com",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// lab_plan = azure_native.labservices.LabPlan("labPlan",
///     default_auto_shutdown_profile={
///         "disconnect_delay": "PT5M",
///         "idle_delay": "PT5M",
///         "no_connect_delay": "PT5M",
///         "shutdown_on_disconnect": azure_native.labservices.EnableState.ENABLED,
///         "shutdown_on_idle": azure_native.labservices.ShutdownOnIdleMode.USER_ABSENCE,
///         "shutdown_when_not_connected": azure_native.labservices.EnableState.ENABLED,
///     },
///     default_connection_profile={
///         "client_rdp_access": azure_native.labservices.ConnectionType.PUBLIC,
///         "client_ssh_access": azure_native.labservices.ConnectionType.PUBLIC,
///         "web_rdp_access": azure_native.labservices.ConnectionType.NONE,
///         "web_ssh_access": azure_native.labservices.ConnectionType.NONE,
///     },
///     default_network_profile={
///         "subnet_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///     },
///     lab_plan_name="testlabplan",
///     location="westus",
///     resource_group_name="testrg123",
///     shared_gallery_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Compute/galleries/testsig",
///     support_info={
///         "email": "help@contoso.com",
///         "instructions": "Contact support for help.",
///         "phone": "+1-202-555-0123",
///         "url": "help.contoso.com",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   labPlan:
///     type: azure-native:labservices:LabPlan
///     properties:
///       defaultAutoShutdownProfile:
///         disconnectDelay: PT5M
///         idleDelay: PT5M
///         noConnectDelay: PT5M
///         shutdownOnDisconnect: Enabled
///         shutdownOnIdle: UserAbsence
///         shutdownWhenNotConnected: Enabled
///       defaultConnectionProfile:
///         clientRdpAccess: Public
///         clientSshAccess: Public
///         webRdpAccess: None
///         webSshAccess: None
///       defaultNetworkProfile:
///         subnetId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default
///       labPlanName: testlabplan
///       location: westus
///       resourceGroupName: testrg123
///       sharedGalleryId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Compute/galleries/testsig
///       supportInfo:
///         email: help@contoso.com
///         instructions: Contact support for help.
///         phone: +1-202-555-0123
///         url: help.contoso.com
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
/// $ pulumi import azure-native:labservices:LabPlan testlabplan /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labPlans/{labPlanName}
/// ```
class LabPlan extends pulumi.CustomResource {
  /// The allowed regions for the lab creator to use when creating labs using this lab plan.
  late final pulumi.Output<List<String>?> allowedRegions;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The default lab shutdown profile. This can be changed on a lab resource and only provides a default profile.
  late final pulumi.Output<AutoShutdownProfileResponse?>
  defaultAutoShutdownProfile;

  /// The default lab connection profile. This can be changed on a lab resource and only provides a default profile.
  late final pulumi.Output<ConnectionProfileResponse?> defaultConnectionProfile;

  /// The lab plan network profile. To enforce lab network policies they must be defined here and cannot be changed when there are existing labs associated with this lab plan.
  late final pulumi.Output<LabPlanNetworkProfileResponse?>
  defaultNetworkProfile;

  /// Managed Identity Information
  late final pulumi.Output<IdentityResponse?> identity;

  /// Base Url of the lms instance this lab plan can link lab rosters against.
  late final pulumi.Output<String?> linkedLmsInstance;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Current provisioning state of the lab plan.
  late final pulumi.Output<String> provisioningState;

  /// Error details of last operation done on lab plan.
  late final pulumi.Output<ResourceOperationErrorResponse>
  resourceOperationError;

  /// Resource ID of the Shared Image Gallery attached to this lab plan. When saving a lab template virtual machine image it will be persisted in this gallery. Shared images from the gallery can be made available to use when creating new labs.
  late final pulumi.Output<String?> sharedGalleryId;

  /// Support contact information and instructions for users of the lab plan. This information is displayed to lab owners and virtual machine users for all labs in the lab plan.
  late final pulumi.Output<SupportInfoResponse?> supportInfo;

  /// Metadata pertaining to creation and last modification of the lab plan.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LabPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LabPlan]. {@macro pulumi_labservices_lab_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LabPlan(
    String name, {
    LabPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:labservices:LabPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedRegions = registerOutput<List<String>?>('allowedRegions');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultAutoShutdownProfile = registerOutput<AutoShutdownProfileResponse?>(
      'defaultAutoShutdownProfile',
    );
    defaultConnectionProfile = registerOutput<ConnectionProfileResponse?>(
      'defaultConnectionProfile',
    );
    defaultNetworkProfile = registerOutput<LabPlanNetworkProfileResponse?>(
      'defaultNetworkProfile',
    );
    identity = registerOutput<IdentityResponse?>('identity');
    linkedLmsInstance = registerOutput<String?>('linkedLmsInstance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceOperationError = registerOutput<ResourceOperationErrorResponse>(
      'resourceOperationError',
    );
    sharedGalleryId = registerOutput<String?>('sharedGalleryId');
    supportInfo = registerOutput<SupportInfoResponse?>('supportInfo');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
