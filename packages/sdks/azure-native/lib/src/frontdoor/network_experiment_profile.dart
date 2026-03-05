import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_experiment_profile_args.dart';

/// Defines an Network Experiment Profile and lists of Experiments
///
/// Uses Azure REST API version 2019-11-01.
///
/// Other available API versions: 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates an NetworkExperiment Profile in a Resource Group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkExperimentProfile = new AzureNative.FrontDoor.NetworkExperimentProfile("networkExperimentProfile", new()
///     {
///         EnabledState = AzureNative.FrontDoor.State.Enabled,
///         Location = "WestUs",
///         ProfileName = "MyProfile",
///         ResourceGroupName = "MyResourceGroup",
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
/// 	frontdoor "github.com/pulumi/pulumi-azure-native-sdk/frontdoor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := frontdoor.NewNetworkExperimentProfile(ctx, "networkExperimentProfile", &frontdoor.NetworkExperimentProfileArgs{
/// 			EnabledState:      pulumi.String(frontdoor.StateEnabled),
/// 			Location:          pulumi.String("WestUs"),
/// 			ProfileName:       pulumi.String("MyProfile"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
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
/// import com.pulumi.azurenative.frontdoor.NetworkExperimentProfile;
/// import com.pulumi.azurenative.frontdoor.NetworkExperimentProfileArgs;
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
///         var networkExperimentProfile = new NetworkExperimentProfile("networkExperimentProfile", NetworkExperimentProfileArgs.builder()
///             .enabledState("Enabled")
///             .location("WestUs")
///             .profileName("MyProfile")
///             .resourceGroupName("MyResourceGroup")
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
/// const networkExperimentProfile = new azure_native.frontdoor.NetworkExperimentProfile("networkExperimentProfile", {
///     enabledState: azure_native.frontdoor.State.Enabled,
///     location: "WestUs",
///     profileName: "MyProfile",
///     resourceGroupName: "MyResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_experiment_profile = azure_native.frontdoor.NetworkExperimentProfile("networkExperimentProfile",
///     enabled_state=azure_native.frontdoor.State.ENABLED,
///     location="WestUs",
///     profile_name="MyProfile",
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   networkExperimentProfile:
///     type: azure-native:frontdoor:NetworkExperimentProfile
///     properties:
///       enabledState: Enabled
///       location: WestUs
///       profileName: MyProfile
///       resourceGroupName: MyResourceGroup
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
/// $ pulumi import azure-native:frontdoor:NetworkExperimentProfile MyProfile /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/NetworkExperimentProfiles/{profileName}
/// ```
class NetworkExperimentProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The state of the Experiment
  late final pulumi.Output<String?> enabledState;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String?> etag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource status.
  late final pulumi.Output<String> resourceState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkExperimentProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkExperimentProfile]. {@macro pulumi_frontdoor_network_experiment_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkExperimentProfile(
    String name, {
    NetworkExperimentProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:frontdoor:NetworkExperimentProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enabledState = registerOutput<String?>('enabledState');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    resourceState = registerOutput<String>('resourceState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
