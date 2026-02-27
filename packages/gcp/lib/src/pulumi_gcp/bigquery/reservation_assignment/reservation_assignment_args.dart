// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ReservationAssignment.
class ReservationAssignmentArgs {
  /// The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  final pulumi.Input<String> assignee;

  /// Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  final pulumi.Input<String> jobType;

  /// The location for the resource
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The reservation for the resource
  final pulumi.Input<String> reservation;

  ReservationAssignmentArgs({
    required this.assignee,
    required this.jobType,
    this.location,
    this.project,
    required this.reservation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assignee'] = assignee;
    map['jobType'] = jobType;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reservation'] = reservation;
    return map;
  }

  factory ReservationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ReservationAssignmentArgs(
      assignee: pulumi.Input.asInput<String>(map['assignee']),
      jobType: pulumi.Input.asInput<String>(map['jobType']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservation: pulumi.Input.asInput<String>(map['reservation']),
    );
  }
}
