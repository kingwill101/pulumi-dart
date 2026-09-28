// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetFilterExpressionNotNotDimensions {
  /// Dimension to filter on. Valid values include `AZ`, `INSTANCE_TYPE`, `LINKED_ACCOUNT`, `OPERATION`, `PURCHASE_TYPE`, `REGION`, `SERVICE`, `USAGE_TYPE`, `USAGE_TYPE_GROUP`, `RECORD_TYPE`, `OPERATING_SYSTEM`, `TENANCY`, `SCOPE`, `PLATFORM`, `SUBSCRIPTION_ID`, `LEGAL_ENTITY_NAME`, `DEPLOYMENT_OPTION`, `DATABASE_ENGINE`, `CACHE_ENGINE`, `INSTANCE_TYPE_FAMILY`, `BILLING_ENTITY`, `RESERVATION_ID`, `RESOURCE_ID`, `RIGHTSIZING_TYPE`, `SAVINGS_PLANS_TYPE`, `SAVINGS_PLAN_ARN`, `PAYMENT_OPTION`, and `AGREEMENT_END_DATE_TIME_AFTER`, `AGREEMENT_END_DATE_TIME_BEFORE`.
  final pulumi.Input<String> key;
  /// Match options for the dimension filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  final pulumi.Input<List<String>?>? matchOptions;
  /// List of values to match against the dimension. At least one value is required.
  final pulumi.Input<List<String>> values;

  /// Creates a new [BudgetFilterExpressionNotNotDimensions].
  /// [key] Dimension to filter on. Valid values include `AZ`, `INSTANCE_TYPE`, `LINKED_ACCOUNT`, `OPERATION`, `PURCHASE_TYPE`, `REGION`, `SERVICE`, `USAGE_TYPE`, `USAGE_TYPE_GROUP`, `RECORD_TYPE`, `OPERATING_SYSTEM`, `TENANCY`, `SCOPE`, `PLATFORM`, `SUBSCRIPTION_ID`, `LEGAL_ENTITY_NAME`, `DEPLOYMENT_OPTION`, `DATABASE_ENGINE`, `CACHE_ENGINE`, `INSTANCE_TYPE_FAMILY`, `BILLING_ENTITY`, `RESERVATION_ID`, `RESOURCE_ID`, `RIGHTSIZING_TYPE`, `SAVINGS_PLANS_TYPE`, `SAVINGS_PLAN_ARN`, `PAYMENT_OPTION`, and `AGREEMENT_END_DATE_TIME_AFTER`, `AGREEMENT_END_DATE_TIME_BEFORE`.
  /// [matchOptions] Match options for the dimension filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  /// [values] List of values to match against the dimension. At least one value is required.
  const BudgetFilterExpressionNotNotDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'matchOptions': ?matchOptions,
      'values': values,
    };
  }

  factory BudgetFilterExpressionNotNotDimensions.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNotNotDimensions(
      key: pulumi.Input.fromValue(map['key'] as String),
      matchOptions: (() { final guardedValue = map['matchOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
