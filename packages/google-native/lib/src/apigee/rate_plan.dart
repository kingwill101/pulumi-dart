import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_rate_range_response.dart';
import 'google_cloud_apigee_v1_revenue_share_range_response.dart';
import 'google_type_money_response.dart';
import 'rate_plan_args.dart';

/// Create a rate plan that is associated with an API product in an organization. Using rate plans, API product owners can monetize their API products by configuring one or more of the following: - Billing frequency - Initial setup fees for using an API product - Payment funding model (postpaid only) - Fixed recurring or consumption-based charges for using an API product - Revenue sharing with developer partners An API product can have multiple rate plans associated with it but *only one* rate plan can be active at any point of time. **Note: From the developer's perspective, they purchase API products not rate plans.
/// Auto-naming is currently not supported for this resource.
class RatePlan extends pulumi.CustomResource {
  /// Name of the API product that the rate plan is associated with.
  late final pulumi.Output<String> apiproduct;
  late final pulumi.Output<String> apiproductId;

  /// Frequency at which the customer will be billed.
  late final pulumi.Output<String> billingPeriod;

  /// API call volume ranges and the fees charged when the total number of API calls is within a given range. The method used to calculate the final fee depends on the selected pricing model. For example, if the pricing model is `STAIRSTEP` and the ranges are defined as follows: ``` { "start": 1, "end": 100, "fee": 75 }, { "start": 101, "end": 200, "fee": 100 }, } ``` Then the following fees would be charged based on the total number of API calls (assuming the currency selected is `USD`): * 1 call costs $75 * 50 calls cost $75 * 150 calls cost $100 The number of API calls cannot exceed 200.
  late final pulumi.Output<List<GoogleCloudApigeeV1RateRangeResponse>>
      consumptionPricingRates;

  /// Pricing model used for consumption-based charges.
  late final pulumi.Output<String> consumptionPricingType;

  /// Time that the rate plan was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.
  late final pulumi.Output<String> currencyCode;

  /// Description of the rate plan.
  late final pulumi.Output<String> description;

  /// Display name of the rate plan.
  late final pulumi.Output<String> displayName;

  /// Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate that the rate plan should never expire.
  late final pulumi.Output<String> endTime;

  /// Frequency at which the fixed fee is charged.
  late final pulumi.Output<int> fixedFeeFrequency;

  /// Fixed amount that is charged at a defined interval and billed in advance of use of the API product. The fee will be prorated for the first billing period.
  late final pulumi.Output<GoogleTypeMoneyResponse> fixedRecurringFee;

  /// Time the rate plan was last modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Name of the rate plan.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.
  late final pulumi.Output<String> paymentFundingModel;

  /// Details of the revenue sharing model.
  late final pulumi.Output<List<GoogleCloudApigeeV1RevenueShareRangeResponse>>
      revenueShareRates;

  /// Method used to calculate the revenue that is shared with developers.
  late final pulumi.Output<String> revenueShareType;

  /// Initial, one-time fee paid when purchasing the API product.
  late final pulumi.Output<GoogleTypeMoneyResponse> setupFee;

  /// Time when the rate plan becomes active in milliseconds since epoch.
  late final pulumi.Output<String> startTime;

  /// Current state of the rate plan (draft or published).
  late final pulumi.Output<String> state;

  /// Creates a new [RatePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RatePlan]. {@macro pulumi_apigee_v1_rate_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RatePlan(
    String name, {
    RatePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:RatePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiproduct = registerOutput<String>('apiproduct');
    this.apiproductId = registerOutput<String>('apiproductId');
    this.billingPeriod = registerOutput<String>('billingPeriod');
    this.consumptionPricingRates =
        registerOutput<List<GoogleCloudApigeeV1RateRangeResponse>>(
            'consumptionPricingRates');
    this.consumptionPricingType =
        registerOutput<String>('consumptionPricingType');
    this.createdAt = registerOutput<String>('createdAt');
    this.currencyCode = registerOutput<String>('currencyCode');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.endTime = registerOutput<String>('endTime');
    this.fixedFeeFrequency = registerOutput<int>('fixedFeeFrequency');
    this.fixedRecurringFee =
        registerOutput<GoogleTypeMoneyResponse>('fixedRecurringFee');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.paymentFundingModel = registerOutput<String>('paymentFundingModel');
    this.revenueShareRates =
        registerOutput<List<GoogleCloudApigeeV1RevenueShareRangeResponse>>(
            'revenueShareRates');
    this.revenueShareType = registerOutput<String>('revenueShareType');
    this.setupFee = registerOutput<GoogleTypeMoneyResponse>('setupFee');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
  }
}
