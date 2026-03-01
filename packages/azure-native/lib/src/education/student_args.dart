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
    required String billingAccountName,
    required String billingProfileName,
    required Amount budget,
    required String email,
    required String expirationDate,
    required String firstName,
    required String invoiceSectionName,
    required String lastName,
    required String role,
    String? studentAlias,
    String? subscriptionAlias,
    String? subscriptionInviteLastSentDate,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingProfileName = pulumi.Input.asInput<String>(billingProfileName),
      budget = pulumi.Input.asInput<Amount>(budget),
      email = pulumi.Input.asInput<String>(email),
      expirationDate = pulumi.Input.asInput<String>(expirationDate),
      firstName = pulumi.Input.asInput<String>(firstName),
      invoiceSectionName = pulumi.Input.asInput<String>(invoiceSectionName),
      lastName = pulumi.Input.asInput<String>(lastName),
      role = pulumi.Input.asInput<String>(role),
      studentAlias = pulumi.Input.asOptionalInput<String>(studentAlias),
      subscriptionAlias = pulumi.Input.asOptionalInput<String>(subscriptionAlias),
      subscriptionInviteLastSentDate = pulumi.Input.asOptionalInput<String>(subscriptionInviteLastSentDate);

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
      billingAccountName: map['billingAccountName'] as String,
      billingProfileName: map['billingProfileName'] as String,
      budget: Amount.fromMap((map['budget'] as Map).cast<String, dynamic>()),
      email: map['email'] as String,
      expirationDate: map['expirationDate'] as String,
      firstName: map['firstName'] as String,
      invoiceSectionName: map['invoiceSectionName'] as String,
      lastName: map['lastName'] as String,
      role: map['role'] as String,
      studentAlias: map['studentAlias'] == null ? null : map['studentAlias'] as String,
      subscriptionAlias: map['subscriptionAlias'] == null ? null : map['subscriptionAlias'] as String,
      subscriptionInviteLastSentDate: map['subscriptionInviteLastSentDate'] == null ? null : map['subscriptionInviteLastSentDate'] as String,
    );
  }
}

