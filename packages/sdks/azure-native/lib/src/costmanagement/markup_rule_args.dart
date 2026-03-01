// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_metadata.dart';

/// {@template pulumi_costmanagement_markup_rule_args_doc}
/// The set of arguments for MarkupRule.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_markup_rule_args_doc}
class MarkupRuleArgs {
  /// BillingAccount ID
  final pulumi.Input<String> billingAccountId;
  /// BillingProfile ID
  final pulumi.Input<String> billingProfileId;
  /// Customer information for the markup rule.
  final pulumi.Input<CustomerMetadata> customerDetails;
  /// The description of the markup rule.
  final pulumi.Input<String>? description;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final pulumi.Input<String>? eTag;
  /// Ending date of the markup rule.
  final pulumi.Input<String>? endDate;
  /// Markup rule name.
  final pulumi.Input<String>? name;
  /// The markup percentage of the rule.
  final pulumi.Input<double> percentage;
  /// Starting date of the markup rule.
  final pulumi.Input<String> startDate;

  /// Creates a new [MarkupRuleArgs].
  /// [billingAccountId] BillingAccount ID
  /// [billingProfileId] BillingProfile ID
  /// [customerDetails] Customer information for the markup rule.
  /// [description] The description of the markup rule.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [endDate] Ending date of the markup rule.
  /// [name] Markup rule name.
  /// [percentage] The markup percentage of the rule.
  /// [startDate] Starting date of the markup rule.
  MarkupRuleArgs({
    required pulumi.Output<String> billingAccountId,
    required pulumi.Output<String> billingProfileId,
    required pulumi.Output<CustomerMetadata> customerDetails,
    pulumi.Output<String>? description,
    pulumi.Output<String>? eTag,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? name,
    required pulumi.Output<double> percentage,
    required pulumi.Output<String> startDate,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      billingProfileId = pulumi.Input.asInput<String>(billingProfileId),
      customerDetails = pulumi.Input.asInput<CustomerMetadata>(customerDetails),
      description = pulumi.Input.asOptionalInput<String>(description),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      name = pulumi.Input.asOptionalInput<String>(name),
      percentage = pulumi.Input.asInput<double>(percentage),
      startDate = pulumi.Input.asInput<String>(startDate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'billingProfileId': billingProfileId,
      'customerDetails': pulumi.Input.mapInputValue<CustomerMetadata, Map<String, dynamic>>(customerDetails, (value) => value.toMap()),
      'description': ?description,
      'eTag': ?eTag,
      'endDate': ?endDate,
      'name': ?name,
      'percentage': percentage,
      'startDate': startDate,
    };
  }

  factory MarkupRuleArgs.fromMap(Map<String, dynamic> map) {
    return MarkupRuleArgs(
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      billingProfileId: pulumi.Output.create<String>(map['billingProfileId'] as String),
      customerDetails: pulumi.Output.create<CustomerMetadata>(CustomerMetadata.fromMap((map['customerDetails'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      percentage: pulumi.Output.create<double>(map['percentage'] as double),
      startDate: pulumi.Output.create<String>(map['startDate'] as String),
    );
  }
}

