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
    required this.billingAccountId,
    required this.billingProfileId,
    required this.customerDetails,
    this.description,
    this.eTag,
    this.endDate,
    this.name,
    required this.percentage,
    required this.startDate,
  });

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
      billingAccountId: (map['billingAccountId'] as String).input(),
      billingProfileId: (map['billingProfileId'] as String).input(),
      customerDetails: (CustomerMetadata.fromMap((map['customerDetails'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      endDate: map['endDate'] == null ? null : (map['endDate']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      percentage: (map['percentage'] as double).input(),
      startDate: (map['startDate'] as String).input(),
    );
  }
}

