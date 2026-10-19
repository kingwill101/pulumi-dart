import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';
import 'subscription_scheduled_change.dart';
import 'subscription_state.dart';
import 'subscription_timeouts.dart';

/// Resource for managing an AWS Pricing Plan Manager Subscription. A subscription applies a flat-rate pricing plan, such as an [Amazon CloudFront flat-rate plan](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/flat-rate-plans.html), to a set of AWS resources: you pay a fixed recurring fee for the covered resources instead of usage-based pricing.
///
/// &gt; Destroying this resource cancels the subscription. For active paid subscriptions, AWS schedules the cancellation to take effect at the end of the current billing period, so the subscription remains visible (and billed) in AWS until that date. Subscriptions in `PENDING_APPROVAL` status (and free-tier subscriptions) are deleted immediately. If a scheduled change (such as a downgrade) is pending, it is reverted automatically before the cancellation is requested.
///
/// &gt; While a distribution is covered by a subscription, CloudFront blocks removing or replacing its web ACL and blocks deleting the distribution — including after cancellation, until the cancellation takes effect at the end of the billing cycle.
///
/// &gt; Resources must meet the plan family's eligibility requirements or `CreateSubscription` fails with a `ValidationException`. For the `CloudFront` plan family, distributions using legacy cache settings (`forwardedValues`) are rejected as not eligible — use [cache policies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html) instead.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pricingplanmanager.Subscription("example", {
///     planFamily: "CloudFront",
///     planTier: "PRO",
///     resourceArns: [
///         exampleAwsCloudfrontDistribution.arn,
///         exampleAwsWafv2WebAcl.arn,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pricingplanmanager.Subscription("example",
///     plan_family="CloudFront",
///     plan_tier="PRO",
///     resource_arns=[
///         example_aws_cloudfront_distribution["arn"],
///         example_aws_wafv2_web_acl["arn"],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.PricingPlanManager.Subscription("example", new()
///     {
///         PlanFamily = "CloudFront",
///         PlanTier = "PRO",
///         ResourceArns = new[]
///         {
///             exampleAwsCloudfrontDistribution.Arn,
///             exampleAwsWafv2WebAcl.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pricingplanmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pricingplanmanager.NewSubscription(ctx, "example", &pricingplanmanager.SubscriptionArgs{
/// 			PlanFamily: pulumi.String("CloudFront"),
/// 			PlanTier:   pulumi.String("PRO"),
/// 			ResourceArns: pulumi.StringArray{
/// 				exampleAwsCloudfrontDistribution.Arn,
/// 				exampleAwsWafv2WebAcl.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_pricingplanmanager_subscription" "example" {
///   plan_family   = "CloudFront"
///   plan_tier     = "PRO"
///   resource_arns = [exampleAwsCloudfrontDistribution.arn, exampleAwsWafv2WebAcl.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pricingplanmanager.Subscription;
/// import com.pulumi.aws.pricingplanmanager.SubscriptionArgs;
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
///         var example = new Subscription("example", SubscriptionArgs.builder()
///             .planFamily("CloudFront")
///             .planTier("PRO")
///             .resourceArns(
///                 exampleAwsCloudfrontDistribution.arn(),
///                 exampleAwsWafv2WebAcl.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pricingplanmanager:Subscription
///     properties:
///       planFamily: CloudFront
///       planTier: PRO
///       resourceArns:
///         - ${exampleAwsCloudfrontDistribution.arn}
///         - ${exampleAwsWafv2WebAcl.arn}
/// ```
///
///
/// ### Manual Approval
///
/// Paid-tier subscriptions created with `approvalMode = "MANUAL"` (the AWS default for paid tiers when `approvalMode` is not set) remain in `PENDING_APPROVAL` status, and billing does not start, until approved with a separate `ApprovePaidSubscription` API call.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pricingplanmanager.Subscription("example", {
///     approvalMode: "MANUAL",
///     planFamily: "CloudFront",
///     planTier: "BUSINESS",
///     resourceArns: [
///         exampleAwsCloudfrontDistribution.arn,
///         exampleAwsWafv2WebAcl.arn,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pricingplanmanager.Subscription("example",
///     approval_mode="MANUAL",
///     plan_family="CloudFront",
///     plan_tier="BUSINESS",
///     resource_arns=[
///         example_aws_cloudfront_distribution["arn"],
///         example_aws_wafv2_web_acl["arn"],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.PricingPlanManager.Subscription("example", new()
///     {
///         ApprovalMode = "MANUAL",
///         PlanFamily = "CloudFront",
///         PlanTier = "BUSINESS",
///         ResourceArns = new[]
///         {
///             exampleAwsCloudfrontDistribution.Arn,
///             exampleAwsWafv2WebAcl.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pricingplanmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pricingplanmanager.NewSubscription(ctx, "example", &pricingplanmanager.SubscriptionArgs{
/// 			ApprovalMode: pulumi.String("MANUAL"),
/// 			PlanFamily:   pulumi.String("CloudFront"),
/// 			PlanTier:     pulumi.String("BUSINESS"),
/// 			ResourceArns: pulumi.StringArray{
/// 				exampleAwsCloudfrontDistribution.Arn,
/// 				exampleAwsWafv2WebAcl.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_pricingplanmanager_subscription" "example" {
///   approval_mode = "MANUAL"
///   plan_family   = "CloudFront"
///   plan_tier     = "BUSINESS"
///   resource_arns = [exampleAwsCloudfrontDistribution.arn, exampleAwsWafv2WebAcl.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pricingplanmanager.Subscription;
/// import com.pulumi.aws.pricingplanmanager.SubscriptionArgs;
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
///         var example = new Subscription("example", SubscriptionArgs.builder()
///             .approvalMode("MANUAL")
///             .planFamily("CloudFront")
///             .planTier("BUSINESS")
///             .resourceArns(
///                 exampleAwsCloudfrontDistribution.arn(),
///                 exampleAwsWafv2WebAcl.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pricingplanmanager:Subscription
///     properties:
///       approvalMode: MANUAL
///       planFamily: CloudFront
///       planTier: BUSINESS
///       resourceArns:
///         - ${exampleAwsCloudfrontDistribution.arn}
///         - ${exampleAwsWafv2WebAcl.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the Pricing Plan Manager Subscription.
///
///
/// Using `pulumi import`, import Pricing Plan Manager Subscription using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:pricingplanmanager/subscription:Subscription example arn:aws:pricingplanmanager::123456789012:subscription:sub_1a2B3c4D5e6F7g8H9i0JkLmNoPq
/// ```
class Subscription extends pulumi.CustomResource {
  /// Whether the subscription requires explicit approval before billing starts. Valid values: `MANUAL`, `IMMEDIATE`. If not set, AWS defaults to `MANUAL` for paid-tier subscriptions and `IMMEDIATE` for `FREE` tier subscriptions. With `MANUAL`, paid-tier subscriptions remain in `PENDING_APPROVAL` (unbilled, and unmodifiable) until approved with a separate `ApprovePaidSubscription` API call. This value is used only at creation time and is not returned by the AWS API. Changing this argument creates a new resource.
  late final pulumi.Output<String?> approvalMode;
  /// ARN of the subscription.
  late final pulumi.Output<String> arn;
  /// Entity tag of the subscription, used by AWS for optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// Pricing plan family to subscribe to, such as `CloudFront`. Changing this argument creates a new resource.
  late final pulumi.Output<String> planFamily;
  /// Tier level for the subscription, such as `FREE`, `PRO`, `BUSINESS`, or `PREMIUM`. Upgrades take effect immediately. Downgrades are scheduled by AWS to take effect at the end of the current billing period: until then AWS keeps billing the old tier and this argument reflects the desired (scheduled) tier, with the pending change exposed in `scheduledChange`. Raising the tier again before the downgrade takes effect reverts the pending change.
  late final pulumi.Output<String> planTier;
  /// Set of ARNs of the AWS resources to include in the subscription, between 1 and 10 entries. For subscriptions in the `CloudFront` plan family, the resources must include exactly one CloudFront distribution and exactly one WAF web ACL, and can also include other supported resources such as Route 53 hosted zones (any tier) and CloudFront KeyValueStores (paid tiers only). Associated resources are protected by AWS while covered — for example, a hosted zone cannot be deleted until it is disassociated from the plan.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> resourceArns;
  /// Pending change that takes effect at the end of the current billing period, if any. See `scheduledChange` below.
  late final pulumi.Output<List<SubscriptionScheduledChange>> scheduledChanges;
  /// Current status of the subscription. Valid values: `PENDING_APPROVAL`, `ACTIVE`, `SYNC_IN_PROGRESS`, `FAILED`.
  late final pulumi.Output<String> status;
  /// Human-readable explanation of the current status, when available.
  late final pulumi.Output<String> statusReason;
  late final pulumi.Output<SubscriptionTimeouts?> timeouts;
  /// Usage level within the plan tier. Specify `DEFAULT` for the base configuration, or a higher level if the plan tier supports it. If omitted on an update, the usage level is reset to the plan tier's default.
  late final pulumi.Output<String> usageLevel;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_pricingplanmanager_subscription_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pricingplanmanager/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    approvalMode = registerOutput<String?>('approvalMode');
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    planFamily = registerOutput<String>('planFamily');
    planTier = registerOutput<String>('planTier');
    resourceArns = registerOutput<List<String>>('resourceArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scheduledChanges = registerOutput<List<SubscriptionScheduledChange>>('scheduledChanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubscriptionScheduledChange>(guardedValue, (value) => SubscriptionScheduledChange.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    timeouts = registerOutput<SubscriptionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    usageLevel = registerOutput<String>('usageLevel');
  }

  /// Gets an existing [Subscription] resource's state with the given [name] and [id].
  static Subscription get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Subscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Subscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pricingplanmanager/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalMode = registerOutput<String?>('approvalMode');
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    planFamily = registerOutput<String>('planFamily');
    planTier = registerOutput<String>('planTier');
    resourceArns = registerOutput<List<String>>('resourceArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scheduledChanges = registerOutput<List<SubscriptionScheduledChange>>('scheduledChanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubscriptionScheduledChange>(guardedValue, (value) => SubscriptionScheduledChange.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    timeouts = registerOutput<SubscriptionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    usageLevel = registerOutput<String>('usageLevel');
  }

  /// Creates a typed reference to an existing [Subscription] resource.
  Subscription.reference(String urn)
    : super(
        'aws:pricingplanmanager/subscription:Subscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approvalMode = registerOutput<String?>('approvalMode');
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    planFamily = registerOutput<String>('planFamily');
    planTier = registerOutput<String>('planTier');
    resourceArns = registerOutput<List<String>>('resourceArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scheduledChanges = registerOutput<List<SubscriptionScheduledChange>>('scheduledChanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubscriptionScheduledChange>(guardedValue, (value) => SubscriptionScheduledChange.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    timeouts = registerOutput<SubscriptionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    usageLevel = registerOutput<String>('usageLevel');
  }
}
