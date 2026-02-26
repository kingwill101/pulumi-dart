// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_rate_range.dart';
import 'google_cloud_apigee_v1_revenue_share_range.dart';
import 'google_type_money.dart';
import 'rate_plan_billing_period.dart';
import 'rate_plan_consumption_pricing_type.dart';
import 'rate_plan_payment_funding_model.dart';
import 'rate_plan_revenue_share_type.dart';
import 'rate_plan_state.dart';

/// The set of arguments for RatePlan.
class RatePlanArgs {
  /// Name of the API product that the rate plan is associated with.
  final Input<String>? apiproduct;
  final Input<String> apiproductId;

  /// Frequency at which the customer will be billed.
  final Input<RatePlanBillingPeriod>? billingPeriod;

  /// API call volume ranges and the fees charged when the total number of API calls is within a given range. The method used to calculate the final fee depends on the selected pricing model. For example, if the pricing model is `STAIRSTEP` and the ranges are defined as follows: ``` { "start": 1, "end": 100, "fee": 75 }, { "start": 101, "end": 200, "fee": 100 }, } ``` Then the following fees would be charged based on the total number of API calls (assuming the currency selected is `USD`): * 1 call costs $75 * 50 calls cost $75 * 150 calls cost $100 The number of API calls cannot exceed 200.
  final Input<List<GoogleCloudApigeeV1RateRange>>? consumptionPricingRates;

  /// Pricing model used for consumption-based charges.
  final Input<RatePlanConsumptionPricingType>? consumptionPricingType;

  /// Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.
  final Input<String>? currencyCode;

  /// Description of the rate plan.
  final Input<String>? description;

  /// Display name of the rate plan.
  final Input<String>? displayName;

  /// Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate that the rate plan should never expire.
  final Input<String>? endTime;

  /// Frequency at which the fixed fee is charged.
  final Input<int>? fixedFeeFrequency;

  /// Fixed amount that is charged at a defined interval and billed in advance of use of the API product. The fee will be prorated for the first billing period.
  final Input<GoogleTypeMoney>? fixedRecurringFee;
  final Input<String> organizationId;

  /// DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.
  final Input<RatePlanPaymentFundingModel>? paymentFundingModel;

  /// Details of the revenue sharing model.
  final Input<List<GoogleCloudApigeeV1RevenueShareRange>>? revenueShareRates;

  /// Method used to calculate the revenue that is shared with developers.
  final Input<RatePlanRevenueShareType>? revenueShareType;

  /// Initial, one-time fee paid when purchasing the API product.
  final Input<GoogleTypeMoney>? setupFee;

  /// Time when the rate plan becomes active in milliseconds since epoch.
  final Input<String>? startTime;

  /// Current state of the rate plan (draft or published).
  final Input<RatePlanState>? state;

  RatePlanArgs({
    this.apiproduct,
    required this.apiproductId,
    this.billingPeriod,
    this.consumptionPricingRates,
    this.consumptionPricingType,
    this.currencyCode,
    this.description,
    this.displayName,
    this.endTime,
    this.fixedFeeFrequency,
    this.fixedRecurringFee,
    required this.organizationId,
    this.paymentFundingModel,
    this.revenueShareRates,
    this.revenueShareType,
    this.setupFee,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiproductValue = apiproduct;
    if (apiproductValue != null) {
      map['apiproduct'] = apiproductValue;
    }
    map['apiproductId'] = apiproductId;
    final billingPeriodValue = billingPeriod;
    if (billingPeriodValue != null) {
      map['billingPeriod'] =
          Input.mapOptionalInputValue<RatePlanBillingPeriod, String>(
              billingPeriodValue, (value) => value.value);
    }
    final consumptionPricingRatesValue = consumptionPricingRates;
    if (consumptionPricingRatesValue != null) {
      map['consumptionPricingRates'] = Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1RateRange>, List<Map<String, dynamic>>>(
          consumptionPricingRatesValue,
          (value) => Input.encodeList<GoogleCloudApigeeV1RateRange,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final consumptionPricingTypeValue = consumptionPricingType;
    if (consumptionPricingTypeValue != null) {
      map['consumptionPricingType'] =
          Input.mapOptionalInputValue<RatePlanConsumptionPricingType, String>(
              consumptionPricingTypeValue, (value) => value.value);
    }
    final currencyCodeValue = currencyCode;
    if (currencyCodeValue != null) {
      map['currencyCode'] = currencyCodeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final fixedFeeFrequencyValue = fixedFeeFrequency;
    if (fixedFeeFrequencyValue != null) {
      map['fixedFeeFrequency'] = fixedFeeFrequencyValue;
    }
    final fixedRecurringFeeValue = fixedRecurringFee;
    if (fixedRecurringFeeValue != null) {
      map['fixedRecurringFee'] =
          Input.mapOptionalInputValue<GoogleTypeMoney, Map<String, dynamic>>(
              fixedRecurringFeeValue, (value) => value.toMap());
    }
    map['organizationId'] = organizationId;
    final paymentFundingModelValue = paymentFundingModel;
    if (paymentFundingModelValue != null) {
      map['paymentFundingModel'] =
          Input.mapOptionalInputValue<RatePlanPaymentFundingModel, String>(
              paymentFundingModelValue, (value) => value.value);
    }
    final revenueShareRatesValue = revenueShareRates;
    if (revenueShareRatesValue != null) {
      map['revenueShareRates'] = Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1RevenueShareRange>,
              List<Map<String, dynamic>>>(
          revenueShareRatesValue,
          (value) => Input.encodeList<GoogleCloudApigeeV1RevenueShareRange,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final revenueShareTypeValue = revenueShareType;
    if (revenueShareTypeValue != null) {
      map['revenueShareType'] =
          Input.mapOptionalInputValue<RatePlanRevenueShareType, String>(
              revenueShareTypeValue, (value) => value.value);
    }
    final setupFeeValue = setupFee;
    if (setupFeeValue != null) {
      map['setupFee'] =
          Input.mapOptionalInputValue<GoogleTypeMoney, Map<String, dynamic>>(
              setupFeeValue, (value) => value.toMap());
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<RatePlanState, String>(
          stateValue, (value) => value.value);
    }
    return map;
  }

  factory RatePlanArgs.fromMap(Map<String, dynamic> map) {
    return RatePlanArgs(
      apiproduct: Input.asOptionalInput<String>(map['apiproduct']),
      apiproductId: Input.asInput<String>(map['apiproductId']),
      billingPeriod:
          Input.asOptionalInput<RatePlanBillingPeriod>(map['billingPeriod']),
      consumptionPricingRates:
          Input.asOptionalInput<List<GoogleCloudApigeeV1RateRange>>(
              map['consumptionPricingRates']),
      consumptionPricingType:
          Input.asOptionalInput<RatePlanConsumptionPricingType>(
              map['consumptionPricingType']),
      currencyCode: Input.asOptionalInput<String>(map['currencyCode']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      endTime: Input.asOptionalInput<String>(map['endTime']),
      fixedFeeFrequency: Input.asOptionalInput<int>(map['fixedFeeFrequency']),
      fixedRecurringFee:
          Input.asOptionalInput<GoogleTypeMoney>(map['fixedRecurringFee']),
      organizationId: Input.asInput<String>(map['organizationId']),
      paymentFundingModel: Input.asOptionalInput<RatePlanPaymentFundingModel>(
          map['paymentFundingModel']),
      revenueShareRates:
          Input.asOptionalInput<List<GoogleCloudApigeeV1RevenueShareRange>>(
              map['revenueShareRates']),
      revenueShareType: Input.asOptionalInput<RatePlanRevenueShareType>(
          map['revenueShareType']),
      setupFee: Input.asOptionalInput<GoogleTypeMoney>(map['setupFee']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
      state: Input.asOptionalInput<RatePlanState>(map['state']),
    );
  }
}
