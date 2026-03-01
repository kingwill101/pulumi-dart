// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amount.dart';

/// {@template pulumi_education_lab_args_doc}
/// The set of arguments for Lab.
/// {@endtemplate}
/// {@macro pulumi_education_lab_args_doc}
class LabArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileName;
  /// Default monetary cap for each student in this lab
  final pulumi.Input<Amount> budgetPerStudent;
  /// The type of currency being used for the value.
  final pulumi.Input<String>? currency;
  /// Detail description of this lab
  final pulumi.Input<String> description;
  /// Lab Display Name
  final pulumi.Input<String> displayName;
  /// Default expiration date for each student in this lab
  final pulumi.Input<String> expirationDate;
  /// The ID that uniquely identifies an invoice section.
  final pulumi.Input<String> invoiceSectionName;
  /// Amount value.
  final pulumi.Input<double>? value;

  /// Creates a new [LabArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  /// [budgetPerStudent] Default monetary cap for each student in this lab
  /// [currency] The type of currency being used for the value.
  /// [description] Detail description of this lab
  /// [displayName] Lab Display Name
  /// [expirationDate] Default expiration date for each student in this lab
  /// [invoiceSectionName] The ID that uniquely identifies an invoice section.
  /// [value] Amount value.
  LabArgs({
    required String billingAccountName,
    required String billingProfileName,
    required Amount budgetPerStudent,
    String? currency,
    required String description,
    required String displayName,
    required String expirationDate,
    required String invoiceSectionName,
    double? value,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingProfileName = pulumi.Input.asInput<String>(billingProfileName),
      budgetPerStudent = pulumi.Input.asInput<Amount>(budgetPerStudent),
      currency = pulumi.Input.asOptionalInput<String>(currency),
      description = pulumi.Input.asInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      expirationDate = pulumi.Input.asInput<String>(expirationDate),
      invoiceSectionName = pulumi.Input.asInput<String>(invoiceSectionName),
      value = pulumi.Input.asOptionalInput<double>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'budgetPerStudent': pulumi.Input.mapInputValue<Amount, Map<String, dynamic>>(budgetPerStudent, (value) => value.toMap()),
      'currency': ?currency,
      'description': description,
      'displayName': displayName,
      'expirationDate': expirationDate,
      'invoiceSectionName': invoiceSectionName,
      'value': ?value,
    };
  }

  factory LabArgs.fromMap(Map<String, dynamic> map) {
    return LabArgs(
      billingAccountName: map['billingAccountName'] as String,
      billingProfileName: map['billingProfileName'] as String,
      budgetPerStudent: Amount.fromMap((map['budgetPerStudent'] as Map).cast<String, dynamic>()),
      currency: map['currency'] == null ? null : map['currency'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      expirationDate: map['expirationDate'] as String,
      invoiceSectionName: map['invoiceSectionName'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}

