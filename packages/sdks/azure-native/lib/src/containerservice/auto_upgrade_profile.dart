import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_upgrade_node_image_selection_response.dart';
import 'auto_upgrade_profile_args.dart';
import 'system_data_response.dart';

/// The AutoUpgradeProfile resource.
///
/// Uses Azure REST API version 2024-05-02-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-02-preview.
///
/// Other available API versions: 2025-03-01, 2025-04-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an AutoUpgradeProfile.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var autoUpgradeProfile = new AzureNative.ContainerService.AutoUpgradeProfile("autoUpgradeProfile", new()
///     {
///         AutoUpgradeProfileName = "autoupgradeprofile1",
///         Channel = "Stable",
///         FleetName = "fleet1",
///         ResourceGroupName = "rg1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewAutoUpgradeProfile(ctx, "autoUpgradeProfile", &containerservice.AutoUpgradeProfileArgs{
/// 			AutoUpgradeProfileName: pulumi.String("autoupgradeprofile1"),
/// 			Channel:                pulumi.String("Stable"),
/// 			FleetName:              pulumi.String("fleet1"),
/// 			ResourceGroupName:      pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.containerservice.AutoUpgradeProfile;
/// import com.pulumi.azurenative.containerservice.AutoUpgradeProfileArgs;
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
///         var autoUpgradeProfile = new AutoUpgradeProfile("autoUpgradeProfile", AutoUpgradeProfileArgs.builder()
///             .autoUpgradeProfileName("autoupgradeprofile1")
///             .channel("Stable")
///             .fleetName("fleet1")
///             .resourceGroupName("rg1")
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
/// const autoUpgradeProfile = new azure_native.containerservice.AutoUpgradeProfile("autoUpgradeProfile", {
///     autoUpgradeProfileName: "autoupgradeprofile1",
///     channel: "Stable",
///     fleetName: "fleet1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// auto_upgrade_profile = azure_native.containerservice.AutoUpgradeProfile("autoUpgradeProfile",
///     auto_upgrade_profile_name="autoupgradeprofile1",
///     channel="Stable",
///     fleet_name="fleet1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   autoUpgradeProfile:
///     type: azure-native:containerservice:AutoUpgradeProfile
///     properties:
///       autoUpgradeProfileName: autoupgradeprofile1
///       channel: Stable
///       fleetName: fleet1
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:containerservice:AutoUpgradeProfile autoupgradeprofile1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/fleets/{fleetName}/autoUpgradeProfiles/{autoUpgradeProfileName}
/// ```
class AutoUpgradeProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configures how auto-upgrade will be run.
  late final pulumi.Output<String> channel;

  /// If set to False: the auto upgrade has effect - target managed clusters will be upgraded on schedule.
  /// If set to True: the auto upgrade has no effect - no upgrade will be run on the target managed clusters.
  /// This is a boolean and not an enum because enabled/disabled are all available states of the auto upgrade profile.
  /// By default, this is set to False.
  late final pulumi.Output<bool?> disabled;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The node image upgrade to be applied to the target clusters in auto upgrade.
  late final pulumi.Output<AutoUpgradeNodeImageSelectionResponse?>
  nodeImageSelection;

  /// The provisioning state of the AutoUpgradeProfile resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The resource id of the UpdateStrategy resource to reference. If not specified, the auto upgrade will run on all clusters which are members of the fleet.
  late final pulumi.Output<String?> updateStrategyId;

  /// Creates a new [AutoUpgradeProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoUpgradeProfile]. {@macro pulumi_containerservice_auto_upgrade_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoUpgradeProfile(
    String name, {
    AutoUpgradeProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerservice:AutoUpgradeProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    channel = registerOutput<String>('channel');
    disabled = registerOutput<bool?>('disabled');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    nodeImageSelection = registerOutput<AutoUpgradeNodeImageSelectionResponse?>(
      'nodeImageSelection',
    );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    updateStrategyId = registerOutput<String?>('updateStrategyId');
  }
}
