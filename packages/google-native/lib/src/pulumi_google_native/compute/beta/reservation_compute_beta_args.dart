// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_compute_beta.dart';
import 'allocation_specific_skureservation_compute_beta.dart';
import 'duration_compute_beta.dart';
import 'share_settings_compute_beta.dart';

/// The set of arguments for Reservation.
class ReservationComputeBetaArgs {
  /// Reservation for aggregated resources, providing shape flexibility.
  final pulumi.Input<AllocationAggregateReservationComputeBeta>?
      aggregateReservation;

  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  final pulumi.Input<DurationComputeBeta>? deleteAfterDuration;

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
  final pulumi.Input<ShareSettingsComputeBeta>? shareSettings;

  /// Reservation for instances with specific machine shapes.
  final pulumi.Input<AllocationSpecificSKUReservationComputeBeta>?
      specificReservation;

  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final pulumi.Input<bool>? specificReservationRequired;

  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final pulumi.Input<String>? zone;

  ReservationComputeBetaArgs({
    this.aggregateReservation,
    this.deleteAfterDuration,
    this.deleteAtTime,
    this.description,
    this.name,
    this.project,
    this.requestId,
    this.resourcePolicies,
    this.shareSettings,
    this.specificReservation,
    this.specificReservationRequired,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregateReservationValue = aggregateReservation;
    if (aggregateReservationValue != null) {
      map['aggregateReservation'] = pulumi.Input.mapOptionalInputValue<
              AllocationAggregateReservationComputeBeta, Map<String, dynamic>>(
          aggregateReservationValue, (value) => value.toMap());
    }
    final deleteAfterDurationValue = deleteAfterDuration;
    if (deleteAfterDurationValue != null) {
      map['deleteAfterDuration'] = pulumi.Input.mapOptionalInputValue<
              DurationComputeBeta, Map<String, dynamic>>(
          deleteAfterDurationValue, (value) => value.toMap());
    }
    final deleteAtTimeValue = deleteAtTime;
    if (deleteAtTimeValue != null) {
      map['deleteAtTime'] = deleteAtTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] = pulumi.Input.mapOptionalInputValue<
          ShareSettingsComputeBeta,
          Map<String, dynamic>>(shareSettingsValue, (value) => value.toMap());
    }
    final specificReservationValue = specificReservation;
    if (specificReservationValue != null) {
      map['specificReservation'] = pulumi.Input.mapOptionalInputValue<
              AllocationSpecificSKUReservationComputeBeta,
              Map<String, dynamic>>(
          specificReservationValue, (value) => value.toMap());
    }
    final specificReservationRequiredValue = specificReservationRequired;
    if (specificReservationRequiredValue != null) {
      map['specificReservationRequired'] = specificReservationRequiredValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ReservationComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return ReservationComputeBetaArgs(
      aggregateReservation: pulumi.Input.asOptionalInput<
              AllocationAggregateReservationComputeBeta>(
          map['aggregateReservation']),
      deleteAfterDuration: pulumi.Input.asOptionalInput<DurationComputeBeta>(
          map['deleteAfterDuration']),
      deleteAtTime: pulumi.Input.asOptionalInput<String>(map['deleteAtTime']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      resourcePolicies: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['resourcePolicies']),
      shareSettings: pulumi.Input.asOptionalInput<ShareSettingsComputeBeta>(
          map['shareSettings']),
      specificReservation: pulumi.Input.asOptionalInput<
              AllocationSpecificSKUReservationComputeBeta>(
          map['specificReservation']),
      specificReservationRequired: pulumi.Input.asOptionalInput<bool>(
          map['specificReservationRequired']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
