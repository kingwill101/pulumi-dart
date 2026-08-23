// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amount.dart';

/// {@template pulumi_education_lab_args_doc}
/// The set of arguments for Lab.
/// {@endtemplate}
/// {@macro pulumi_education_lab_args_doc}
class LabArgs {
  /// The name of the billing account.
  final pulumi.Input<String> billingAccountName;
  /// The name of the billing profile.
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
  /// The name of the invoice section.
  final pulumi.Input<String> invoiceSectionName;
  /// Amount value.
  final pulumi.Input<double>? value;

  /// Creates a new [LabArgs].
  /// [billingAccountName] The name of the billing account.
  /// [billingProfileName] The name of the billing profile.
  /// [budgetPerStudent] Default monetary cap for each student in this lab
  /// [currency] The type of currency being used for the value.
  /// [description] Detail description of this lab
  /// [displayName] Lab Display Name
  /// [expirationDate] Default expiration date for each student in this lab
  /// [invoiceSectionName] The name of the invoice section.
  /// [value] Amount value.
  const LabArgs({
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
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      billingProfileName: pulumi.Input.fromValue(map['billingProfileName'] as String),
      budgetPerStudent: pulumi.Input.fromValue(Amount.fromMap((map['budgetPerStudent']! as Map).cast<String, dynamic>())),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      invoiceSectionName: pulumi.Input.fromValue(map['invoiceSectionName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
