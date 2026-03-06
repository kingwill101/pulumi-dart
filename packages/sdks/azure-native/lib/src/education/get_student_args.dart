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
  const GetStudentArgs({
    required this.billingAccountName,
    required this.billingProfileName,
    required this.invoiceSectionName,
    required this.studentAlias,
  });

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
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      billingProfileName: pulumi.Input.fromValue(map['billingProfileName'] as String),
      invoiceSectionName: pulumi.Input.fromValue(map['invoiceSectionName'] as String),
      studentAlias: pulumi.Input.fromValue(map['studentAlias'] as String),
    );
  }
}

