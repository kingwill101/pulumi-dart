import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_args.dart';

/// The view resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Views_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var view = new AzureNative.CustomerInsights.View("view", new()
///     {
///         Definition = "{\\\"isProfileType\\\":false,\\\"profileTypes\\\":[],\\\"widgets\\\":[],\\\"style\\\":[]}",
///         DisplayName =
///         {
///             { "en", "some name" },
///         },
///         HubName = "sdkTestHub",
///         ResourceGroupName = "TestHubRG",
///         UserId = "testUser",
///         ViewName = "testView",
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
/// 	customerinsights "github.com/pulumi/pulumi-azure-native-sdk/customerinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerinsights.NewView(ctx, "view", &customerinsights.ViewArgs{
/// 			Definition: pulumi.String("{\\\"isProfileType\\\":false,\\\"profileTypes\\\":[],\\\"widgets\\\":[],\\\"style\\\":[]}"),
/// 			DisplayName: pulumi.StringMap{
/// 				"en": pulumi.String("some name"),
/// 			},
/// 			HubName:           pulumi.String("sdkTestHub"),
/// 			ResourceGroupName: pulumi.String("TestHubRG"),
/// 			UserId:            pulumi.String("testUser"),
/// 			ViewName:          pulumi.String("testView"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_customerinsights_view" "view" {
///   definition = "{\\\"isProfileType\\\":false,\\\"profileTypes\\\":[],\\\"widgets\\\":[],\\\"style\\\":[]}"
///   display_name = {
///     "en" = "some name"
///   }
///   hub_name            = "sdkTestHub"
///   resource_group_name = "TestHubRG"
///   user_id             = "testUser"
///   view_name           = "testView"
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
/// import com.pulumi.azurenative.customerinsights.View;
/// import com.pulumi.azurenative.customerinsights.ViewArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var view = new View("view", ViewArgs.builder()
///             .definition("{\\\"isProfileType\\\":false,\\\"profileTypes\\\":[],\\\"widgets\\\":[],\\\"style\\\":[]}")
///             .displayName(Map.of("en", "some name"))
///             .hubName("sdkTestHub")
///             .resourceGroupName("TestHubRG")
///             .userId("testUser")
///             .viewName("testView")
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
/// const view = new azure_native.customerinsights.View("view", {
///     definition: "{\\\"isProfileType\\\":false,\\\"profileTypes\\\":[],\\\"widgets\\\":[],\\\"style\\\":[]}",
///     displayName: {
///         en: "some name",
///     },
///     hubName: "sdkTestHub",
///     resourceGroupName: "TestHubRG",
///     userId: "testUser",
///     viewName: "testView",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// view = azure_native.customerinsights.View("view",
///     definition="{\\\"isProfileType\\\":false,\\\"profileTypes\\\":[],\\\"widgets\\\":[],\\\"style\\\":[]}",
///     display_name={
///         "en": "some name",
///     },
///     hub_name="sdkTestHub",
///     resource_group_name="TestHubRG",
///     user_id="testUser",
///     view_name="testView")
///
/// ```
///
/// ```yaml
/// resources:
///   view:
///     type: azure-native:customerinsights:View
///     properties:
///       definition: '{\"isProfileType\":false,\"profileTypes\":[],\"widgets\":[],\"style\":[]}'
///       displayName:
///         en: some name
///       hubName: sdkTestHub
///       resourceGroupName: TestHubRG
///       userId: testUser
///       viewName: testView
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
/// $ pulumi import azure-native:customerinsights:View sdkTestHub/testView /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/views/{viewName}
/// ```
class View extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Date time when view was last modified.
  late final pulumi.Output<String> changed;
  /// Date time when view was created.
  late final pulumi.Output<String> created;
  /// View definition.
  late final pulumi.Output<String> definition;
  /// Localized display name for the view.
  late final pulumi.Output<Map<String, String>?> displayName;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// the hub name.
  late final pulumi.Output<String> tenantId;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// the user ID.
  late final pulumi.Output<String?> userId;
  /// Name of the view.
  late final pulumi.Output<String> viewName;

  /// Creates a new [View].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [View]. {@macro pulumi_customerinsights_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  View(
    String name, {
    ViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:View',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changed = registerOutput<String>('changed');
    created = registerOutput<String>('created');
    definition = registerOutput<String>('definition');
    displayName = registerOutput<Map<String, String>?>('displayName', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    userId = registerOutput<String?>('userId');
    viewName = registerOutput<String>('viewName');
  }

  /// Creates a typed reference to an existing [View] resource.
  View.reference(String urn)
    : super(
        'azure-native:customerinsights:View',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changed = registerOutput<String>('changed');
    created = registerOutput<String>('created');
    definition = registerOutput<String>('definition');
    displayName = registerOutput<Map<String, String>?>('displayName', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    userId = registerOutput<String?>('userId');
    viewName = registerOutput<String>('viewName');
  }
}
