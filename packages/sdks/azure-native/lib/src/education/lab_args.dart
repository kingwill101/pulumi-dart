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
    required this.billingAccountName,
    required this.billingProfileName,
    required this.budgetPerStudent,
    this.currency,
    required this.description,
    required this.displayName,
    required this.expirationDate,
    required this.invoiceSectionName,
    this.value,
  });

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
      billingAccountName: (map['billingAccountName'] as String).input(),
      billingProfileName: (map['billingProfileName'] as String).input(),
      budgetPerStudent: (Amount.fromMap((map['budgetPerStudent'] as Map).cast<String, dynamic>())).input(),
      currency: map['currency'] == null ? null : (map['currency'] as String).input(),
      description: (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      expirationDate: (map['expirationDate'] as String).input(),
      invoiceSectionName: (map['invoiceSectionName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as double).input(),
    );
  }
}

