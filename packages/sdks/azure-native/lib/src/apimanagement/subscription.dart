import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';

/// Subscription details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateSubscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscription = new AzureNative.ApiManagement.Subscription("subscription", new()
///     {
///         DisplayName = "testsub",
///         OwnerId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/57127d485157a511ace86ae7",
///         ResourceGroupName = "rg1",
///         Scope = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/5600b59475ff190048060002",
///         ServiceName = "apimService1",
///         Sid = "testsub",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewSubscription(ctx, "subscription", &apimanagement.SubscriptionArgs{
/// 			DisplayName:       pulumi.String("testsub"),
/// 			OwnerId:           pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/57127d485157a511ace86ae7"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Scope:             pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/5600b59475ff190048060002"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sid:               pulumi.String("testsub"),
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
/// resource "azure-native_apimanagement_subscription" "subscription" {
///   display_name        = "testsub"
///   owner_id            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/57127d485157a511ace86ae7"
///   resource_group_name = "rg1"
///   scope               = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/5600b59475ff190048060002"
///   service_name        = "apimService1"
///   sid                 = "testsub"
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
/// import com.pulumi.azurenative.apimanagement.Subscription;
/// import com.pulumi.azurenative.apimanagement.SubscriptionArgs;
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
///         var subscription = new Subscription("subscription", SubscriptionArgs.builder()
///             .displayName("testsub")
///             .ownerId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/57127d485157a511ace86ae7")
///             .resourceGroupName("rg1")
///             .scope("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/5600b59475ff190048060002")
///             .serviceName("apimService1")
///             .sid("testsub")
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
/// const subscription = new azure_native.apimanagement.Subscription("subscription", {
///     displayName: "testsub",
///     ownerId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/57127d485157a511ace86ae7",
///     resourceGroupName: "rg1",
///     scope: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/5600b59475ff190048060002",
///     serviceName: "apimService1",
///     sid: "testsub",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subscription = azure_native.apimanagement.Subscription("subscription",
///     display_name="testsub",
///     owner_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/57127d485157a511ace86ae7",
///     resource_group_name="rg1",
///     scope="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/5600b59475ff190048060002",
///     service_name="apimService1",
///     sid="testsub")
///
/// ```
///
/// ```yaml
/// resources:
///   subscription:
///     type: azure-native:apimanagement:Subscription
///     properties:
///       displayName: testsub
///       ownerId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/57127d485157a511ace86ae7
///       resourceGroupName: rg1
///       scope: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/products/5600b59475ff190048060002
///       serviceName: apimService1
///       sid: testsub
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
/// $ pulumi import azure-native:apimanagement:Subscription testsub /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/subscriptions/{sid}
/// ```
class Subscription extends pulumi.CustomResource {
  /// Determines whether tracing is enabled
  late final pulumi.Output<bool?> allowTracing;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Subscription creation date. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String> createdDate;
  /// The name of the subscription, or null if the subscription has no name.
  late final pulumi.Output<String?> displayName;
  /// Date when subscription was cancelled or expired. The setting is for audit purposes only and the subscription is not automatically cancelled. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String?> endDate;
  /// Subscription expiration date. The setting is for audit purposes only and the subscription is not automatically expired. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String?> expirationDate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Upcoming subscription expiration notification date. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String?> notificationDate;
  /// The user resource identifier of the subscription owner. The value is a valid relative URL in the format of /users/{userId} where {userId} is a user identifier.
  late final pulumi.Output<String?> ownerId;
  /// Subscription primary key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  late final pulumi.Output<String?> primaryKey;
  /// Scope like /products/{productId} or /apis or /apis/{apiId}.
  late final pulumi.Output<String> scope;
  /// Subscription secondary key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  late final pulumi.Output<String?> secondaryKey;
  /// Subscription activation date. The setting is for audit purposes only and the subscription is not automatically activated. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String?> startDate;
  /// Subscription state. Possible states are * active – the subscription is active, * suspended – the subscription is blocked, and the subscriber cannot call any APIs of the product, * submitted – the subscription request has been made by the developer, but has not yet been approved or rejected, * rejected – the subscription request has been denied by an administrator, * cancelled – the subscription has been cancelled by the developer or administrator, * expired – the subscription reached its expiration date and was deactivated.
  late final pulumi.Output<String> state;
  /// Optional subscription comment added by an administrator when the state is changed to the 'rejected'.
  late final pulumi.Output<String?> stateComment;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_apimanagement_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowTracing = registerOutput<bool?>('allowTracing');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    displayName = registerOutput<String?>('displayName');
    endDate = registerOutput<String?>('endDate');
    expirationDate = registerOutput<String?>('expirationDate');
    this.name = registerOutput<String>('name');
    notificationDate = registerOutput<String?>('notificationDate');
    ownerId = registerOutput<String?>('ownerId');
    primaryKey = registerOutput<String?>('primaryKey');
    scope = registerOutput<String>('scope');
    secondaryKey = registerOutput<String?>('secondaryKey');
    startDate = registerOutput<String?>('startDate');
    state = registerOutput<String>('state');
    stateComment = registerOutput<String?>('stateComment');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Subscription] resource.
  Subscription.reference(String urn)
    : super(
        'azure-native:apimanagement:Subscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowTracing = registerOutput<bool?>('allowTracing');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    displayName = registerOutput<String?>('displayName');
    endDate = registerOutput<String?>('endDate');
    expirationDate = registerOutput<String?>('expirationDate');
    this.name = registerOutput<String>('name');
    notificationDate = registerOutput<String?>('notificationDate');
    ownerId = registerOutput<String?>('ownerId');
    primaryKey = registerOutput<String?>('primaryKey');
    scope = registerOutput<String>('scope');
    secondaryKey = registerOutput<String?>('secondaryKey');
    startDate = registerOutput<String?>('startDate');
    state = registerOutput<String>('state');
    stateComment = registerOutput<String?>('stateComment');
    type = registerOutput<String>('type');
  }
}
