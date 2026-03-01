// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_education_get_student_args_doc}
/// Arguments for getStudent.
/// {@endtemplate}
/// {@macro pulumi_education_get_student_args_doc}
class GetStudentArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileName;
  /// The ID that uniquely identifies an invoice section.
  final pulumi.Input<String> invoiceSectionName;
  /// Student alias.
  final pulumi.Input<String> studentAlias;

  /// Creates a new [GetStudentArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  /// [invoiceSectionName] The ID that uniquely identifies an invoice section.
  /// [studentAlias] Student alias.
  GetStudentArgs({
    required String billingAccountName,
    required String billingProfileName,
    required String invoiceSectionName,
    required String studentAlias,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingProfileName = pulumi.Input.asInput<String>(billingProfileName),
      invoiceSectionName = pulumi.Input.asInput<String>(invoiceSectionName),
      studentAlias = pulumi.Input.asInput<String>(studentAlias);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'invoiceSectionName': invoiceSectionName,
      'studentAlias': studentAlias,
    };
  }

  factory GetStudentArgs.fromMap(Map<String, dynamic> map) {
    return GetStudentArgs(
      billingAccountName: map['billingAccountName'] as String,
      billingProfileName: map['billingProfileName'] as String,
      invoiceSectionName: map['invoiceSectionName'] as String,
      studentAlias: map['studentAlias'] as String,
    );
  }
}

