import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';

/// Manages an Alias for a Subscription - which adds an Alias to an existing Subscription, allowing it to be managed in the provider - or create a new Subscription with a new Alias.
///
/// > **NOTE:** Destroying a Subscription controlled by this resource will place the Subscription into a cancelled state. It is possible to re-activate a subscription within 90-days of cancellation, after which time the Subscription is irrevocably deleted, and the Subscription ID cannot be re-used. For further information see [here](https://docs.microsoft.com/azure/cost-management-billing/manage/cancel-azure-subscription#what-happens-after-subscription-cancellation). Users can optionally delete a Subscription once 72 hours have passed, however, this functionality is not suitable for this provider. A `Deleted` subscription cannot be reactivated.
///
/// > **NOTE:** It is not possible to destroy (cancel) a subscription if it contains resources. If resources are present that are not managed by the provider then these will need to be removed before the Subscription can be destroyed.
///
/// > **Note:** This resource will automatically attempt to cancel a subscription when it is deleted. This behavior can be disabled in the provider `features` block by setting the `prevent_cancellation_on_destroy` field to `true` within the `subscription` block.
///
/// > **NOTE:** Azure supports Multiple Aliases per Subscription, however, to reliably manage this resource in Terraform only a single Alias is supported.
///
/// > **NOTE:** Subscription Aliases have their own RBAC scope, separate from the underlying Subscription. If an Alias already exists and the Service Principal lacks read/write permissions on that Alias, you may encounter a `401 Unauthorized` error. To resolve this, the Alias creator or a Global Administrator must assign the `Owner` role on the Alias scope to the Service Principal. Global Administrators may need to [elevate access](https://learn.microsoft.com/en-us/azure/role-based-access-control/elevate-access-global-admin) to gain visibility over all subscriptions before performing the role assignment.
///
/// > **NOTE:** When using this resource across tenants the `client_id` and `tenant_id` of the `provider` config block should be for the home tenant details for the SPN / User or a permissions error will likely be encountered. See [the official documentation](https://learn.microsoft.com/en-us/azure/cost-management-billing/manage/programmatically-create-subscription) for more details.
///
/// ## Example Usage
///
/// ### Creating A New Alias And Subscription For An Enrollment Account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.billing.getEnrollmentAccountScope({
///     billingAccountName: "1234567890",
///     enrollmentAccountName: "0123456",
/// });
/// const exampleSubscription = new azure.core.Subscription("example", {
///     subscriptionName: "My Example EA Subscription",
///     billingScopeId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.billing.get_enrollment_account_scope(billing_account_name="1234567890",
///     enrollment_account_name="0123456")
/// example_subscription = azure.core.Subscription("example",
///     subscription_name="My Example EA Subscription",
///     billing_scope_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Billing.GetEnrollmentAccountScope.Invoke(new()
///     {
///         BillingAccountName = "1234567890",
///         EnrollmentAccountName = "0123456",
///     });
///
///     var exampleSubscription = new Azure.Core.Subscription("example", new()
///     {
///         SubscriptionName = "My Example EA Subscription",
///         BillingScopeId = example.Apply(getEnrollmentAccountScopeResult => getEnrollmentAccountScopeResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/billing"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := billing.GetEnrollmentAccountScope(ctx, &billing.GetEnrollmentAccountScopeArgs{
/// 			BillingAccountName:    "1234567890",
/// 			EnrollmentAccountName: "0123456",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewSubscription(ctx, "example", &core.SubscriptionArgs{
/// 			SubscriptionName: pulumi.String("My Example EA Subscription"),
/// 			BillingScopeId:   pulumi.String(example.Id),
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
/// import com.pulumi.azure.billing.BillingFunctions;
/// import com.pulumi.azure.billing.inputs.GetEnrollmentAccountScopeArgs;
/// import com.pulumi.azure.core.Subscription;
/// import com.pulumi.azure.core.SubscriptionArgs;
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
///         final var example = BillingFunctions.getEnrollmentAccountScope(GetEnrollmentAccountScopeArgs.builder()
///             .billingAccountName("1234567890")
///             .enrollmentAccountName("0123456")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .subscriptionName("My Example EA Subscription")
///             .billingScopeId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSubscription:
///     type: azure:core:Subscription
///     name: example
///     properties:
///       subscriptionName: My Example EA Subscription
///       billingScopeId: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:billing:getEnrollmentAccountScope
///       arguments:
///         billingAccountName: '1234567890'
///         enrollmentAccountName: '0123456'
/// ```
///
///
/// ### Creating A New Alias And Subscription For A Microsoft Customer Account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.billing.getMcaAccountScope({
///     billingAccountName: "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///     billingProfileName: "PE2Q-NOIT-BG7-TGB",
///     invoiceSectionName: "MTT4-OBS7-PJA-TGB",
/// });
/// const exampleSubscription = new azure.core.Subscription("example", {
///     subscriptionName: "My Example MCA Subscription",
///     billingScopeId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.billing.get_mca_account_scope(billing_account_name="e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///     billing_profile_name="PE2Q-NOIT-BG7-TGB",
///     invoice_section_name="MTT4-OBS7-PJA-TGB")
/// example_subscription = azure.core.Subscription("example",
///     subscription_name="My Example MCA Subscription",
///     billing_scope_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Billing.GetMcaAccountScope.Invoke(new()
///     {
///         BillingAccountName = "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///         BillingProfileName = "PE2Q-NOIT-BG7-TGB",
///         InvoiceSectionName = "MTT4-OBS7-PJA-TGB",
///     });
///
///     var exampleSubscription = new Azure.Core.Subscription("example", new()
///     {
///         SubscriptionName = "My Example MCA Subscription",
///         BillingScopeId = example.Apply(getMcaAccountScopeResult => getMcaAccountScopeResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/billing"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := billing.GetMcaAccountScope(ctx, &billing.GetMcaAccountScopeArgs{
/// 			BillingAccountName: "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
/// 			BillingProfileName: "PE2Q-NOIT-BG7-TGB",
/// 			InvoiceSectionName: "MTT4-OBS7-PJA-TGB",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewSubscription(ctx, "example", &core.SubscriptionArgs{
/// 			SubscriptionName: pulumi.String("My Example MCA Subscription"),
/// 			BillingScopeId:   pulumi.String(example.Id),
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
/// import com.pulumi.azure.billing.BillingFunctions;
/// import com.pulumi.azure.billing.inputs.GetMcaAccountScopeArgs;
/// import com.pulumi.azure.core.Subscription;
/// import com.pulumi.azure.core.SubscriptionArgs;
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
///         final var example = BillingFunctions.getMcaAccountScope(GetMcaAccountScopeArgs.builder()
///             .billingAccountName("e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31")
///             .billingProfileName("PE2Q-NOIT-BG7-TGB")
///             .invoiceSectionName("MTT4-OBS7-PJA-TGB")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .subscriptionName("My Example MCA Subscription")
///             .billingScopeId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSubscription:
///     type: azure:core:Subscription
///     name: example
///     properties:
///       subscriptionName: My Example MCA Subscription
///       billingScopeId: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:billing:getMcaAccountScope
///       arguments:
///         billingAccountName: e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31
///         billingProfileName: PE2Q-NOIT-BG7-TGB
///         invoiceSectionName: MTT4-OBS7-PJA-TGB
/// ```
///
///
/// ### Creating A New Alias And Subscription For A Microsoft Partner Account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.billing.getMpaAccountScope({
///     billingAccountName: "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///     customerName: "2281f543-7321-4cf9-1e23-edb4Oc31a31c",
/// });
/// const exampleSubscription = new azure.core.Subscription("example", {
///     subscriptionName: "My Example MPA Subscription",
///     billingScopeId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.billing.get_mpa_account_scope(billing_account_name="e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///     customer_name="2281f543-7321-4cf9-1e23-edb4Oc31a31c")
/// example_subscription = azure.core.Subscription("example",
///     subscription_name="My Example MPA Subscription",
///     billing_scope_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Billing.GetMpaAccountScope.Invoke(new()
///     {
///         BillingAccountName = "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
///         CustomerName = "2281f543-7321-4cf9-1e23-edb4Oc31a31c",
///     });
///
///     var exampleSubscription = new Azure.Core.Subscription("example", new()
///     {
///         SubscriptionName = "My Example MPA Subscription",
///         BillingScopeId = example.Apply(getMpaAccountScopeResult => getMpaAccountScopeResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/billing"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := billing.GetMpaAccountScope(ctx, &billing.GetMpaAccountScopeArgs{
/// 			BillingAccountName: "e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31",
/// 			CustomerName:       "2281f543-7321-4cf9-1e23-edb4Oc31a31c",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewSubscription(ctx, "example", &core.SubscriptionArgs{
/// 			SubscriptionName: pulumi.String("My Example MPA Subscription"),
/// 			BillingScopeId:   pulumi.String(example.Id),
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
/// import com.pulumi.azure.billing.BillingFunctions;
/// import com.pulumi.azure.billing.inputs.GetMpaAccountScopeArgs;
/// import com.pulumi.azure.core.Subscription;
/// import com.pulumi.azure.core.SubscriptionArgs;
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
///         final var example = BillingFunctions.getMpaAccountScope(GetMpaAccountScopeArgs.builder()
///             .billingAccountName("e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31")
///             .customerName("2281f543-7321-4cf9-1e23-edb4Oc31a31c")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .subscriptionName("My Example MPA Subscription")
///             .billingScopeId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSubscription:
///     type: azure:core:Subscription
///     name: example
///     properties:
///       subscriptionName: My Example MPA Subscription
///       billingScopeId: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:billing:getMpaAccountScope
///       arguments:
///         billingAccountName: e879cf0f-2b4d-5431-109a-f72fc9868693:024cabf4-7321-4cf9-be59-df0c77ca51de_2019-05-31
///         customerName: 2281f543-7321-4cf9-1e23-edb4Oc31a31c
/// ```
///
///
/// ### Adding An Alias To An Existing Subscription
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.Subscription("example", {
///     alias: "examplesub",
///     subscriptionName: "My Example Subscription",
///     subscriptionId: "12345678-12234-5678-9012-123456789012",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.Subscription("example",
///     alias="examplesub",
///     subscription_name="My Example Subscription",
///     subscription_id="12345678-12234-5678-9012-123456789012")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.Subscription("example", new()
///     {
///         Alias = "examplesub",
///         SubscriptionName = "My Example Subscription",
///         SubscriptionId = "12345678-12234-5678-9012-123456789012",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewSubscription(ctx, "example", &core.SubscriptionArgs{
/// 			Alias:            pulumi.String("examplesub"),
/// 			SubscriptionName: pulumi.String("My Example Subscription"),
/// 			SubscriptionId:   pulumi.String("12345678-12234-5678-9012-123456789012"),
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
/// import com.pulumi.azure.core.Subscription;
/// import com.pulumi.azure.core.SubscriptionArgs;
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
///         var example = new Subscription("example", SubscriptionArgs.builder()
///             .alias("examplesub")
///             .subscriptionName("My Example Subscription")
///             .subscriptionId("12345678-12234-5678-9012-123456789012")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:Subscription
///     properties:
///       alias: examplesub
///       subscriptionName: My Example Subscription
///       subscriptionId: 12345678-12234-5678-9012-123456789012
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Resources` - 2023-07-01
///
/// ## Import
///
/// Subscriptions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/subscription:Subscription example "/providers/Microsoft.Subscription/aliases/subscription1"
/// ```
///
/// !> **Note:** When importing a Subscription that was not created programmatically, either via this resource or using the Alias API, it will have no Alias ID to import via `pulumi import`. In this scenario, the `subscription_id` property can be completed and the resource will assume control of the existing subscription by creating an Alias. See the `adding an Alias to an existing Subscription` above. An alias is required to correctly manage Subscription resources due to Azure Subscription API design.
class Subscription extends pulumi.CustomResource {
  /// The Alias name for the subscription. This provider will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created.
  late final pulumi.Output<String> alias;
  /// The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID.
  late final pulumi.Output<String?> billingScopeId;
  /// The ID of the Subscription. Changing this forces a new Subscription to be created.
  ///
  /// > **NOTE:** This value can be specified only for adopting control of an existing Subscription, it cannot be used to provide a custom Subscription ID.
  ///
  /// > **NOTE:** Either `billing_scope_id` or `subscription_id` has to be specified.
  late final pulumi.Output<String> subscriptionId;
  /// The Name of the Subscription. This is the Display Name in the portal.
  late final pulumi.Output<String> subscriptionName;
  /// A mapping of tags to assign to the Subscription.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Tenant to which the subscription belongs.
  late final pulumi.Output<String> tenantId;
  /// The workload type of the Subscription. Possible values are `Production` (default) and `DevTest`. Changing this forces a new Subscription to be created.
  late final pulumi.Output<String?> workload;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_core_subscription_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.billingScopeId = registerOutput<String?>('billingScopeId');
    this.subscriptionId = registerOutput<String>('subscriptionId');
    this.subscriptionName = registerOutput<String>('subscriptionName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.workload = registerOutput<String?>('workload');
  }
}
