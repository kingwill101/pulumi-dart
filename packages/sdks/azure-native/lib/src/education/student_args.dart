// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amount.dart';

/// {@template pulumi_education_student_args_doc}
/// The set of arguments for Student.
/// {@endtemplate}
/// {@macro pulumi_education_student_args_doc}
class StudentArgs {
  /// The name of the billing account.
  final pulumi.Input<String> billingAccountName;
  /// The name of the billing profile.
  final pulumi.Input<String> billingProfileName;
  /// Student Budget
  final pulumi.Input<Amount> budget;
  /// Student Email
  final pulumi.Input<String> email;
  /// Date this student is set to expire from the lab.
  final pulumi.Input<String> expirationDate;
  /// First Name
  final pulumi.Input<String> firstName;
  /// The name of the invoice section.
  final pulumi.Input<String> invoiceSectionName;
  /// Last Name
  final pulumi.Input<String> lastName;
  /// Student Role
  final pulumi.Input<String> role;
  /// The student alias.
  final pulumi.Input<String>? studentAlias;
  /// Subscription alias
  final pulumi.Input<String>? subscriptionAlias;
  /// subscription invite last sent date
  final pulumi.Input<String>? subscriptionInviteLastSentDate;

  /// Creates a new [StudentArgs].
  /// [billingAccountName] The name of the billing account.
  /// [billingProfileName] The name of the billing profile.
  /// [budget] Student Budget
  /// [email] Student Email
  /// [expirationDate] Date this student is set to expire from the lab.
  /// [firstName] First Name
  /// [invoiceSectionName] The name of the invoice section.
  /// [lastName] Last Name
  /// [role] Student Role
  /// [studentAlias] The student alias.
  /// [subscriptionAlias] Subscription alias
  /// [subscriptionInviteLastSentDate] subscription invite last sent date
  const StudentArgs({
    required this.billingAccountName,
    required this.billingProfileName,
    required this.budget,
    required this.email,
    required this.expirationDate,
    required this.firstName,
    required this.invoiceSectionName,
    required this.lastName,
    required this.role,
    this.studentAlias,
    this.subscriptionAlias,
    this.subscriptionInviteLastSentDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'budget': pulumi.Input.mapInputValue<Amount, Map<String, dynamic>>(budget, (value) => value.toMap()),
      'email': email,
      'expirationDate': expirationDate,
      'firstName': firstName,
      'invoiceSectionName': invoiceSectionName,
      'lastName': lastName,
      'role': role,
      'studentAlias': ?studentAlias,
      'subscriptionAlias': ?subscriptionAlias,
      'subscriptionInviteLastSentDate': ?subscriptionInviteLastSentDate,
    };
  }

  factory StudentArgs.fromMap(Map<String, dynamic> map) {
    return StudentArgs(
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      billingProfileName: pulumi.Input.fromValue(map['billingProfileName'] as String),
      budget: pulumi.Input.fromValue(Amount.fromMap((map['budget']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(map['email'] as String),
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      invoiceSectionName: pulumi.Input.fromValue(map['invoiceSectionName'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      studentAlias: (() { final guardedValue = map['studentAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionAlias: (() { final guardedValue = map['subscriptionAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionInviteLastSentDate: (() { final guardedValue = map['subscriptionInviteLastSentDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
