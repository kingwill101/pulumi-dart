// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amount.dart';

/// {@template pulumi_education_student_args_doc}
/// The set of arguments for Student.
/// {@endtemplate}
/// {@macro pulumi_education_student_args_doc}
class StudentArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileName;
  /// Student Budget
  final pulumi.Input<Amount> budget;
  /// Student Email
  final pulumi.Input<String> email;
  /// Date this student is set to expire from the lab.
  final pulumi.Input<String> expirationDate;
  /// First Name
  final pulumi.Input<String> firstName;
  /// The ID that uniquely identifies an invoice section.
  final pulumi.Input<String> invoiceSectionName;
  /// Last Name
  final pulumi.Input<String> lastName;
  /// Student Role
  final pulumi.Input<String> role;
  /// Student alias.
  final pulumi.Input<String>? studentAlias;
  /// Subscription alias
  final pulumi.Input<String>? subscriptionAlias;
  /// subscription invite last sent date
  final pulumi.Input<String>? subscriptionInviteLastSentDate;

  /// Creates a new [StudentArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  /// [budget] Student Budget
  /// [email] Student Email
  /// [expirationDate] Date this student is set to expire from the lab.
  /// [firstName] First Name
  /// [invoiceSectionName] The ID that uniquely identifies an invoice section.
  /// [lastName] Last Name
  /// [role] Student Role
  /// [studentAlias] Student alias.
  /// [subscriptionAlias] Subscription alias
  /// [subscriptionInviteLastSentDate] subscription invite last sent date
  StudentArgs({
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
      billingAccountName: (map['billingAccountName'] as String).input(),
      billingProfileName: (map['billingProfileName'] as String).input(),
      budget: (Amount.fromMap((map['budget'] as Map).cast<String, dynamic>())).input(),
      email: (map['email'] as String).input(),
      expirationDate: (map['expirationDate'] as String).input(),
      firstName: (map['firstName'] as String).input(),
      invoiceSectionName: (map['invoiceSectionName'] as String).input(),
      lastName: (map['lastName'] as String).input(),
      role: (map['role'] as String).input(),
      studentAlias: map['studentAlias'] == null ? null : (map['studentAlias']! as String).input(),
      subscriptionAlias: map['subscriptionAlias'] == null ? null : (map['subscriptionAlias']! as String).input(),
      subscriptionInviteLastSentDate: map['subscriptionInviteLastSentDate'] == null ? null : (map['subscriptionInviteLastSentDate']! as String).input(),
    );
  }
}

