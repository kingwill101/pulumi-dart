// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of enrollment properties.
class EnrollmentProperties {
  /// ARM resource identifier of the service group associated with this usage plan.
  final pulumi.Input<String> serviceGroupId;

  /// Creates a new [EnrollmentProperties].
  /// [serviceGroupId] ARM resource identifier of the service group associated with this usage plan.
  const EnrollmentProperties({
    required this.serviceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceGroupId': serviceGroupId,
    };
  }

  factory EnrollmentProperties.fromMap(Map<String, dynamic> map) {
    return EnrollmentProperties(
      serviceGroupId: pulumi.Input.fromValue(map['serviceGroupId'] as String),
    );
  }
}
