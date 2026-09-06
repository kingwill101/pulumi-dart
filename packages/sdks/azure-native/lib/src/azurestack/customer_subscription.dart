import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_subscription_args.dart';

/// Customer subscription.
///
/// Uses Azure REST API version 2022-06-01. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2020-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestack [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a new customer subscription under a registration.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customerSubscription = new AzureNative.AzureStack.CustomerSubscription("customerSubscription", new()
///     {
///         CustomerSubscriptionName = "E09A4E93-29A7-4EBA-A6D4-76202383F07F",
///         RegistrationName = "testregistration",
///         ResourceGroup = "azurestack",
///         TenantId = "dbab3982-796f-4d03-9908-044c08aef8a2",
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
/// 		_, err := azurestack.NewCustomerSubscription(ctx, "customerSubscription", &azurestack.CustomerSubscriptionArgs{
/// 			CustomerSubscriptionName: pulumi.String("E09A4E93-29A7-4EBA-A6D4-76202383F07F"),
/// 			RegistrationName:         pulumi.String("testregistration"),
/// 			ResourceGroup:            pulumi.String("azurestack"),
/// 			TenantId:                 pulumi.String("dbab3982-796f-4d03-9908-044c08aef8a2"),
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
/// resource "azure-native_azurestack_customersubscription" "customerSubscription" {
///   customer_subscription_name = "E09A4E93-29A7-4EBA-A6D4-76202383F07F"
///   registration_name          = "testregistration"
///   resource_group             = "azurestack"
///   tenant_id                  = "dbab3982-796f-4d03-9908-044c08aef8a2"
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
/// import com.pulumi.azurenative.azurestack.CustomerSubscription;
/// import com.pulumi.azurenative.azurestack.CustomerSubscriptionArgs;
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
///         var customerSubscription = new CustomerSubscription("customerSubscription", CustomerSubscriptionArgs.builder()
///             .customerSubscriptionName("E09A4E93-29A7-4EBA-A6D4-76202383F07F")
///             .registrationName("testregistration")
///             .resourceGroup("azurestack")
///             .tenantId("dbab3982-796f-4d03-9908-044c08aef8a2")
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
/// const customerSubscription = new azure_native.azurestack.CustomerSubscription("customerSubscription", {
///     customerSubscriptionName: "E09A4E93-29A7-4EBA-A6D4-76202383F07F",
///     registrationName: "testregistration",
///     resourceGroup: "azurestack",
///     tenantId: "dbab3982-796f-4d03-9908-044c08aef8a2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// customer_subscription = azure_native.azurestack.CustomerSubscription("customerSubscription",
///     customer_subscription_name="E09A4E93-29A7-4EBA-A6D4-76202383F07F",
///     registration_name="testregistration",
///     resource_group="azurestack",
///     tenant_id="dbab3982-796f-4d03-9908-044c08aef8a2")
///
/// ```
///
/// ```yaml
/// resources:
///   customerSubscription:
///     type: azure-native:azurestack:CustomerSubscription
///     properties:
///       customerSubscriptionName: E09A4E93-29A7-4EBA-A6D4-76202383F07F
///       registrationName: testregistration
///       resourceGroup: azurestack
///       tenantId: dbab3982-796f-4d03-9908-044c08aef8a2
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
/// $ pulumi import azure-native:azurestack:CustomerSubscription myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.AzureStack/registrations/{registrationName}/customerSubscriptions/{customerSubscriptionName}
/// ```
class CustomerSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The entity tag used for optimistic concurrency when modifying the resource.
  late final pulumi.Output<String?> etag;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Tenant Id.
  late final pulumi.Output<String?> tenantId;
  /// Type of Resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CustomerSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomerSubscription]. {@macro pulumi_azurestack_customer_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomerSubscription(
    String name, {
    CustomerSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestack:CustomerSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CustomerSubscription] resource.
  CustomerSubscription.reference(String urn)
    : super(
        'azure-native:azurestack:CustomerSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
