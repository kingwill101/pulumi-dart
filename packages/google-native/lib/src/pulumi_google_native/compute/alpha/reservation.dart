// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation.dart';
import 'allocation_specific_skureservation.dart';
import 'duration.dart';
import 'share_settings.dart';

/// Represents a reservation resource. A reservation ensures that capacity is held in a specific zone even if the reserved VMs are not running. For more information, read Reserving zonal resources.
class Reservation {
  /// Reservation for aggregated resources, providing shape flexibility.
  final AllocationAggregateReservation? aggregateReservation;

  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  final Duration? deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  final String? deleteAtTime;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;

  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final Map<String, String>? resourcePolicies;

  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final ShareSettings? shareSettings;

  /// Reservation for instances with specific machine shapes.
  final AllocationSpecificSKUReservation? specificReservation;

  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final bool? specificReservationRequired;

  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final String? zone;

  Reservation({
    this.aggregateReservation,
    this.deleteAfterDuration,
    this.deleteAtTime,
    this.description,
    this.name,
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
      map['aggregateReservation'] = aggregateReservationValue.toMap();
    }
    final deleteAfterDurationValue = deleteAfterDuration;
    if (deleteAfterDurationValue != null) {
      map['deleteAfterDuration'] = deleteAfterDurationValue.toMap();
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
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] = shareSettingsValue.toMap();
    }
    final specificReservationValue = specificReservation;
    if (specificReservationValue != null) {
      map['specificReservation'] = specificReservationValue.toMap();
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

  factory Reservation.fromMap(Map<String, dynamic> map) {
    return Reservation(
      aggregateReservation: map['aggregateReservation'] == null
          ? null
          : AllocationAggregateReservation.fromMap(
              (map['aggregateReservation'] as Map).cast<String, dynamic>()),
      deleteAfterDuration: map['deleteAfterDuration'] == null
          ? null
          : Duration.fromMap(
              (map['deleteAfterDuration'] as Map).cast<String, dynamic>()),
      deleteAtTime:
          map['deleteAtTime'] == null ? null : map['deleteAtTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : (map['resourcePolicies'] as Map).cast<String, String>(),
      shareSettings: map['shareSettings'] == null
          ? null
          : ShareSettings.fromMap(
              (map['shareSettings'] as Map).cast<String, dynamic>()),
      specificReservation: map['specificReservation'] == null
          ? null
          : AllocationSpecificSKUReservation.fromMap(
              (map['specificReservation'] as Map).cast<String, dynamic>()),
      specificReservationRequired: map['specificReservationRequired'] == null
          ? null
          : map['specificReservationRequired'] as bool,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
