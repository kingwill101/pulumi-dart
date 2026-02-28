// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_reservation_assignment_reservation_assignment_args_doc}
/// The set of arguments for ReservationAssignment.
/// {@endtemplate}
/// {@macro pulumi_bigquery_reservation_assignment_reservation_assignment_args_doc}
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

  /// Creates a new [ReservationAssignmentArgs].
  /// [assignee] The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  /// [jobType] Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  /// [location] The location for the resource
  /// [project] The ID of the project in which the resource belongs.
  /// [reservation] The reservation for the resource
  ReservationAssignmentArgs({
    required String assignee,
    required String jobType,
    String? location,
    String? project,
    required String reservation,
  })  : assignee = pulumi.Input.asInput<String>(assignee),
        jobType = pulumi.Input.asInput<String>(jobType),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservation = pulumi.Input.asInput<String>(reservation);

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
      assignee: map['assignee'] as String,
      jobType: map['jobType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reservation: map['reservation'] as String,
    );
  }
}
