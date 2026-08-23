// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_education_get_student_args_doc}
/// Arguments for getStudent.
/// {@endtemplate}
/// {@macro pulumi_education_get_student_args_doc}
class GetStudentArgs {
  /// The name of the billing account.
  final pulumi.Input<String> billingAccountName;
  /// The name of the billing profile.
  final pulumi.Input<String> billingProfileName;
  /// The name of the invoice section.
  final pulumi.Input<String> invoiceSectionName;
  /// The student alias.
  final pulumi.Input<String> studentAlias;

  /// Creates a new [GetStudentArgs].
  /// [billingAccountName] The name of the billing account.
  /// [billingProfileName] The name of the billing profile.
  /// [invoiceSectionName] The name of the invoice section.
  /// [studentAlias] The student alias.
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
