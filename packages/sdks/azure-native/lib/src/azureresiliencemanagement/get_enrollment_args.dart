// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureresiliencemanagement_get_enrollment_args_doc}
/// Arguments for getEnrollment.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_get_enrollment_args_doc}
class GetEnrollmentArgs {
  /// The name of the enrollment.
  final pulumi.Input<String> enrollmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the usage plan.
  final pulumi.Input<String> usagePlanName;

  /// Creates a new [GetEnrollmentArgs].
  /// [enrollmentName] The name of the enrollment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [usagePlanName] The name of the usage plan.
  const GetEnrollmentArgs({
    required this.enrollmentName,
    required this.resourceGroupName,
    required this.usagePlanName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enrollmentName': enrollmentName,
      'resourceGroupName': resourceGroupName,
      'usagePlanName': usagePlanName,
    };
  }

  factory GetEnrollmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnrollmentArgs(
      enrollmentName: pulumi.Input.fromValue(map['enrollmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      usagePlanName: pulumi.Input.fromValue(map['usagePlanName'] as String),
    );
  }
}
