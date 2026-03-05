import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_configuration_assignment_properties_response.dart';
import 'guest_configuration_connected_vmwarev_sphere_assignment_args.dart';
import 'system_data_response.dart';

/// Guest configuration assignment is an association between a machine and guest configuration.
///
/// Uses Azure REST API version 2024-04-05. In version 2.x of the Azure Native provider, it used API version 2022-01-25.
///
/// Other available API versions: 2022-01-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native guestconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update guest configuration assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var guestConfigurationConnectedVMwarevSphereAssignment = new AzureNative.GuestConfiguration.GuestConfigurationConnectedVMwarevSphereAssignment("guestConfigurationConnectedVMwarevSphereAssignment", new()
///     {
///         GuestConfigurationAssignmentName = "NotInstalledApplicationForWindows",
///         Location = "westcentralus",
///         Name = "NotInstalledApplicationForWindows",
///         Properties = new AzureNative.GuestConfiguration.Inputs.GuestConfigurationAssignmentPropertiesArgs
///         {
///             Context = "Azure policy",
///             GuestConfiguration = new AzureNative.GuestConfiguration.Inputs.GuestConfigurationNavigationArgs
///             {
///                 AssignmentType = AzureNative.GuestConfiguration.AssignmentType.ApplyAndAutoCorrect,
///                 ConfigurationParameter = new[]
///                 {
///                     new AzureNative.GuestConfiguration.Inputs.ConfigurationParameterArgs
///                     {
///                         Name = "[InstalledApplication]NotInstalledApplicationResource1;Name",
///                         Value = "NotePad,sql",
///                     },
///                 },
///                 ContentHash = "123contenthash",
///                 ContentUri = "https://thisisfake/pacakge",
///                 Name = "NotInstalledApplicationForWindows",
///                 Version = "1.0.0.0",
///             },
///         },
///         ResourceGroupName = "myResourceGroupName",
///         VmName = "myVMName",
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
/// 	guestconfiguration "github.com/pulumi/pulumi-azure-native-sdk/guestconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := guestconfiguration.NewGuestConfigurationConnectedVMwarevSphereAssignment(ctx, "guestConfigurationConnectedVMwarevSphereAssignment", &guestconfiguration.GuestConfigurationConnectedVMwarevSphereAssignmentArgs{
/// 			GuestConfigurationAssignmentName: pulumi.String("NotInstalledApplicationForWindows"),
/// 			Location:                         pulumi.String("westcentralus"),
/// 			Name:                             pulumi.String("NotInstalledApplicationForWindows"),
/// 			Properties: &guestconfiguration.GuestConfigurationAssignmentPropertiesArgs{
/// 				Context: pulumi.String("Azure policy"),
/// 				GuestConfiguration: &guestconfiguration.GuestConfigurationNavigationArgs{
/// 					AssignmentType: pulumi.String(guestconfiguration.AssignmentTypeApplyAndAutoCorrect),
/// 					ConfigurationParameter: guestconfiguration.ConfigurationParameterArray{
/// 						&guestconfiguration.ConfigurationParameterArgs{
/// 							Name:  pulumi.String("[InstalledApplication]NotInstalledApplicationResource1;Name"),
/// 							Value: pulumi.String("NotePad,sql"),
/// 						},
/// 					},
/// 					ContentHash: pulumi.String("123contenthash"),
/// 					ContentUri:  pulumi.String("https://thisisfake/pacakge"),
/// 					Name:        pulumi.String("NotInstalledApplicationForWindows"),
/// 					Version:     pulumi.String("1.0.0.0"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroupName"),
/// 			VmName:            pulumi.String("myVMName"),
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
/// import com.pulumi.azurenative.guestconfiguration.GuestConfigurationConnectedVMwarevSphereAssignment;
/// import com.pulumi.azurenative.guestconfiguration.GuestConfigurationConnectedVMwarevSphereAssignmentArgs;
/// import com.pulumi.azurenative.guestconfiguration.inputs.GuestConfigurationAssignmentPropertiesArgs;
/// import com.pulumi.azurenative.guestconfiguration.inputs.GuestConfigurationNavigationArgs;
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
///         var guestConfigurationConnectedVMwarevSphereAssignment = new GuestConfigurationConnectedVMwarevSphereAssignment("guestConfigurationConnectedVMwarevSphereAssignment", GuestConfigurationConnectedVMwarevSphereAssignmentArgs.builder()
///             .guestConfigurationAssignmentName("NotInstalledApplicationForWindows")
///             .location("westcentralus")
///             .name("NotInstalledApplicationForWindows")
///             .properties(GuestConfigurationAssignmentPropertiesArgs.builder()
///                 .context("Azure policy")
///                 .guestConfiguration(GuestConfigurationNavigationArgs.builder()
///                     .assignmentType("ApplyAndAutoCorrect")
///                     .configurationParameter(ConfigurationParameterArgs.builder()
///                         .name("[InstalledApplication]NotInstalledApplicationResource1;Name")
///                         .value("NotePad,sql")
///                         .build())
///                     .contentHash("123contenthash")
///                     .contentUri("https://thisisfake/pacakge")
///                     .name("NotInstalledApplicationForWindows")
///                     .version("1.0.0.0")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroupName")
///             .vmName("myVMName")
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
/// const guestConfigurationConnectedVMwarevSphereAssignment = new azure_native.guestconfiguration.GuestConfigurationConnectedVMwarevSphereAssignment("guestConfigurationConnectedVMwarevSphereAssignment", {
///     guestConfigurationAssignmentName: "NotInstalledApplicationForWindows",
///     location: "westcentralus",
///     name: "NotInstalledApplicationForWindows",
///     properties: {
///         context: "Azure policy",
///         guestConfiguration: {
///             assignmentType: azure_native.guestconfiguration.AssignmentType.ApplyAndAutoCorrect,
///             configurationParameter: [{
///                 name: "[InstalledApplication]NotInstalledApplicationResource1;Name",
///                 value: "NotePad,sql",
///             }],
///             contentHash: "123contenthash",
///             contentUri: "https://thisisfake/pacakge",
///             name: "NotInstalledApplicationForWindows",
///             version: "1.0.0.0",
///         },
///     },
///     resourceGroupName: "myResourceGroupName",
///     vmName: "myVMName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// guest_configuration_connected_v_mwarev_sphere_assignment = azure_native.guestconfiguration.GuestConfigurationConnectedVMwarevSphereAssignment("guestConfigurationConnectedVMwarevSphereAssignment",
///     guest_configuration_assignment_name="NotInstalledApplicationForWindows",
///     location="westcentralus",
///     name="NotInstalledApplicationForWindows",
///     properties={
///         "context": "Azure policy",
///         "guest_configuration": {
///             "assignment_type": azure_native.guestconfiguration.AssignmentType.APPLY_AND_AUTO_CORRECT,
///             "configuration_parameter": [{
///                 "name": "[InstalledApplication]NotInstalledApplicationResource1;Name",
///                 "value": "NotePad,sql",
///             }],
///             "content_hash": "123contenthash",
///             "content_uri": "https://thisisfake/pacakge",
///             "name": "NotInstalledApplicationForWindows",
///             "version": "1.0.0.0",
///         },
///     },
///     resource_group_name="myResourceGroupName",
///     vm_name="myVMName")
///
/// ```
///
/// ```yaml
/// resources:
///   guestConfigurationConnectedVMwarevSphereAssignment:
///     type: azure-native:guestconfiguration:GuestConfigurationConnectedVMwarevSphereAssignment
///     properties:
///       guestConfigurationAssignmentName: NotInstalledApplicationForWindows
///       location: westcentralus
///       name: NotInstalledApplicationForWindows
///       properties:
///         context: Azure policy
///         guestConfiguration:
///           assignmentType: ApplyAndAutoCorrect
///           configurationParameter:
///             - name: '[InstalledApplication]NotInstalledApplicationResource1;Name'
///               value: NotePad,sql
///           contentHash: 123contenthash
///           contentUri: https://thisisfake/pacakge
///           name: NotInstalledApplicationForWindows
///           version: 1.0.0.0
///       resourceGroupName: myResourceGroupName
///       vmName: myVMName
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
/// $ pulumi import azure-native:guestconfiguration:GuestConfigurationConnectedVMwarevSphereAssignment NotInstalledApplicationForWindows /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/virtualmachines/{vmName}/providers/Microsoft.GuestConfiguration/guestConfigurationAssignments/{guestConfigurationAssignmentName}
/// ```
class GuestConfigurationConnectedVMwarevSphereAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Region where the VM is located.
  late final pulumi.Output<String?> location;
  /// The guest configuration assignment name.
  late final pulumi.Output<String> name;
  /// Properties of the Guest configuration assignment.
  late final pulumi.Output<GuestConfigurationAssignmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [GuestConfigurationConnectedVMwarevSphereAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuestConfigurationConnectedVMwarevSphereAssignment]. {@macro pulumi_guestconfiguration_guest_configuration_connected_vmwarev_sphere_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuestConfigurationConnectedVMwarevSphereAssignment(
    String name, {
    GuestConfigurationConnectedVMwarevSphereAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:guestconfiguration:GuestConfigurationConnectedVMwarevSphereAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GuestConfigurationAssignmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GuestConfigurationAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
