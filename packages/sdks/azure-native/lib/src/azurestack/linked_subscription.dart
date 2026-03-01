import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_subscription_args.dart';
import 'system_data_response.dart';

/// Linked Subscription information.
///
/// Uses Azure REST API version 2020-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Linked Subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedSubscription = new AzureNative.AzureStack.LinkedSubscription("linkedSubscription", new()
///     {
///         LinkedSubscriptionId = "104fbb77-2b0e-476a-83de-65ad8acd1f0b",
///         LinkedSubscriptionName = "testLinkedSubscription",
///         Location = "eastus",
///         RegistrationResourceId = "/subscriptions/dd8597b4-8739-4467-8b10-f8679f62bfbf/resourceGroups/azurestack/providers/Microsoft.AzureStack/registrations/testRegistration",
///         ResourceGroup = "azurestack",
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
/// 	azurestack "github.com/pulumi/pulumi-azure-native-sdk/azurestack/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestack.NewLinkedSubscription(ctx, "linkedSubscription", &azurestack.LinkedSubscriptionArgs{
/// 			LinkedSubscriptionId:   pulumi.String("104fbb77-2b0e-476a-83de-65ad8acd1f0b"),
/// 			LinkedSubscriptionName: pulumi.String("testLinkedSubscription"),
/// 			Location:               pulumi.String("eastus"),
/// 			RegistrationResourceId: pulumi.String("/subscriptions/dd8597b4-8739-4467-8b10-f8679f62bfbf/resourceGroups/azurestack/providers/Microsoft.AzureStack/registrations/testRegistration"),
/// 			ResourceGroup:          pulumi.String("azurestack"),
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
/// import com.pulumi.azurenative.azurestack.LinkedSubscription;
/// import com.pulumi.azurenative.azurestack.LinkedSubscriptionArgs;
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
///         var linkedSubscription = new LinkedSubscription("linkedSubscription", LinkedSubscriptionArgs.builder()
///             .linkedSubscriptionId("104fbb77-2b0e-476a-83de-65ad8acd1f0b")
///             .linkedSubscriptionName("testLinkedSubscription")
///             .location("eastus")
///             .registrationResourceId("/subscriptions/dd8597b4-8739-4467-8b10-f8679f62bfbf/resourceGroups/azurestack/providers/Microsoft.AzureStack/registrations/testRegistration")
///             .resourceGroup("azurestack")
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
/// const linkedSubscription = new azure_native.azurestack.LinkedSubscription("linkedSubscription", {
///     linkedSubscriptionId: "104fbb77-2b0e-476a-83de-65ad8acd1f0b",
///     linkedSubscriptionName: "testLinkedSubscription",
///     location: "eastus",
///     registrationResourceId: "/subscriptions/dd8597b4-8739-4467-8b10-f8679f62bfbf/resourceGroups/azurestack/providers/Microsoft.AzureStack/registrations/testRegistration",
///     resourceGroup: "azurestack",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_subscription = azure_native.azurestack.LinkedSubscription("linkedSubscription",
///     linked_subscription_id="104fbb77-2b0e-476a-83de-65ad8acd1f0b",
///     linked_subscription_name="testLinkedSubscription",
///     location="eastus",
///     registration_resource_id="/subscriptions/dd8597b4-8739-4467-8b10-f8679f62bfbf/resourceGroups/azurestack/providers/Microsoft.AzureStack/registrations/testRegistration",
///     resource_group="azurestack")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedSubscription:
///     type: azure-native:azurestack:LinkedSubscription
///     properties:
///       linkedSubscriptionId: 104fbb77-2b0e-476a-83de-65ad8acd1f0b
///       linkedSubscriptionName: testLinkedSubscription
///       location: eastus
///       registrationResourceId: /subscriptions/dd8597b4-8739-4467-8b10-f8679f62bfbf/resourceGroups/azurestack/providers/Microsoft.AzureStack/registrations/testRegistration
///       resourceGroup: azurestack
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
/// $ pulumi import azure-native:azurestack:LinkedSubscription testLinkedSubscription /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.AzureStack/linkedSubscriptions/{linkedSubscriptionName}
/// ```
class LinkedSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The status of the remote management connection of the Azure Stack device.
  late final pulumi.Output<String> deviceConnectionStatus;
  /// The identifier of the Azure Stack device for remote management.
  late final pulumi.Output<String> deviceId;
  /// The connection state of the Azure Stack device.
  late final pulumi.Output<String> deviceLinkState;
  /// The object identifier associated with the Azure Stack device connecting to Azure.
  late final pulumi.Output<String> deviceObjectId;
  /// The entity tag used for optimistic concurrency when modifying the resource.
  late final pulumi.Output<String?> etag;
  /// The kind of the resource.
  late final pulumi.Output<String> kind;
  /// The last remote management connection time for the Azure Stack device connected to the linked subscription resource.
  late final pulumi.Output<String> lastConnectedTime;
  /// The identifier associated with the device subscription.
  late final pulumi.Output<String?> linkedSubscriptionId;
  /// Location of the resource.
  late final pulumi.Output<String> location;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// The identifier associated with the device registration.
  late final pulumi.Output<String?> registrationResourceId;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Custom tags for the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of Resource.
  late final pulumi.Output<String> type;

  /// Creates a new [LinkedSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedSubscription]. {@macro pulumi_azurestack_linked_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedSubscription(
    String name, {
    LinkedSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestack:LinkedSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.deviceConnectionStatus = registerOutput<String>('deviceConnectionStatus');
    this.deviceId = registerOutput<String>('deviceId');
    this.deviceLinkState = registerOutput<String>('deviceLinkState');
    this.deviceObjectId = registerOutput<String>('deviceObjectId');
    this.etag = registerOutput<String?>('etag');
    this.kind = registerOutput<String>('kind');
    this.lastConnectedTime = registerOutput<String>('lastConnectedTime');
    this.linkedSubscriptionId = registerOutput<String?>('linkedSubscriptionId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.registrationResourceId = registerOutput<String?>('registrationResourceId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
