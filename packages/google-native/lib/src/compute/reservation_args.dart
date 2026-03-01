// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation.dart';
import 'allocation_specific_skureservation.dart';
import 'duration.dart';
import 'share_settings.dart';

/// {@template pulumi_compute_alpha_reservation_args_doc}
/// The set of arguments for Reservation.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_reservation_args_doc}
class ReservationArgs {
  /// Reservation for aggregated resources, providing shape flexibility.
  final pulumi.Input<AllocationAggregateReservation>? aggregateReservation;

  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  final pulumi.Input<Duration>? deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  final pulumi.Input<String>? deleteAtTime;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final pulumi.Input<Map<String, String>>? resourcePolicies;

  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final pulumi.Input<ShareSettings>? shareSettings;

  /// Reservation for instances with specific machine shapes.
  final pulumi.Input<AllocationSpecificSKUReservation>? specificReservation;

  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final pulumi.Input<bool>? specificReservationRequired;

  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final pulumi.Input<String>? zone;

  /// Creates a new [ReservationArgs].
  /// [aggregateReservation] Reservation for aggregated resources, providing shape flexibility.
  /// [deleteAfterDuration] Duration time relative to reservation creation when GCE will automatically delete this resource.
  /// [deleteAtTime] Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [resourcePolicies] Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  /// [shareSettings] Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  /// [zone] Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  ReservationArgs({
    AllocationAggregateReservation? aggregateReservation,
    Duration? deleteAfterDuration,
    String? deleteAtTime,
    String? description,
    String? name,
    String? project,
    String? requestId,
    Map<String, String>? resourcePolicies,
    ShareSettings? shareSettings,
    AllocationSpecificSKUReservation? specificReservation,
    bool? specificReservationRequired,
    String? zone,
  }) : aggregateReservation =
           pulumi.Input.asOptionalInput<AllocationAggregateReservation>(
             aggregateReservation,
           ),
       deleteAfterDuration = pulumi.Input.asOptionalInput<Duration>(
         deleteAfterDuration,
       ),
       deleteAtTime = pulumi.Input.asOptionalInput<String>(deleteAtTime),
       description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       resourcePolicies = pulumi.Input.asOptionalInput<Map<String, String>>(
         resourcePolicies,
       ),
       shareSettings = pulumi.Input.asOptionalInput<ShareSettings>(
         shareSettings,
       ),
       specificReservation =
           pulumi.Input.asOptionalInput<AllocationSpecificSKUReservation>(
             specificReservation,
           ),
       specificReservationRequired = pulumi.Input.asOptionalInput<bool>(
         specificReservationRequired,
       ),
       zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateReservation':
          ?pulumi.Input.mapOptionalInputValue<
            AllocationAggregateReservation,
            Map<String, dynamic>
          >(aggregateReservation, (value) => value.toMap()),
      'deleteAfterDuration':
          ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(
            deleteAfterDuration,
            (value) => value.toMap(),
          ),
      'deleteAtTime': ?deleteAtTime,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'resourcePolicies': ?resourcePolicies,
      'shareSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ShareSettings,
            Map<String, dynamic>
          >(shareSettings, (value) => value.toMap()),
      'specificReservation':
          ?pulumi.Input.mapOptionalInputValue<
            AllocationSpecificSKUReservation,
            Map<String, dynamic>
          >(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'zone': ?zone,
    };
  }

  factory ReservationArgs.fromMap(Map<String, dynamic> map) {
    return ReservationArgs(
      aggregateReservation: map['aggregateReservation'] == null
          ? null
          : AllocationAggregateReservation.fromMap(
              (map['aggregateReservation'] as Map).cast<String, dynamic>(),
            ),
      deleteAfterDuration: map['deleteAfterDuration'] == null
          ? null
          : Duration.fromMap(
              (map['deleteAfterDuration'] as Map).cast<String, dynamic>(),
            ),
      deleteAtTime: map['deleteAtTime'] == null
          ? null
          : map['deleteAtTime'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : (map['resourcePolicies'] as Map).cast<String, String>(),
      shareSettings: map['shareSettings'] == null
          ? null
          : ShareSettings.fromMap(
              (map['shareSettings'] as Map).cast<String, dynamic>(),
            ),
      specificReservation: map['specificReservation'] == null
          ? null
          : AllocationSpecificSKUReservation.fromMap(
              (map['specificReservation'] as Map).cast<String, dynamic>(),
            ),
      specificReservationRequired: map['specificReservationRequired'] == null
          ? null
          : map['specificReservationRequired'] as bool,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
