// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_education_get_lab_args_doc}
/// Arguments for getLab.
/// {@endtemplate}
/// {@macro pulumi_education_get_lab_args_doc}
class GetLabArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileName;
  /// May be used to include budget information.
  final pulumi.Input<bool>? includeBudget;
  /// The ID that uniquely identifies an invoice section.
  final pulumi.Input<String> invoiceSectionName;

  /// Creates a new [GetLabArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  /// [includeBudget] May be used to include budget information.
  /// [invoiceSectionName] The ID that uniquely identifies an invoice section.
  GetLabArgs({
    required pulumi.Output<String> billingAccountName,
    required pulumi.Output<String> billingProfileName,
    pulumi.Output<bool>? includeBudget,
    required pulumi.Output<String> invoiceSectionName,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingProfileName = pulumi.Input.asInput<String>(billingProfileName),
      includeBudget = pulumi.Input.asOptionalInput<bool>(includeBudget),
      invoiceSectionName = pulumi.Input.asInput<String>(invoiceSectionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'includeBudget': ?includeBudget,
      'invoiceSectionName': invoiceSectionName,
    };
  }

  factory GetLabArgs.fromMap(Map<String, dynamic> map) {
    return GetLabArgs(
      billingAccountName: pulumi.Output.create<String>(map['billingAccountName'] as String),
      billingProfileName: pulumi.Output.create<String>(map['billingProfileName'] as String),
      includeBudget: map['includeBudget'] == null ? null : pulumi.Output.create<bool>(map['includeBudget'] as bool),
      invoiceSectionName: pulumi.Output.create<String>(map['invoiceSectionName'] as String),
    );
  }
}

