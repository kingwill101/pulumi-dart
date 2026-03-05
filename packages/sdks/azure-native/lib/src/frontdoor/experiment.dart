import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_response.dart';
import 'experiment_args.dart';

/// Defines the properties of an Experiment
///
/// Uses Azure REST API version 2019-11-01.
///
/// Other available API versions: 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates an Experiment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var experiment = new AzureNative.FrontDoor.Experiment("experiment", new()
///     {
///         Description = "this is my first experiment!",
///         EnabledState = AzureNative.FrontDoor.State.Enabled,
///         EndpointA = new AzureNative.FrontDoor.Inputs.EndpointArgs
///         {
///             Endpoint = "endpointA.net",
///             Name = "endpoint A",
///         },
///         EndpointB = new AzureNative.FrontDoor.Inputs.EndpointArgs
///         {
///             Endpoint = "endpointB.net",
///             Name = "endpoint B",
///         },
///         ExperimentName = "MyExperiment",
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
/// 		_, err := frontdoor.NewExperiment(ctx, "experiment", &frontdoor.ExperimentArgs{
/// 			Description:  pulumi.String("this is my first experiment!"),
/// 			EnabledState: pulumi.String(frontdoor.StateEnabled),
/// 			EndpointA: &frontdoor.EndpointArgs{
/// 				Endpoint: pulumi.String("endpointA.net"),
/// 				Name:     pulumi.String("endpoint A"),
/// 			},
/// 			EndpointB: &frontdoor.EndpointArgs{
/// 				Endpoint: pulumi.String("endpointB.net"),
/// 				Name:     pulumi.String("endpoint B"),
/// 			},
/// 			ExperimentName:    pulumi.String("MyExperiment"),
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
/// import com.pulumi.azurenative.frontdoor.Experiment;
/// import com.pulumi.azurenative.frontdoor.ExperimentArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.EndpointArgs;
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
///         var experiment = new Experiment("experiment", ExperimentArgs.builder()
///             .description("this is my first experiment!")
///             .enabledState("Enabled")
///             .endpointA(EndpointArgs.builder()
///                 .endpoint("endpointA.net")
///                 .name("endpoint A")
///                 .build())
///             .endpointB(EndpointArgs.builder()
///                 .endpoint("endpointB.net")
///                 .name("endpoint B")
///                 .build())
///             .experimentName("MyExperiment")
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
/// const experiment = new azure_native.frontdoor.Experiment("experiment", {
///     description: "this is my first experiment!",
///     enabledState: azure_native.frontdoor.State.Enabled,
///     endpointA: {
///         endpoint: "endpointA.net",
///         name: "endpoint A",
///     },
///     endpointB: {
///         endpoint: "endpointB.net",
///         name: "endpoint B",
///     },
///     experimentName: "MyExperiment",
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
/// experiment = azure_native.frontdoor.Experiment("experiment",
///     description="this is my first experiment!",
///     enabled_state=azure_native.frontdoor.State.ENABLED,
///     endpoint_a={
///         "endpoint": "endpointA.net",
///         "name": "endpoint A",
///     },
///     endpoint_b={
///         "endpoint": "endpointB.net",
///         "name": "endpoint B",
///     },
///     experiment_name="MyExperiment",
///     profile_name="MyProfile",
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   experiment:
///     type: azure-native:frontdoor:Experiment
///     properties:
///       description: this is my first experiment!
///       enabledState: Enabled
///       endpointA:
///         endpoint: endpointA.net
///         name: endpoint A
///       endpointB:
///         endpoint: endpointB.net
///         name: endpoint B
///       experimentName: MyExperiment
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
/// $ pulumi import azure-native:frontdoor:Experiment MyExperiment /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/NetworkExperimentProfiles/{profileName}/Experiments/{experimentName}
/// ```
class Experiment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the details or intents of the Experiment
  late final pulumi.Output<String?> description;
  /// The state of the Experiment
  late final pulumi.Output<String?> enabledState;
  /// The endpoint A of an experiment
  late final pulumi.Output<EndpointResponse?> endpointA;
  /// The endpoint B of an experiment
  late final pulumi.Output<EndpointResponse?> endpointB;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource status.
  late final pulumi.Output<String> resourceState;
  /// The uri to the Script used in the Experiment
  late final pulumi.Output<String> scriptFileUri;
  /// The description of Experiment status from the server side
  late final pulumi.Output<String> status;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Experiment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Experiment]. {@macro pulumi_frontdoor_experiment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Experiment(
    String name, {
    ExperimentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:frontdoor:Experiment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    enabledState = registerOutput<String?>('enabledState');
    endpointA = registerOutput<EndpointResponse?>('endpointA', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointB = registerOutput<EndpointResponse?>('endpointB', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    resourceState = registerOutput<String>('resourceState');
    scriptFileUri = registerOutput<String>('scriptFileUri');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
