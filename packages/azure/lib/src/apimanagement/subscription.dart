import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';

/// Manages a Subscription within a API Management Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getService({
///     name: "example-apim",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetProduct = Promise.all([example, example]).then(([example, example1]) => azure.apimanagement.getProduct({
///     productId: "00000000-0000-0000-0000-000000000000",
///     apiManagementName: example.name,
///     resourceGroupName: example1.resourceGroupName,
/// }));
/// const exampleGetUser = Promise.all([example, example]).then(([example, example1]) => azure.apimanagement.getUser({
///     userId: "11111111-1111-1111-1111-111111111111",
///     apiManagementName: example.name,
///     resourceGroupName: example1.resourceGroupName,
/// }));
/// const exampleSubscription = new azure.apimanagement.Subscription("example", {
///     apiManagementName: example.then(example => example.name),
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     userId: exampleGetUser.then(exampleGetUser => exampleGetUser.id),
///     productId: exampleGetProduct.then(exampleGetProduct => exampleGetProduct.id),
///     displayName: "Parser API",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_service(name="example-apim",
///     resource_group_name="example-resources")
/// example_get_product = azure.apimanagement.get_product(product_id="00000000-0000-0000-0000-000000000000",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name)
/// example_get_user = azure.apimanagement.get_user(user_id="11111111-1111-1111-1111-111111111111",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name)
/// example_subscription = azure.apimanagement.Subscription("example",
///     api_management_name=example.name,
///     resource_group_name=example.resource_group_name,
///     user_id=example_get_user.id,
///     product_id=example_get_product.id,
///     display_name="Parser API")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetService.Invoke(new()
///     {
///         Name = "example-apim",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetProduct = Azure.ApiManagement.GetProduct.Invoke(new()
///     {
///         ProductId = "00000000-0000-0000-0000-000000000000",
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///     });
///
///     var exampleGetUser = Azure.ApiManagement.GetUser.Invoke(new()
///     {
///         UserId = "11111111-1111-1111-1111-111111111111",
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///     });
///
///     var exampleSubscription = new Azure.ApiManagement.Subscription("example", new()
///     {
///         ApiManagementName = example.Apply(getServiceResult => getServiceResult.Name),
///         ResourceGroupName = example.Apply(getServiceResult => getServiceResult.ResourceGroupName),
///         UserId = exampleGetUser.Apply(getUserResult => getUserResult.Id),
///         ProductId = exampleGetProduct.Apply(getProductResult => getProductResult.Id),
///         DisplayName = "Parser API",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apimanagement.LookupService(ctx, &apimanagement.LookupServiceArgs{
/// 			Name:              "example-apim",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetProduct, err := apimanagement.LookupProduct(ctx, &apimanagement.LookupProductArgs{
/// 			ProductId:         "00000000-0000-0000-0000-000000000000",
/// 			ApiManagementName: example.Name,
/// 			ResourceGroupName: example.ResourceGroupName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetUser, err := apimanagement.LookupUser(ctx, &apimanagement.LookupUserArgs{
/// 			UserId:            "11111111-1111-1111-1111-111111111111",
/// 			ApiManagementName: example.Name,
/// 			ResourceGroupName: example.ResourceGroupName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewSubscription(ctx, "example", &apimanagement.SubscriptionArgs{
/// 			ApiManagementName: pulumi.String(example.Name),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			UserId:            pulumi.String(exampleGetUser.Id),
/// 			ProductId:         pulumi.String(exampleGetProduct.Id),
/// 			DisplayName:       pulumi.String("Parser API"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetServiceArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetProductArgs;
/// import com.pulumi.azure.apimanagement.inputs.GetUserArgs;
/// import com.pulumi.azure.apimanagement.Subscription;
/// import com.pulumi.azure.apimanagement.SubscriptionArgs;
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
///         final var example = ApimanagementFunctions.getService(GetServiceArgs.builder()
///             .name("example-apim")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetProduct = ApimanagementFunctions.getProduct(GetProductArgs.builder()
///             .productId("00000000-0000-0000-0000-000000000000")
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .build());
///
///         final var exampleGetUser = ApimanagementFunctions.getUser(GetUserArgs.builder()
///             .userId("11111111-1111-1111-1111-111111111111")
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .apiManagementName(example.name())
///             .resourceGroupName(example.resourceGroupName())
///             .userId(exampleGetUser.id())
///             .productId(exampleGetProduct.id())
///             .displayName("Parser API")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSubscription:
///     type: azure:apimanagement:Subscription
///     name: example
///     properties:
///       apiManagementName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       userId: ${exampleGetUser.id}
///       productId: ${exampleGetProduct.id}
///       displayName: Parser API
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getService
///       arguments:
///         name: example-apim
///         resourceGroupName: example-resources
///   exampleGetProduct:
///     fn::invoke:
///       function: azure:apimanagement:getProduct
///       arguments:
///         productId: 00000000-0000-0000-0000-000000000000
///         apiManagementName: ${example.name}
///         resourceGroupName: ${example.resourceGroupName}
///   exampleGetUser:
///     fn::invoke:
///       function: azure:apimanagement:getUser
///       arguments:
///         userId: 11111111-1111-1111-1111-111111111111
///         apiManagementName: ${example.name}
///         resourceGroupName: ${example.resourceGroupName}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Subscriptions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/subscription:Subscription example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.ApiManagement/service/example-apim/subscriptions/subscription-name
/// ```
class Subscription extends pulumi.CustomResource {
  /// Determines whether tracing can be enabled. Defaults to `true`.
  late final pulumi.Output<bool?> allowTracing;
  /// The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `product_id` and `api_id` can be set. If both are missing `/apis` scope is used for the subscription and all apis are accessible.
  late final pulumi.Output<String?> apiId;
  /// The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The display name of this Subscription.
  late final pulumi.Output<String> displayName;
  /// The primary subscription key to use for the subscription.
  late final pulumi.Output<String> primaryKey;
  /// The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `product_id` and `api_id` can be set. If both are missing `all_apis` scope is used for the subscription.
  late final pulumi.Output<String?> productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary subscription key to use for the subscription.
  late final pulumi.Output<String> secondaryKey;
  /// The state of this Subscription. Possible values are `active`, `cancelled`, `expired`, `rejected`, `submitted` and `suspended`. Defaults to `submitted`.
  late final pulumi.Output<String?> state;
  /// An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subscriptionId;
  /// The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> userId;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_apimanagement_subscription_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowTracing = registerOutput<bool?>('allowTracing');
    this.apiId = registerOutput<String?>('apiId');
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.displayName = registerOutput<String>('displayName');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.productId = registerOutput<String?>('productId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.state = registerOutput<String?>('state');
    this.subscriptionId = registerOutput<String>('subscriptionId');
    this.userId = registerOutput<String?>('userId');
  }
}
