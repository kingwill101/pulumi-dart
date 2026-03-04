import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_shutdown_profile_response.dart';
import 'connection_profile_response.dart';
import 'lab_args.dart';
import 'lab_network_profile_response.dart';
import 'resource_operation_error_response.dart';
import 'roster_profile_response.dart';
import 'security_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_profile_response.dart';

/// The lab resource.
///
/// Uses Azure REST API version 2023-06-07. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-10-01-preview, 2021-11-15-preview, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native labservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### putLab
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lab = new AzureNative.LabServices.Lab("lab", new()
///     {
///         AutoShutdownProfile = new AzureNative.LabServices.Inputs.AutoShutdownProfileArgs
///         {
///             DisconnectDelay = "PT5M",
///             IdleDelay = "PT5M",
///             NoConnectDelay = "PT5M",
///             ShutdownOnDisconnect = AzureNative.LabServices.EnableState.Enabled,
///             ShutdownOnIdle = AzureNative.LabServices.ShutdownOnIdleMode.UserAbsence,
///             ShutdownWhenNotConnected = AzureNative.LabServices.EnableState.Enabled,
///         },
///         ConnectionProfile = new AzureNative.LabServices.Inputs.ConnectionProfileArgs
///         {
///             ClientRdpAccess = AzureNative.LabServices.ConnectionType.Public,
///             ClientSshAccess = AzureNative.LabServices.ConnectionType.Public,
///             WebRdpAccess = AzureNative.LabServices.ConnectionType.None,
///             WebSshAccess = AzureNative.LabServices.ConnectionType.None,
///         },
///         Description = "This is a test lab.",
///         LabName = "testlab",
///         LabPlanId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.LabServices/labPlans/testlabplan",
///         Location = "westus",
///         NetworkProfile = new AzureNative.LabServices.Inputs.LabNetworkProfileArgs
///         {
///             SubnetId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///         },
///         ResourceGroupName = "testrg123",
///         SecurityProfile = new AzureNative.LabServices.Inputs.SecurityProfileArgs
///         {
///             OpenAccess = AzureNative.LabServices.EnableState.Disabled,
///         },
///         Title = "Test Lab",
///         VirtualMachineProfile = new AzureNative.LabServices.Inputs.VirtualMachineProfileArgs
///         {
///             AdditionalCapabilities = new AzureNative.LabServices.Inputs.VirtualMachineAdditionalCapabilitiesArgs
///             {
///                 InstallGpuDrivers = AzureNative.LabServices.EnableState.Disabled,
///             },
///             AdminUser = new AzureNative.LabServices.Inputs.CredentialsArgs
///             {
///                 Username = "test-user",
///             },
///             CreateOption = AzureNative.LabServices.CreateOption.TemplateVM,
///             ImageReference = new AzureNative.LabServices.Inputs.ImageReferenceArgs
///             {
///                 Offer = "WindowsServer",
///                 Publisher = "Microsoft",
///                 Sku = "2019-Datacenter",
///                 Version = "2019.0.20190410",
///             },
///             Sku = new AzureNative.LabServices.Inputs.SkuArgs
///             {
///                 Name = "Medium",
///             },
///             UsageQuota = "PT10H",
///             UseSharedPassword = AzureNative.LabServices.EnableState.Disabled,
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
/// 		_, err := labservices.NewLab(ctx, "lab", &labservices.LabArgs{
/// 			AutoShutdownProfile: &labservices.AutoShutdownProfileArgs{
/// 				DisconnectDelay:          pulumi.String("PT5M"),
/// 				IdleDelay:                pulumi.String("PT5M"),
/// 				NoConnectDelay:           pulumi.String("PT5M"),
/// 				ShutdownOnDisconnect:     labservices.EnableStateEnabled,
/// 				ShutdownOnIdle:           labservices.ShutdownOnIdleModeUserAbsence,
/// 				ShutdownWhenNotConnected: labservices.EnableStateEnabled,
/// 			},
/// 			ConnectionProfile: &labservices.ConnectionProfileArgs{
/// 				ClientRdpAccess: labservices.ConnectionTypePublic,
/// 				ClientSshAccess: labservices.ConnectionTypePublic,
/// 				WebRdpAccess:    labservices.ConnectionTypeNone,
/// 				WebSshAccess:    labservices.ConnectionTypeNone,
/// 			},
/// 			Description: pulumi.String("This is a test lab."),
/// 			LabName:     pulumi.String("testlab"),
/// 			LabPlanId:   pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.LabServices/labPlans/testlabplan"),
/// 			Location:    pulumi.String("westus"),
/// 			NetworkProfile: &labservices.LabNetworkProfileArgs{
/// 				SubnetId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			SecurityProfile: &labservices.SecurityProfileArgs{
/// 				OpenAccess: labservices.EnableStateDisabled,
/// 			},
/// 			Title: pulumi.String("Test Lab"),
/// 			VirtualMachineProfile: &labservices.VirtualMachineProfileArgs{
/// 				AdditionalCapabilities: &labservices.VirtualMachineAdditionalCapabilitiesArgs{
/// 					InstallGpuDrivers: labservices.EnableStateDisabled,
/// 				},
/// 				AdminUser: &labservices.CredentialsArgs{
/// 					Username: pulumi.String("test-user"),
/// 				},
/// 				CreateOption: labservices.CreateOptionTemplateVM,
/// 				ImageReference: &labservices.ImageReferenceArgs{
/// 					Offer:     pulumi.String("WindowsServer"),
/// 					Publisher: pulumi.String("Microsoft"),
/// 					Sku:       pulumi.String("2019-Datacenter"),
/// 					Version:   pulumi.String("2019.0.20190410"),
/// 				},
/// 				Sku: &labservices.SkuArgs{
/// 					Name: pulumi.String("Medium"),
/// 				},
/// 				UsageQuota:        pulumi.String("PT10H"),
/// 				UseSharedPassword: labservices.EnableStateDisabled,
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
/// import com.pulumi.azurenative.labservices.Lab;
/// import com.pulumi.azurenative.labservices.LabArgs;
/// import com.pulumi.azurenative.labservices.inputs.AutoShutdownProfileArgs;
/// import com.pulumi.azurenative.labservices.inputs.ConnectionProfileArgs;
/// import com.pulumi.azurenative.labservices.inputs.LabNetworkProfileArgs;
/// import com.pulumi.azurenative.labservices.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.labservices.inputs.VirtualMachineProfileArgs;
/// import com.pulumi.azurenative.labservices.inputs.VirtualMachineAdditionalCapabilitiesArgs;
/// import com.pulumi.azurenative.labservices.inputs.CredentialsArgs;
/// import com.pulumi.azurenative.labservices.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.labservices.inputs.SkuArgs;
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
///         var lab = new Lab("lab", LabArgs.builder()
///             .autoShutdownProfile(AutoShutdownProfileArgs.builder()
///                 .disconnectDelay("PT5M")
///                 .idleDelay("PT5M")
///                 .noConnectDelay("PT5M")
///                 .shutdownOnDisconnect("Enabled")
///                 .shutdownOnIdle("UserAbsence")
///                 .shutdownWhenNotConnected("Enabled")
///                 .build())
///             .connectionProfile(ConnectionProfileArgs.builder()
///                 .clientRdpAccess("Public")
///                 .clientSshAccess("Public")
///                 .webRdpAccess("None")
///                 .webSshAccess("None")
///                 .build())
///             .description("This is a test lab.")
///             .labName("testlab")
///             .labPlanId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.LabServices/labPlans/testlabplan")
///             .location("westus")
///             .networkProfile(LabNetworkProfileArgs.builder()
///                 .subnetId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default")
///                 .build())
///             .resourceGroupName("testrg123")
///             .securityProfile(SecurityProfileArgs.builder()
///                 .openAccess("Disabled")
///                 .build())
///             .title("Test Lab")
///             .virtualMachineProfile(VirtualMachineProfileArgs.builder()
///                 .additionalCapabilities(VirtualMachineAdditionalCapabilitiesArgs.builder()
///                     .installGpuDrivers("Disabled")
///                     .build())
///                 .adminUser(CredentialsArgs.builder()
///                     .username("test-user")
///                     .build())
///                 .createOption("TemplateVM")
///                 .imageReference(ImageReferenceArgs.builder()
///                     .offer("WindowsServer")
///                     .publisher("Microsoft")
///                     .sku("2019-Datacenter")
///                     .version("2019.0.20190410")
///                     .build())
///                 .sku(SkuArgs.builder()
///                     .name("Medium")
///                     .build())
///                 .usageQuota("PT10H")
///                 .useSharedPassword("Disabled")
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
/// const lab = new azure_native.labservices.Lab("lab", {
///     autoShutdownProfile: {
///         disconnectDelay: "PT5M",
///         idleDelay: "PT5M",
///         noConnectDelay: "PT5M",
///         shutdownOnDisconnect: azure_native.labservices.EnableState.Enabled,
///         shutdownOnIdle: azure_native.labservices.ShutdownOnIdleMode.UserAbsence,
///         shutdownWhenNotConnected: azure_native.labservices.EnableState.Enabled,
///     },
///     connectionProfile: {
///         clientRdpAccess: azure_native.labservices.ConnectionType.Public,
///         clientSshAccess: azure_native.labservices.ConnectionType.Public,
///         webRdpAccess: azure_native.labservices.ConnectionType.None,
///         webSshAccess: azure_native.labservices.ConnectionType.None,
///     },
///     description: "This is a test lab.",
///     labName: "testlab",
///     labPlanId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.LabServices/labPlans/testlabplan",
///     location: "westus",
///     networkProfile: {
///         subnetId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///     },
///     resourceGroupName: "testrg123",
///     securityProfile: {
///         openAccess: azure_native.labservices.EnableState.Disabled,
///     },
///     title: "Test Lab",
///     virtualMachineProfile: {
///         additionalCapabilities: {
///             installGpuDrivers: azure_native.labservices.EnableState.Disabled,
///         },
///         adminUser: {
///             username: "test-user",
///         },
///         createOption: azure_native.labservices.CreateOption.TemplateVM,
///         imageReference: {
///             offer: "WindowsServer",
///             publisher: "Microsoft",
///             sku: "2019-Datacenter",
///             version: "2019.0.20190410",
///         },
///         sku: {
///             name: "Medium",
///         },
///         usageQuota: "PT10H",
///         useSharedPassword: azure_native.labservices.EnableState.Disabled,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// lab = azure_native.labservices.Lab("lab",
///     auto_shutdown_profile={
///         "disconnect_delay": "PT5M",
///         "idle_delay": "PT5M",
///         "no_connect_delay": "PT5M",
///         "shutdown_on_disconnect": azure_native.labservices.EnableState.ENABLED,
///         "shutdown_on_idle": azure_native.labservices.ShutdownOnIdleMode.USER_ABSENCE,
///         "shutdown_when_not_connected": azure_native.labservices.EnableState.ENABLED,
///     },
///     connection_profile={
///         "client_rdp_access": azure_native.labservices.ConnectionType.PUBLIC,
///         "client_ssh_access": azure_native.labservices.ConnectionType.PUBLIC,
///         "web_rdp_access": azure_native.labservices.ConnectionType.NONE,
///         "web_ssh_access": azure_native.labservices.ConnectionType.NONE,
///     },
///     description="This is a test lab.",
///     lab_name="testlab",
///     lab_plan_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.LabServices/labPlans/testlabplan",
///     location="westus",
///     network_profile={
///         "subnet_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default",
///     },
///     resource_group_name="testrg123",
///     security_profile={
///         "open_access": azure_native.labservices.EnableState.DISABLED,
///     },
///     title="Test Lab",
///     virtual_machine_profile={
///         "additional_capabilities": {
///             "install_gpu_drivers": azure_native.labservices.EnableState.DISABLED,
///         },
///         "admin_user": {
///             "username": "test-user",
///         },
///         "create_option": azure_native.labservices.CreateOption.TEMPLATE_VM,
///         "image_reference": {
///             "offer": "WindowsServer",
///             "publisher": "Microsoft",
///             "sku": "2019-Datacenter",
///             "version": "2019.0.20190410",
///         },
///         "sku": {
///             "name": "Medium",
///         },
///         "usage_quota": "PT10H",
///         "use_shared_password": azure_native.labservices.EnableState.DISABLED,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   lab:
///     type: azure-native:labservices:Lab
///     properties:
///       autoShutdownProfile:
///         disconnectDelay: PT5M
///         idleDelay: PT5M
///         noConnectDelay: PT5M
///         shutdownOnDisconnect: Enabled
///         shutdownOnIdle: UserAbsence
///         shutdownWhenNotConnected: Enabled
///       connectionProfile:
///         clientRdpAccess: Public
///         clientSshAccess: Public
///         webRdpAccess: None
///         webSshAccess: None
///       description: This is a test lab.
///       labName: testlab
///       labPlanId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.LabServices/labPlans/testlabplan
///       location: westus
///       networkProfile:
///         subnetId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/testrg123/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default
///       resourceGroupName: testrg123
///       securityProfile:
///         openAccess: Disabled
///       title: Test Lab
///       virtualMachineProfile:
///         additionalCapabilities:
///           installGpuDrivers: Disabled
///         adminUser:
///           username: test-user
///         createOption: TemplateVM
///         imageReference:
///           offer: WindowsServer
///           publisher: Microsoft
///           sku: 2019-Datacenter
///           version: 2019.0.20190410
///         sku:
///           name: Medium
///         usageQuota: PT10H
///         useSharedPassword: Disabled
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
/// $ pulumi import azure-native:labservices:Lab testlabplan /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labs/{labName}
/// ```
class Lab extends pulumi.CustomResource {
  /// The resource auto shutdown configuration for the lab. This controls whether actions are taken on resources that are sitting idle.
  late final pulumi.Output<AutoShutdownProfileResponse> autoShutdownProfile;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The connection profile for the lab. This controls settings such as web access to lab resources or whether RDP or SSH ports are open.
  late final pulumi.Output<ConnectionProfileResponse> connectionProfile;

  /// The description of the lab.
  late final pulumi.Output<String?> description;

  /// The ID of the lab plan. Used during resource creation to provide defaults and acts as a permission container when creating a lab via labs.azure.com. Setting a labPlanId on an existing lab provides organization..
  late final pulumi.Output<String?> labPlanId;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The network profile for the lab, typically applied via a lab plan. This profile cannot be modified once a lab has been created.
  late final pulumi.Output<LabNetworkProfileResponse?> networkProfile;

  /// Current provisioning state of the lab.
  late final pulumi.Output<String> provisioningState;

  /// Error details of last operation done on lab.
  late final pulumi.Output<ResourceOperationErrorResponse>
  resourceOperationError;

  /// The lab user list management profile.
  late final pulumi.Output<RosterProfileResponse?> rosterProfile;

  /// The lab security profile.
  late final pulumi.Output<SecurityProfileResponse> securityProfile;

  /// The lab state.
  late final pulumi.Output<String> state;

  /// Metadata pertaining to creation and last modification of the lab.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The title of the lab.
  late final pulumi.Output<String?> title;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The profile used for creating lab virtual machines.
  late final pulumi.Output<VirtualMachineProfileResponse> virtualMachineProfile;

  /// Creates a new [Lab].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lab]. {@macro pulumi_labservices_lab_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lab(String name, {LabArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:labservices:Lab',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    autoShutdownProfile = registerOutput<AutoShutdownProfileResponse>(
      'autoShutdownProfile',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionProfile = registerOutput<ConnectionProfileResponse>(
      'connectionProfile',
    );
    description = registerOutput<String?>('description');
    labPlanId = registerOutput<String?>('labPlanId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<LabNetworkProfileResponse?>(
      'networkProfile',
    );
    provisioningState = registerOutput<String>('provisioningState');
    resourceOperationError = registerOutput<ResourceOperationErrorResponse>(
      'resourceOperationError',
    );
    rosterProfile = registerOutput<RosterProfileResponse?>('rosterProfile');
    securityProfile = registerOutput<SecurityProfileResponse>(
      'securityProfile',
    );
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
    virtualMachineProfile = registerOutput<VirtualMachineProfileResponse>(
      'virtualMachineProfile',
    );
  }
}
