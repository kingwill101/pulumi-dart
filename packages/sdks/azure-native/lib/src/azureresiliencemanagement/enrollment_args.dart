// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_properties.dart';

/// {@template pulumi_azureresiliencemanagement_enrollment_args_doc}
/// The set of arguments for Enrollment.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_enrollment_args_doc}
class EnrollmentArgs {
  /// The name of the enrollment.
  final pulumi.Input<String>? enrollmentName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EnrollmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the usage plan.
  final pulumi.Input<String> usagePlanName;

  /// Creates a new [EnrollmentArgs].
  /// [enrollmentName] The name of the enrollment.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [usagePlanName] The name of the usage plan.
  const EnrollmentArgs({
    this.enrollmentName,
    this.properties,
    required this.resourceGroupName,
    required this.usagePlanName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enrollmentName': ?enrollmentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<EnrollmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'usagePlanName': usagePlanName,
    };
  }

  factory EnrollmentArgs.fromMap(Map<String, dynamic> map) {
    return EnrollmentArgs(
      enrollmentName: (() { final guardedValue = map['enrollmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnrollmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      usagePlanName: pulumi.Input.fromValue(map['usagePlanName'] as String),
    );
  }
}
