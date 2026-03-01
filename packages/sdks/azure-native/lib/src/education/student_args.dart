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
    required pulumi.Output<String> billingAccountName,
    required pulumi.Output<String> billingProfileName,
    required pulumi.Output<Amount> budget,
    required pulumi.Output<String> email,
    required pulumi.Output<String> expirationDate,
    required pulumi.Output<String> firstName,
    required pulumi.Output<String> invoiceSectionName,
    required pulumi.Output<String> lastName,
    required pulumi.Output<String> role,
    pulumi.Output<String>? studentAlias,
    pulumi.Output<String>? subscriptionAlias,
    pulumi.Output<String>? subscriptionInviteLastSentDate,
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
      billingAccountName: pulumi.Output.create<String>(map['billingAccountName'] as String),
      billingProfileName: pulumi.Output.create<String>(map['billingProfileName'] as String),
      budget: pulumi.Output.create<Amount>(Amount.fromMap((map['budget'] as Map).cast<String, dynamic>())),
      email: pulumi.Output.create<String>(map['email'] as String),
      expirationDate: pulumi.Output.create<String>(map['expirationDate'] as String),
      firstName: pulumi.Output.create<String>(map['firstName'] as String),
      invoiceSectionName: pulumi.Output.create<String>(map['invoiceSectionName'] as String),
      lastName: pulumi.Output.create<String>(map['lastName'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
      studentAlias: map['studentAlias'] == null ? null : pulumi.Output.create<String>(map['studentAlias'] as String),
      subscriptionAlias: map['subscriptionAlias'] == null ? null : pulumi.Output.create<String>(map['subscriptionAlias'] as String),
      subscriptionInviteLastSentDate: map['subscriptionInviteLastSentDate'] == null ? null : pulumi.Output.create<String>(map['subscriptionInviteLastSentDate'] as String),
    );
  }
}

