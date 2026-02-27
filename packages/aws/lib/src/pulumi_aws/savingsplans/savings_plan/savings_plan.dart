import 'package:pulumi/pulumi.dart' as pulumi;
import '../savings_plan_timeouts/savings_plan_timeouts.dart';
import 'savings_plan_args.dart';

/// Provides an AWS Savings Plan resource.
///
/// > **WARNING:** Savings Plans represent a financial commitment. Once a Savings Plan becomes active, it **cannot be cancelled or deleted**. Only Savings Plans in the `queued` state (scheduled for future purchase) can be deleted. Use this resource with caution.
///
/// > **Note:** Importing an active Savings Plan will add it to your Terraform state, but destroying it will only remove it from state - the actual Savings Plan will continue until its term ends.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Scheduled Purchase
///
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

  /// The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ). If not specified, the plan is purchased immediately. Plans with a future purchase time are placed in `queued` state and can be deleted before they become active.
  late final pulumi.Output<String?> purchaseTime;

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

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The duration of the term, in seconds.
  late final pulumi.Output<int> termDurationInSeconds;
  late final pulumi.Output<SavingsPlanTimeouts?> timeouts;

  /// The up-front payment amount.
  late final pulumi.Output<String?> upfrontPaymentAmount;

  SavingsPlan(
    String name, {
    SavingsPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:savingsplans/savingsPlan:SavingsPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.commitment = registerOutput<String>('commitment');
    this.currency = registerOutput<String>('currency');
    this.description = registerOutput<String>('description');
    this.ec2InstanceFamily = registerOutput<String>('ec2InstanceFamily');
    this.end = registerOutput<String>('end');
    this.offeringId = registerOutput<String>('offeringId');
    this.paymentOption = registerOutput<String>('paymentOption');
    this.productTypes = registerOutput<List<String>>('productTypes');
    this.purchaseTime = registerOutput<String?>('purchaseTime');
    this.recurringPaymentAmount =
        registerOutput<String>('recurringPaymentAmount');
    this.region = registerOutput<String>('region');
    this.returnableUntil = registerOutput<String>('returnableUntil');
    this.savingsPlanArn = registerOutput<String>('savingsPlanArn');
    this.savingsPlanId = registerOutput<String>('savingsPlanId');
    this.savingsPlanOfferingId =
        registerOutput<String>('savingsPlanOfferingId');
    this.savingsPlanType = registerOutput<String>('savingsPlanType');
    this.start = registerOutput<String>('start');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.termDurationInSeconds = registerOutput<int>('termDurationInSeconds');
    this.timeouts = registerOutput<SavingsPlanTimeouts?>('timeouts');
    this.upfrontPaymentAmount = registerOutput<String?>('upfrontPaymentAmount');
  }
}
