import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_details_args.dart';

/// Represents an instance of a DNC controller.
///
/// Uses Azure REST API version 2023-06-27-preview. In version 2.x of the Azure Native provider, it used API version 2021-03-15.
///
/// Other available API versions: 2021-03-15, 2023-05-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native delegatednetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create controller
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var controllerDetails = new AzureNative.DelegatedNetwork.ControllerDetails("controllerDetails", new()
///     {
///         Location = "West US",
///         Purpose = AzureNative.DelegatedNetwork.ControllerPurpose.Test,
///         ResourceGroupName = "TestRG",
///         ResourceName = "testcontroller",
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
/// 	delegatednetwork "github.com/pulumi/pulumi-azure-native-sdk/delegatednetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := delegatednetwork.NewControllerDetails(ctx, "controllerDetails", &delegatednetwork.ControllerDetailsArgs{
/// 			Location:          pulumi.String("West US"),
/// 			Purpose:           pulumi.String(delegatednetwork.ControllerPurposeTest),
/// 			ResourceGroupName: pulumi.String("TestRG"),
/// 			ResourceName:      pulumi.String("testcontroller"),
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
/// import com.pulumi.azurenative.delegatednetwork.ControllerDetails;
/// import com.pulumi.azurenative.delegatednetwork.ControllerDetailsArgs;
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
///         var controllerDetails = new ControllerDetails("controllerDetails", ControllerDetailsArgs.builder()
///             .location("West US")
///             .purpose("test")
///             .resourceGroupName("TestRG")
///             .resourceName("testcontroller")
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
/// const controllerDetails = new azure_native.delegatednetwork.ControllerDetails("controllerDetails", {
///     location: "West US",
///     purpose: azure_native.delegatednetwork.ControllerPurpose.Test,
///     resourceGroupName: "TestRG",
///     resourceName: "testcontroller",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// controller_details = azure_native.delegatednetwork.ControllerDetails("controllerDetails",
///     location="West US",
///     purpose=azure_native.delegatednetwork.ControllerPurpose.TEST,
///     resource_group_name="TestRG",
///     resource_name_="testcontroller")
///
/// ```
///
/// ```yaml
/// resources:
///   controllerDetails:
///     type: azure-native:delegatednetwork:ControllerDetails
///     properties:
///       location: West US
///       purpose: test
///       resourceGroupName: TestRG
///       resourceName: testcontroller
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
/// $ pulumi import azure-native:delegatednetwork:ControllerDetails testcontroller /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DelegatedNetwork/controller/{resourceName}
/// ```
class ControllerDetailsDelegatednetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// dnc application id should be used by customer to authenticate with dnc gateway.
  late final pulumi.Output<String> dncAppId;
  /// dnc endpoint url that customers can use to connect to
  late final pulumi.Output<String> dncEndpoint;
  /// tenant id of dnc application id
  late final pulumi.Output<String> dncTenantId;
  /// Location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The current state of dnc controller resource.
  late final pulumi.Output<String> provisioningState;
  /// The purpose of the dnc controller resource.
  late final pulumi.Output<String?> purpose;
  /// Resource guid.
  late final pulumi.Output<String> resourceGuid;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ControllerDetailsDelegatednetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControllerDetailsDelegatednetwork]. {@macro pulumi_delegatednetwork_controller_details_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControllerDetailsDelegatednetwork(
    String name, {
    ControllerDetailsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:delegatednetwork:ControllerDetails',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dncAppId = registerOutput<String>('dncAppId');
    dncEndpoint = registerOutput<String>('dncEndpoint');
    dncTenantId = registerOutput<String>('dncTenantId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    purpose = registerOutput<String?>('purpose');
    resourceGuid = registerOutput<String>('resourceGuid');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
