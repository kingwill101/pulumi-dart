import 'package:pulumi/pulumi.dart' as pulumi;
import 'savings_plan_args.dart';
import 'savings_plan_state.dart';
import 'savings_plan_timeouts.dart';

/// Provides an AWS Savings Plan resource.
///
/// &gt; Savings Plans represent a financial commitment. Once a Savings Plan becomes active, it **cannot be cancelled or deleted**. Only Savings Plans in the `queued` state (scheduled for future purchase) can be deleted. Use this resource with caution.
///
/// &gt; Importing an active Savings Plan will add it to your Terraform state, but destroying it will only remove it from state - the actual Savings Plan will continue until its term ends.
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
/// const example = new aws.savingsplans.SavingsPlan("example", {
///     savingsPlanOfferingId: "00000000-0000-0000-0000-000000000000",
///     commitment: "1.0",
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.savingsplans.SavingsPlan("example",
///     savings_plan_offering_id="00000000-0000-0000-0000-000000000000",
///     commitment="1.0",
///     tags={
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SavingsPlans.SavingsPlan("example", new()
///     {
///         SavingsPlanOfferingId = "00000000-0000-0000-0000-000000000000",
///         Commitment = "1.0",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/savingsplans"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := savingsplans.NewSavingsPlan(ctx, "example", &savingsplans.SavingsPlanArgs{
/// 			SavingsPlanOfferingId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Commitment:            pulumi.String("1.0"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
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
/// resource "aws_savingsplans_savingsplan" "example" {
///   savings_plan_offering_id = "00000000-0000-0000-0000-000000000000"
///   commitment               = "1.0"
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.savingsplans.SavingsPlan;
/// import com.pulumi.aws.savingsplans.SavingsPlanArgs;
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
///         var example = new SavingsPlan("example", SavingsPlanArgs.builder()
///             .savingsPlanOfferingId("00000000-0000-0000-0000-000000000000")
///             .commitment("1.0")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:savingsplans:SavingsPlan
///     properties:
///       savingsPlanOfferingId: 00000000-0000-0000-0000-000000000000
///       commitment: '1.0'
///       tags:
///         Environment: production
/// ```
///
///
/// ### Scheduled Purchase
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const scheduled = new aws.savingsplans.SavingsPlan("scheduled", {
///     savingsPlanOfferingId: "00000000-0000-0000-0000-000000000000",
///     commitment: "5.0",
///     purchaseTime: "2026-12-01T00:00:00Z",
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// scheduled = aws.savingsplans.SavingsPlan("scheduled",
///     savings_plan_offering_id="00000000-0000-0000-0000-000000000000",
///     commitment="5.0",
///     purchase_time="2026-12-01T00:00:00Z",
///     tags={
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduled = new Aws.SavingsPlans.SavingsPlan("scheduled", new()
///     {
///         SavingsPlanOfferingId = "00000000-0000-0000-0000-000000000000",
///         Commitment = "5.0",
///         PurchaseTime = "2026-12-01T00:00:00Z",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/savingsplans"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := savingsplans.NewSavingsPlan(ctx, "scheduled", &savingsplans.SavingsPlanArgs{
/// 			SavingsPlanOfferingId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Commitment:            pulumi.String("5.0"),
/// 			PurchaseTime:          pulumi.String("2026-12-01T00:00:00Z"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
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
/// resource "aws_savingsplans_savingsplan" "scheduled" {
///   savings_plan_offering_id = "00000000-0000-0000-0000-000000000000"
///   commitment               = "5.0"
///   purchase_time            = "2026-12-01T00:00:00Z"
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.savingsplans.SavingsPlan;
/// import com.pulumi.aws.savingsplans.SavingsPlanArgs;
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
///         var scheduled = new SavingsPlan("scheduled", SavingsPlanArgs.builder()
///             .savingsPlanOfferingId("00000000-0000-0000-0000-000000000000")
///             .commitment("5.0")
///             .purchaseTime("2026-12-01T00:00:00Z")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   scheduled:
///     type: aws:savingsplans:SavingsPlan
///     properties:
///       savingsPlanOfferingId: 00000000-0000-0000-0000-000000000000
///       commitment: '5.0'
///       purchaseTime: 2026-12-01T00:00:00Z
///       tags:
///         Environment: production
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Savings Plans using the `id`. For example:
///
///
/// Using `terraform state mv`, import Savings Plans using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:savingsplans/savingsPlan:SavingsPlan example sp-12345678901234567
/// ```
class SavingsPlan extends pulumi.CustomResource {
  /// The hourly commitment, in USD. This is the amount you commit to pay per hour, regardless of actual usage.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> commitment;
  /// The currency of the Savings Plan (e.g., `USD`).
  late final pulumi.Output<String> currency;
  /// The description.
  late final pulumi.Output<String> description;
  /// The EC2 instance family for the Savings Plan (only applicable to EC2 Instance Savings Plans).
  late final pulumi.Output<String> ec2InstanceFamily;
  /// The end time of the Savings Plan in RFC3339 format.
  late final pulumi.Output<String> end;
  /// The ID of the offering.
  late final pulumi.Output<String> offeringId;
  /// The payment option for the Savings Plan (e.g., `All Upfront`, `Partial Upfront`, `No Upfront`).
  late final pulumi.Output<String> paymentOption;
  /// The product types.
  late final pulumi.Output<List<String>> productTypes;
  /// The time at which to purchase the Savings Plan, in UTC format (`YYYY-MM-DDTHH:MM:SSZ`). If not specified, the plan is purchased immediately. Plans with a future purchase time are placed in `queued` state and can be deleted before they become active.
  late final pulumi.Output<String> purchaseTime;
  /// The recurring payment amount.
  late final pulumi.Output<String> recurringPaymentAmount;
  /// The AWS Region.
  late final pulumi.Output<String> region;
  /// The recurring payment amount.
  late final pulumi.Output<String> returnableUntil;
  /// The ARN of the Savings Plan.
  late final pulumi.Output<String> savingsPlanArn;
  /// The ID of the Savings Plan.
  late final pulumi.Output<String> savingsPlanId;
  /// The unique ID of a Savings Plan offering. You can find available offerings using the `aws savingsplans describe-savings-plans-offerings` CLI command.
  late final pulumi.Output<String> savingsPlanOfferingId;
  /// The type of Savings Plan (e.g., `Compute`, `EC2Instance`).
  late final pulumi.Output<String> savingsPlanType;
  /// The start time of the Savings Plan in RFC3339 format.
  late final pulumi.Output<String> start;
  /// The current state of the Savings Plan (e.g., `active`, `queued`, `retired`).
  late final pulumi.Output<String> state;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The duration of the term, in seconds.
  late final pulumi.Output<int> termDurationInSeconds;
  late final pulumi.Output<SavingsPlanTimeouts?> timeouts;
  /// The up-front payment amount. Required for offerings with an `All Upfront` or `Partial Upfront` payment option. Must be omitted for `No Upfront` offerings.
  late final pulumi.Output<String> upfrontPaymentAmount;

  /// Creates a new [SavingsPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SavingsPlan]. {@macro pulumi_savingsplans_savings_plan_savings_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SavingsPlan(
    String name, {
    SavingsPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:savingsplans/savingsPlan:SavingsPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    commitment = registerOutput<String>('commitment');
    currency = registerOutput<String>('currency');
    description = registerOutput<String>('description');
    ec2InstanceFamily = registerOutput<String>('ec2InstanceFamily');
    end = registerOutput<String>('end');
    offeringId = registerOutput<String>('offeringId');
    paymentOption = registerOutput<String>('paymentOption');
    productTypes = registerOutput<List<String>>('productTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    purchaseTime = registerOutput<String>('purchaseTime');
    recurringPaymentAmount = registerOutput<String>('recurringPaymentAmount');
    region = registerOutput<String>('region');
    returnableUntil = registerOutput<String>('returnableUntil');
    savingsPlanArn = registerOutput<String>('savingsPlanArn');
    savingsPlanId = registerOutput<String>('savingsPlanId');
    savingsPlanOfferingId = registerOutput<String>('savingsPlanOfferingId');
    savingsPlanType = registerOutput<String>('savingsPlanType');
    start = registerOutput<String>('start');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    termDurationInSeconds = registerOutput<int>('termDurationInSeconds');
    timeouts = registerOutput<SavingsPlanTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavingsPlanTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    upfrontPaymentAmount = registerOutput<String>('upfrontPaymentAmount');
  }

  /// Gets an existing [SavingsPlan] resource's state with the given [name] and [id].
  static SavingsPlan get(
    String name,
    pulumi.Input<String> id, {
    SavingsPlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SavingsPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SavingsPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:savingsplans/savingsPlan:SavingsPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    commitment = registerOutput<String>('commitment');
    currency = registerOutput<String>('currency');
    description = registerOutput<String>('description');
    ec2InstanceFamily = registerOutput<String>('ec2InstanceFamily');
    end = registerOutput<String>('end');
    offeringId = registerOutput<String>('offeringId');
    paymentOption = registerOutput<String>('paymentOption');
    productTypes = registerOutput<List<String>>('productTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    purchaseTime = registerOutput<String>('purchaseTime');
    recurringPaymentAmount = registerOutput<String>('recurringPaymentAmount');
    region = registerOutput<String>('region');
    returnableUntil = registerOutput<String>('returnableUntil');
    savingsPlanArn = registerOutput<String>('savingsPlanArn');
    savingsPlanId = registerOutput<String>('savingsPlanId');
    savingsPlanOfferingId = registerOutput<String>('savingsPlanOfferingId');
    savingsPlanType = registerOutput<String>('savingsPlanType');
    start = registerOutput<String>('start');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    termDurationInSeconds = registerOutput<int>('termDurationInSeconds');
    timeouts = registerOutput<SavingsPlanTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavingsPlanTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    upfrontPaymentAmount = registerOutput<String>('upfrontPaymentAmount');
  }

  /// Creates a typed reference to an existing [SavingsPlan] resource.
  SavingsPlan.reference(String urn)
    : super(
        'aws:savingsplans/savingsPlan:SavingsPlan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    commitment = registerOutput<String>('commitment');
    currency = registerOutput<String>('currency');
    description = registerOutput<String>('description');
    ec2InstanceFamily = registerOutput<String>('ec2InstanceFamily');
    end = registerOutput<String>('end');
    offeringId = registerOutput<String>('offeringId');
    paymentOption = registerOutput<String>('paymentOption');
    productTypes = registerOutput<List<String>>('productTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    purchaseTime = registerOutput<String>('purchaseTime');
    recurringPaymentAmount = registerOutput<String>('recurringPaymentAmount');
    region = registerOutput<String>('region');
    returnableUntil = registerOutput<String>('returnableUntil');
    savingsPlanArn = registerOutput<String>('savingsPlanArn');
    savingsPlanId = registerOutput<String>('savingsPlanId');
    savingsPlanOfferingId = registerOutput<String>('savingsPlanOfferingId');
    savingsPlanType = registerOutput<String>('savingsPlanType');
    start = registerOutput<String>('start');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    termDurationInSeconds = registerOutput<int>('termDurationInSeconds');
    timeouts = registerOutput<SavingsPlanTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SavingsPlanTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    upfrontPaymentAmount = registerOutput<String>('upfrontPaymentAmount');
  }
}
